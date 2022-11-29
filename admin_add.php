<?php
session_start();
define("GPANEL", "YES");
include "config.php";
if(isset($_SESSION["id"])){
if(intval($_POST['srv_id_p'])){

	if($_POST["vrsta_admina"]){
	
		if($_POST["sifra"] || $_POST["vrsta_admina"]==2){
			
			if($_POST["privilegije"]){
			
				if($_POST["privilegije"]=="5"){
				
					$privilegije = $_POST["custom_flags"];
					
				} else {
					
					$privilegije = $_POST["privilegije"];
				}
				
				
				if($_POST["nick"]){
					
					$id = intval($_POST["srv_id_p"]);	
					$id = stripslashes($id);
					$id = mysql_real_escape_string($id);
					
					$server = mysql_query('SELECT * FROM serveri, ip WHERE ip.id=serveri.ip_id AND serveri.id=\''.$id.'\' and serveri.user_id=\''.$_SESSION["id"].'\'');
					
					$provjera=mysql_num_rows($server);

					if($provjera=="1"){

						$server_info = mysql_fetch_array($server);
	
						$server_mod = mysql_fetch_array(mysql_query('SELECT * FROM modovi WHERE id=\''.$server_info["mod"].'\''));

						$server_box = mysql_fetch_array(mysql_query('SELECT * FROM box WHERE id=\''.$server_info["box_id"].'\''));

						$ftp_server = "$server_info[ip]";
						$ftp_port = "$server_box[ftp_port]";
						
									
						$conn_id = ftp_connect($ftp_server, $ftp_port);	
						
						if(!$conn_id){
							echo 'Can not connect to FTP.';							
						} else {
						
						if (ftp_login($conn_id, $server_info["username"], $server_info["password"]))
						{
	
							ftp_chdir($conn_id, "/cstrike/addons/amxmodx/configs");
						
						
						$filename = "ftp://$server_info[username]:$server_info[password]@$ftp_server:$ftp_port/cstrike/addons/amxmodx/configs/users.ini";
						//$handle = fopen($filename, "r");
						//$contents = fread($handle, filesize($filename));
						//fclose($handle); 
						$contents = file_get_contents($filename);
						
						
						if($_POST["komentar"]){
						$komentar = ';'.$_POST["komentar"].'';							
						}
						
						if($_POST["vrsta_admina"]=="2"){
							$vrsta = "ce";
						} elseif($_POST["vrsta_admina"]=="3"){
							$vrsta = "de";
						}else {
							$vrsta = "ab";
						}
						
$contents .= '
"'.$_POST["nick"].'" "'.$_POST["sifra"].'" "'.$privilegije.'" "'.$vrsta.'" '.$komentar.'';
						
						$folder = 'cache/other_c/ftp/'.$server_info["username"].'_users.ini';

						$fw = fopen(''.$folder.'', 'w+');
						if(!$fw){
						echo "Can not open file.";	
						} else {
							
						$fb = fwrite($fw,stripslashes($contents));
						if(!$fb){
						echo "Can not save file";	
						} else {
							
						$remote_file = '/cstrike/addons/amxmodx/configs/users.ini';
						if (ftp_put($conn_id, $remote_file, $folder, FTP_BINARY)) {
							echo "Admin was successfully added.";
						} else {
							echo "An error occurred while adding admin.";
 						}

 						unlink($folder);						
						
 						}
 						
 						}
 						
						
						
						} else {
						
							echo "Incorrect FTP informations.";
							
						}
						
						
						
						}
						
					} else {
						
						echo 'You do not have access to this server.';
						
					}
					
					
				} else {
					if($_POST["vrsta_admina"]==2){
					echo 'You have not entered SteamID.';	
					} else {
					echo 'You have not entered Nickname.';
					}
					
				}
				
				
				
			} else {
			
				echo 'You have not selected privileges.';
				
			}
			
			
			
		} else {
		
		echo 'You have not entered the password.';
			
		}
		
		
		
		
	} else {
		
	echo 'You have not selected admin type.';
		
	}

	
	
} else {
echo 'An error has occurred.';	
}
} else {
echo 'Not logged in!';	
}

?>