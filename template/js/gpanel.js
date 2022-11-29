function ajaxzahtjev() { 
	var xmlHttp; 
		if(window.XMLHttpRequest){ 
		xmlHttp = new XMLHttpRequest(); 
		} else if(window.ActiveXObject) { 
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); 
		} else { 
		alert('Problem creating the XMLHttpRequest object'); 
		} 
	return xmlHttp; 
} 

var xmlHttp = ajaxzahtjev(); 

function skloni() {

ajaxLogin();
	
}

function ajaxLogin() {

	xmlHttp.onreadystatechange=function() {
		if(xmlHttp.readyState==4) {
			globalReturn = xmlHttp.responseText;
			if (globalReturn==""){
			$.alerts.dialogClass = 'style_1';	
			jAlert('Login informations are incorrect.', 'Bad Login');
			} else {
			loadiraj(); 
			}
		} 
	}
	var email= (document.getElementById("emaili").value);
	var password =(document.getElementById("passwordi").value);
	var checked;
	if (document.getElementById("remember").checked) checked=1;
	else checked=0;
	
	var url="login.php?email="+email+"&password="+password+"&remember="+checked;
	xmlHttp.open("GET",url,true);
	xmlHttp.send(null);
}


function loadiraj() {

  $('#loginbtn').fadeOut('slow', function() {
  	$('#login').html('<div id="loginloader"><img src="template/images/loading.gif" border="0" /></div>'); 		  
  });

	
	 setTimeout(function() {

			window.location.href=globalReturn;
	}, 3000);

}




