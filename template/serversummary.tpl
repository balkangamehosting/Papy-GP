{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="content" class="ga-info clearfix" style="margin-top: -50px;">
<dl id="server-title">
<dt>{$server.name}</dt>

  <dd>
  {if $server.startovan eq 1}
  <a href="main.php?page=serversummary&id={$id}&action=restart" class="restart"> Restart</a></li>
  <a href="main.php?page=serversummary&id={$id}&action=stop" class="stop"> Stop</a></li>
  {else}
  <a href="main.php?page=serversummary&id={$id}&action=start" class="start"> Start</a></li>
  {/if}
  <dd>
</dl>
<div class="serversummary">
 <div class="shortcuts">
 <ul>
  <li style="background:none;">Shortcuts:</li>
  <li><a href="main.php?page=webftp&id={$id}&path=/cstrike/addons/amxmodx/configs/">Configs</a></li>
  <li><a href="main.php?page=webftp&id={$id}&path=/cstrike/addons/amxmodx/">AMXmodX</a></li>
  <li><a href="main.php?page=webftp&id={$id}&path=/cstrike/">Cstrike</a></li>
  <li><a href="main.php?page=webftp&id={$id}&path=/cstrike/addons/amxmodx/plugins/">Plugins</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/&file=server.cfg">Server.cfg</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=users.ini">Users.ini</a></li>
  <li><a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=plugins.ini">Plugins.ini</a></li>
  <span style="float:right;">
<li><a href="main.php?page=webftp&id={$id}&path=/"><img style='width:10px;height:10px;' src="template/images/web_ftp.png"> WEBFTP</a></li>
  <li><a id="add_admin_button" srv_id="{$id}" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/add_admin.png"> Add Admin</a></li>
  <li><a id="promeni_mod_dugme" srv_id="{$id}" href="javascript:void(0)"><img style='width:10px;height:10px;' src="template/images/change_mod.png"> Change Mod</a></li>
  </span>
 </ul>
</div>
<br>
<div class="info_mor">Server Informations</div>
<br />
<div class="serv_info_morph">
Name <a id="change_name" srv_name="{$server.name}" srv_id="{$id}" href="javascript:void(0)">[edit]</a> : <span class="morph_color">{$server.name}</span> <br /><div class="space123"></div>
Game : <span class="morph_color">{$server_igra}</span> <br /><div class="space123"></div>
Mod : <span class="morph_color">{$server_mod}</span> <br /><div class="space123"></div>
Default map <a id="default_mapa" srv_map="{$server.map}" srv_id="{$id}" href="javascript:void(0)">[edit]</a> : <span class="morph_color">{$server.map}</span> <br /><div class="space123"></div>
IP adress : <span class="morph_color">{$server.ip}:{$server.port}</span> <br /><div class="space123"></div>
Expiration date : <span class="morph_color">{if $server_istice|date_format:"%Y.%m.%d" lt $smarty.now|date_format:"%Y.%m.%d"}<span style='color:red;'>{$server_istice}</span>{else}{$server_istice}{/if}</span><br /><div class="space123"></div>
Status : <span class="morph_color">  <input type="text" style="border: medium none; background: none repeat scroll 0% 0% transparent; font-size: 12px; font-weight: bold;" disabled="disabled" class="{if $server.status eq 'Active'}status-active{else}status-suspended{/if}"  value="{$server.status}" />  </span> <br /><div class="space123"></div>
</div>

<div class="info_mor_ftp">FTP Informations</div>
<br />
<div class="server_info_ftp">
IP Adress : <span class="morph_color">{$server.ip}</span> <br /><div class="space123"></div>
FTP Port : <span class="morph_color">{$ftp_port}</span> <br /><div class="space123"></div>
User : <span class="morph_color">{$server.username}</span> <br /><div class="space123"></div>
Password : <span class="morph_color">{$server.password}</span> <a id="change_ftp_password" srv_id="{$id}" href="javascript:void(0)"><img style="width:10px;height:10px;" src="template/images/change_mod.png">&nbsp;Change FTP Pw</a> <br /><div class="space123"></div>
</div>

<br />

<div class="info_mor_serv">Server Status<a href="main.php?page=serversummary&id={$id}" >Refresh</a></div>
<br />
<div class="server_informations">
Server status : <span class="morph_color">{$status}</span> <br /><div class="space123"></div>
Server name : <span class="morph_color">{$ime_servera}</span> <br /><div class="space123"></div>
Map : <span class="morph_color">{$server_mapa}</span> <br /><div class="space123"></div>
Players : <span class="morph_color">{$broj_igraca}/{$maximalan_br_igraca}</span> <br /><div class="space123"></div>
Game : <span class="morph_color">{$server_igra}</span> <br /><div class="space123"></div>
</div>

<br />

<div class="server_graphics">Statistics</div> <br />
<a href="http://www.gametracker.rs/server_info/{$server.ip}:{$server.port}/" target="_blank"><img src="http://banners.gametracker.rs/{$server.ip}:{$server.port}/big/gray/banner.jpg" border="0" width="400" height="95" alt="" style="margin-left: 15px;"></a>
<br /><br />
<span class="morph_color">If you see "Server Not Found", make sure that your server is added to <a target='_blank' href='http://www.gametracker.rs/'>gametracker.rs</a> </span>

{/if}
</div>