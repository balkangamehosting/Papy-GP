<?php
session_start();
define("GPANEL", "YES");
include "config.php";

if(isset($_SESSION["id"])){
if(intval($_POST['srv_id_p'])){
if($_POST['srv_map']){

				
				if($_POST["srv_map"]){
					
					$id = intval($_POST["srv_id_p"]);	
					$id = stripslashes($id);
					$id = mysql_real_escape_string($id);
					$srv_map = $_POST["srv_map"];	
					$srv_map = stripslashes($srv_map);
					$srv_map = mysql_real_escape_string($srv_map);
					
					$server = mysql_query('SELECT * FROM serveri, ip WHERE ip.id=serveri.ip_id AND serveri.id=\''.$id.'\' and serveri.user_id=\''.$_SESSION["id"].'\'');
					
					$provjera=mysql_num_rows($server);
					
					if($provjera=="1"){

						$server_info = mysql_fetch_array($server);

					    mysql_query("UPDATE serveri SET map='$srv_map' WHERE id='$id'");
						echo 'You have successfully changed server default map.';
						
					} else {
						
						echo 'You do not have access to this server.';
						
					}
					
					
				}
				
				} else {
				       echo 'Map name can not be empty.';
				}
				
				} else {
                      echo 'An error occurred.';	
                }
				
				} else {
				  header("location:/main.php");
				}

?>
