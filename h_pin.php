<?php
session_start();
define("GPANEL", "YES");
include "config.php";

if($_SESSION["id"] == "1"){
   echo "Ova akcija nije dozvoljena na demo klijentu.";
   die();
}

if(isset($_SESSION["id"])){
  $c_id = $_SESSION["id"];	 
  $pin = addslashes($_POST["pin"]);

  if(empty($pin)){
	  echo "Pogresan PIN!";
	  die();
  }
  
  $query = mysql_fetch_array(mysql_query("SELECT * FROM clients WHERE id='$c_id'"));
  
  if($query['id'] == ""){
	  echo "Pogresan PIN!";
	  die();
  }
  
  if($pin == $query['pin']){
	   setcookie('pin', true,  time()+86400); // 1 day
	   die("<script> alert('Uspesno , pritisnite OK!'); document.location.href='main.php?page=profile'; </script>");
  } else {
  echo "Pogresan PIN!";	 
  die();  
  }
	
} else {
  header("location:/main.php");
  die();
}
?>
