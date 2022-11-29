{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="content" class="ga-info clearfix">
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
<div id="gp-panels">
 <ul id="gp-panels-tabs">
  <li class="selected"><a href="main.php?page=serversummary&id={$id}">Server </a></li>
  <li><a href="main.php?page=settings&id={$id}">Settings </a></li>
  <li><a href="main.php?page=admins&id={$id}">Admins </a></li>
  <li><a href="main.php?page=webftp&id={$id}&path=/">WebFTP </a></li>
  <li><a href="main.php?page=plugins&id={$id}">Plugins </a></li>
  <li><a href="main.php?page=reinstall&id={$id}">Reinstall </a></li>
 </ul>
<div id="gp-column" style="
    background: url('template/images/gp-icon-config.png') no-repeat;      padding-left: 45px;      padding-top: 13px;      margin: 0 45px 10px;
">
        <dl>
            <dt>Plugins</dt>
            <dd>Here you can install or delete a plugin from your server</dd>
        </dl>
<br>

<br />
</div>

<br />


<table style="margin-left:25px;width:900px;" class="morphtbl">
<tr>
<th>#ID</th>
<th>Plugin name</th>
<th>Size</th>
<th>Instalacija</th>
</tr>

{foreach $plugins as $plugin}
<tr>
<td>#{counter}</td>
<td>{$plugin.name}</td>
<td>{$plugin.size} kb</td>
<td><a href="?page=plugini&id={$server.id}&task=install&ime={$plugin.name}">Install</a></td>

</tr>
{/foreach}
</table>



<br /><br />

<div class="clear"></div>
</div>


<br /><br />

{/if}
</div>

