{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
<div id="content" class="ga-servers clearfix">
    <div id="gp-column" class="servers">
        <dl>
   <dt>IP Log</dt>
   <dd>Here you can see IP's of persons that have logged into your game panel</dd>
	</dl>
<div class="dataTables_wrapper">

<table>
            <thead>
                <tr>
                    <th class="sorting_disabled">IP</th>
                    <th class="sorting_disabled">Hostname</th>
                    <th class="sorting_disabled">Time</th>
                </tr>
            </thead>

{foreach from=$logovi item=log}
<tr>
<td>{$log.ip} </td> 
<td>{$log.hostname}</td> 
<td>{$log.vreme|date_format:"%d-%m-%Y at %H:%M"}</td>
</tr>
<div class="clear"></div>
{foreachelse}

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">There are no logs.</span><br /><br />

{/foreach}

</table>