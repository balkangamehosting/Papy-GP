<?php
session_start();
define("GPANEL", "YES");
include "config.php";

$klijent = mysql_fetch_array(mysql_query('SELECT * FROM clients WHERE id='.$_SESSION["id"].''));
if($klijent["email"]==$configs["demo"]){
   echo "This action is not allowed on demo client.";
   die();
}

if(isset($_SESSION["id"])){
if(intval($_POST['srv_id_p'])){
if($_POST['srv_name']){

				
				if($_POST["srv_name"]){
					
					$id = intval($_POST["srv_id_p"]);	
					$id = stripslashes($id);
					$id = mysql_real_escape_string($id);
					$srv = $_POST["srv_name"];	
					$srv = stripslashes($srv);
					$srv = mysql_real_escape_string($srv);
					
					$server = mysql_query('SELECT * FROM serveri, ip WHERE ip.id=serveri.ip_id AND serveri.id=\''.$id.'\' and serveri.user_id=\''.$_SESSION["id"].'\'');
					
					$provjera=mysql_num_rows($server);
					
					if($provjera=="1"){

						$server_info = mysql_fetch_array($server);

					    mysql_query("UPDATE serveri SET name='$srv' WHERE id='$id'");
						echo 'You have successfully changed server name.';
						
					} else {
						
						echo 'You do not have access to this server.';
						
					}
					
					
				}
				
				} else {
				       echo 'Server name can not be empty.';
				}
				
				} else {
                      echo 'An error has occurred.';	
                }
				
				} else {
				  header("location:/main.php");
				}

?>