$(document).ready( function() {
				
				
if($('#message').length != 0){
  $.alerts.dialogClass = 'style_1'; // set custom style class
      jAlert($('#message').html(), 'Message', function() {
	$.alerts.dialogClass = null; // reset to default
  });
}

if($('#error').length != 0){
  $.alerts.dialogClass = 'style_1'; // set custom style class
      jAlert($('#error').html(), 'Message', function(r) {
if(r==true){
window.location = 'main.php'
}		      
	$.alerts.dialogClass = null; // reset to default
  });
}
	

$('.delete_folder').click(function() {
var r2 = $(this).attr("informacije").split(",");			
$.alerts.dialogClass = 'style_1'; // set custom style class
jConfirm('Are you sure that you want to delete the folder "' + r2[2] + '"', 'Delete confirmation', function(r) {
if(r==true){
window.location = 'main.php?page=webftp&id=' + r2[0] + '&path=' + r2[1] + '&folder=' + r2[2] + '&delete=folder'
}
});
});  





$('.delete_file').click(function() {
var ftp_id = $(this).attr("ftp_id");
var ftp_path = $(this).attr("ftp_path");
var ftp_fname = $(this).attr("ftp_fname");

$.alerts.dialogClass = 'style_1';
jConfirm('Are you sure that you want to delete the folder "' + ftp_fname + '"', 'Delete Confirmation', function(r) {
if(r==true){
window.location = 'main.php?page=webftp&id=' + ftp_id + '&path=' + ftp_path + '&file=' + ftp_fname + '&delete=file'
}
});

});   


$('#default_mapa').click(function(ev) {
var srv_id = $(this).attr("srv_id");
var srv_map = $(this).attr("srv_map");

$.alerts.dialogClass = 'style_1';
jConfirm('<input type="text" id="srv_map" name="srv_map" value="'+ srv_map +'" />  <div id="popup_panel"><input type="button" id="popup_ok" value="&nbsp;OK&nbsp;"> <input type="button" id="popup_cancel" value="&nbsp;Cancel&nbsp;"></div> <br /> <p>Each time you restart the server, it will be started in this map.<br /><font color="red">!! Warning !!</font> If you set an invalid map name the server will not work<font color="red">!! Warning !!</font></p>', 'Change Default Map', function(r) {


		

});


$("#popup_panel").remove();

$('#popup_cancel').click(function(ev) {
$("#popup_container").remove();
$("#popup_overlay").remove();
});


$('#popup_ok').click(function(ev) {
		  var srv_map = $('#srv_map').val();
                  $('#popup_panel').html('<img src="template/images/loading.gif" border="0" />');

			$.ajax({
			   type: "POST",
			   url: "map.php",
			   data: "srv_id_p=" + srv_id + "&srv_map=" + srv_map,
			   dataType: "html",
			   success: function(responseText){
        			addmin_added(responseText);
			   }
			});
});


});		



$('#change_name').click(function(ev) {
var srv_id = $(this).attr("srv_id");
var srv_name = $(this).attr("srv_name");

$.alerts.dialogClass = 'style_1';
jConfirm('<input type="text" id="srv_name" name="srv_name" value="'+ srv_name +'" />  <div id="popup_panel"><input type="button" id="popup_ok" value="&nbsp;OK&nbsp;"> <input type="button" id="popup_cancel" value="&nbsp;Cancel&nbsp;"></div> <br /> <p class="map">This will only change the name in the panel! <br /> Change will not be active on the server!</p>', 'Change Name', function(r) {

		

});


$("#popup_panel").remove();

$('#popup_cancel').click(function(ev) {
$("#popup_container").remove();
$("#popup_overlay").remove();
});


$('#popup_ok').click(function(ev) {
		  var srv_name = $('#srv_name').val();
                  $('#popup_panel').html('<img src="template/images/loading.gif" border="0" />');

			$.ajax({
			   type: "POST",
			   url: "name_change.php",
			   data: "srv_id_p=" + srv_id + "&srv_name=" + srv_name,
			   dataType: "html",
			   success: function(responseText){
        			addmin_added(responseText);
			   }
			});
});


});		





$('#change_ftp_password').click(function() {
var srv_id = $(this).attr("srv_id");


$.alerts.dialogClass = 'style_1';
jConfirm('Are you sure that you want to change FTP Password?', 'Change FTP Password', function(r) {

if(r==true){
window.location = 'main.php?page=serversummary&id=' + srv_id + '&change_ftp_pw=yes'
}

});		

		
		
});






$('#add_admin_button').click(function(ev) {
var srv_id = $(this).attr("srv_id");

$.alerts.dialogClass = 'style_1';
jConfirm('Type of admin: <br /> <select name="vrsta" id="vrsta_admina" onchange="vrsta_admina();"><option value="1">Nick + Password</option><option value="2">SteamID</option><option value="3">IP Adress</option></select> <br /> <span id="vrsta_label">Nickname:</span> <br /> <input type="text" id="anick" name="nick" /> <br /> Password: <br /> <input type="password" id="asifra" name="sifra" /> <br /> Privileges: <br /> <select name="privilegije" id="privilegije" onchange="privilegija();"><option value="abcdefghijklmnopqrstuy">Owner</option><option value="abcdefghijkmnopqrstuy">Head Admin</option><option value="abcdeghijmnopqrstu">Assistant</option><option value="abceijmnopqrstu">Admin</option><option value="5">Custom</option></select> <div id="mjesto_za_flagove"></div> <br /> Comment <br /> <input type="text" id="akomentar" name="komentar" /> <div id="popup_panel"><input type="button" id="popup_ok" value="&nbsp;OK&nbsp;"> <input type="button" id="popup_cancel" value="&nbsp;Cancel&nbsp;"></div>', 'Adding Admin', function(r) {

		

});


$("#popup_panel").remove();

$('#popup_cancel').click(function(ev) {
$("#popup_container").remove();
$("#popup_overlay").remove();
});


$('#popup_ok').click(function(ev) {
		  var vrsta_admina = $('#vrsta_admina').val();
		  var nick = $('#anick').val();
		  var sifra = $('#asifra').val();
		  var privilegije = $('#privilegije').val();
		  var custom_flags = $('#flaged').val();
		  var komentar = $('#akomentar').val();
                  $('#popup_panel').html('<img src="template/images/loading.gif" border="0" />');

			$.ajax({
			   type: "POST",
			   url: "admin_add.php",
			   data: "srv_id_p=" + srv_id + "&vrsta_admina=" + vrsta_admina + "&nick=" + nick + "&sifra=" + sifra + "&privilegije=" + privilegije + "&custom_flags=" + custom_flags + "&komentar=" + komentar,
			   dataType: "html",
			   success: function(responseText){
        			addmin_added(responseText);
			   }
			});
});


});

		
		
		
$('#promeni_mod_dugme').click(function(ev) {
var srv_id = $(this).attr("srv_id");
$.alerts.dialogClass = 'style_1';

			$.ajax({
			   type: "POST",
			   url: "mod_change.php",
			   data: "srv_id=" + srv_id + "&akcija=gethtml",
			   dataType: "html",
			   success: function(responseText){
			   	   jConfirm(responseText + '<div id="popup_panel"><input type="button" id="popup_ok" value="&nbsp;OK&nbsp;"> <input type="button" id="popup_cancel" value="&nbsp;Cancel&nbsp;"></div>', 'Change Mod', function(r) { 

			   	   });
			   	   
$("#popup_panel").remove();

$('#popup_cancel').click(function(ev) {
$("#popup_container").remove();
$("#popup_overlay").remove();
});


$('#popup_ok').click(function(ev) {
		        $('#popup_panel').html('<img src="template/images/loading.gif" border="0" />');
		        var mod_id = $('#modovi').val();
			$.ajax({
			   type: "POST",
			   url: "mod_change.php",
			   data: "srv_id=" + srv_id + "&mod_id=" + mod_id,
			   dataType: "html",
			   success: function(responseText){
        			mod_added(responseText);
			   }
			});
		 
});			   	   
			   	   
			   	   
			   	   
			   }
			});


});




$('#lost_pw a').click(function(){
   $('#login_btn').remove();
   $('#login').html('<form onsubmit="skloni();return false;"><div id="email"><img border="0" src="template/images/email.png" /></div> <div id="email_input"><input type="text" class="input" id="emaili" name="email_pw" /></div> <div id="login_btn"><input type="image" name="submit" src="template/images/sendbtn.png" id="sendbtn" /></div> </form>');
   
});






});	



