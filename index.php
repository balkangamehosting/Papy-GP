<?php
session_start();
if($_SESSION["remember"] && !$_SESSION["admin_id"]){
	if($_SESSION["id"]){
		header('location: main.php');	
	}
}elseif($_SESSION["admin_id"] && $_GET["support"]){
    unset ($_SESSION["id"]);
   $_SESSION["id"] = $_GET["support"];
   header('Location: main2.php');	
}


// put full path to Smarty.class.php
require('includes/libs/Smarty.class.php');
$smarty = new Smarty();
$smarty->setTemplateDir('template');
$smarty->setCompileDir('cache/template_c');
$smarty->setCacheDir('cache/other_c');
$smarty->setConfigDir('includes/configs');

define("GPANEL", "YES");
include 'config.php';

$smarty->assign('config', $configs);

if($_GET["email_pw"]){

	if($_GET["email_pw"]==$configs["demo"]){
		$smarty->assign('message', 'Not aviable on demo client !');			
	} else {
    $email_pw = stripslashes($_GET["email_pw"]);
    $email_pw = mysql_real_escape_string($email_pw);
    
    $pw = mysql_query('SELECT * FROM clients WHERE email="'.$email_pw.'"');
    $pw2 = mysql_num_rows($pw);
    if($pw2==1){
    
    function generatePassword($length=9, $strength=0) {
	$vowels = 'aeuy';
	$consonants = 'bdghjmnpqrstvz';
	if ($strength & 1) {
		$consonants .= 'BDGHJLMNPQRSTVWXZ';
	}
	if ($strength & 2) {
		$vowels .= "AEUY";
	}
	if ($strength & 4) {
		$consonants .= '23456789';
	}
	if ($strength & 8) {
		$consonants .= '@#$%';
	}
 
	$password = '';
	$alt = time() % 2;
	for ($i = 0; $i < $length; $i++) {
		if ($alt == 1) {
			$password .= $consonants[(rand() % strlen($consonants))];
			$alt = 0;
		} else {
			$password .= $vowels[(rand() % strlen($vowels))];
			$alt = 1;
		}
	}
	return $password;
}    


$new_pw = generatePassword();

$cl = mysql_fetch_array($pw);

$stavi_novi_pw = mysql_query('UPDATE clients SET password="'.md5($new_pw).'" WHERE id='.$cl["id"].'');

$to = $email_pw;	
$from = $configs["email"];
$subject = ''.$configs["host"].' - GPanel informations';
$header = "From: $from";
$message = 'Hello,

Your password has been succesfully reseted.

Login informations:
Email: '.$to.'
Password: '.$new_pw.'

Game Panel Link: '.$link.'

Good Bye!
'.$configs["host"].' Team
';

if(mail($to, $subject, $message, $header)){
$smarty->assign('message', 'Password was successfully reset.');	
} else {
$smarty->assign('message', 'An error occurred while sending e-mail');	
}
        
    } else {
    $smarty->assign('message', 'Email address does not exist in the database.');        
    }
}
    
}

$smarty->assign('name', 'Ned');
$smarty->display('head.tpl');
$smarty->display('index.tpl');
$smarty->display('footer.tpl');
?>