function addmin_added(responseText){
jAlert(responseText, 'Adding Admin');
}

function mod_added(responseText){
jAlert(responseText, 'Changing Mod');
}


function vrsta_admina(){
var vrsta = $('#vrsta_admina').val();	
if(vrsta=="1"){
$('#vrsta_label').html("Nickname:");
}else if(vrsta=="2"){
$('#vrsta_label').html("SteamID :");	
}else if(vrsta=="3"){
$('#vrsta_label').html("IP Adress:");		
}else {
$('#vrsta_label').html("Nickname:");	
}

}

function privilegija(){
var privilegija_tip = $('#privilegije').val();	

if(privilegija_tip=="5"){
	$('#mjesto_za_flagove').html('Custom flags: <br /> <input type="checkbox" id="a_custom_admin" onchange="dodajSlovo(this.value,this.checked);" value="a"> "a" Imunity <br /><input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="b_custom_admin" value="b"> "b" Slot <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="c_custom_admin" value="c"> "c" amx_kick <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="d_custom_admin" value="d"> "d" amx_ban &amp; amx_unban <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="e_custom_admin" value="e"> "e" amx_slay &amp; amx_slap <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="f_custom_admin" value="f"> "f" amx_map <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="g_custom_admin" value="g"> "g" amx_cvar <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="h_custom_admin" value="h"> "h" amx_cfg <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="i_custom_admin" value="i"> "i" amx_chat &amp; green chat <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="j_custom_admin" value="j"> "j" amx_vote &amp; amx_votemap <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="k_custom_admin" value="k"> "k" amx_cvar sv_password <br /> <input type="checkbox" onchange="dodajSlovo(this.value,this.checked);" id="l_custom_admin" value="l"> "l" head admin <br /> Selected Flags: <br /><input type="text" name="flaged" readonly="1" style="width:149px; height:15px;" id="flaged" value="">');
} else {
$('#mjesto_za_flagove').html('');	
}

}


function dodajSlovo(flag,bul) {
	//var 
	if (bul) {
		document.getElementById("flaged").value+=flag;
		
	} else {
		temp=document.getElementById("flaged").value.split(flag);
		document.getElementById("flaged").value=(temp[0]+temp[1]);
		
		
	}
	
}
	

