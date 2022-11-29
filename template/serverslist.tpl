<div id="content" class="ga-servers clearfix">
    <div id="gp-column" class="servers">
        <dl>
            <dt>Servers</dt>
            <dd>Server list</dd>
        </dl>
<br />
<div class="dataTables_wrapper">
    <table>
            <thead>
                <tr>
                    <th class="sorting_disabled">Server name</th>
                    <th class="sorting_disabled">Valid through</th>
                    <th class="sorting_disabled">Price</th>
                    <th class="sorting_disabled">IP address</th>
                    <th class="sorting_disabled">Slots</th>
                    <th class="sorting_disabled">Status </th>
                </tr>
            </thead>
{foreach from=$serveri item=srv}
<tbody>
<tr class="{if $srv.status eq 'Active'}active{else}suspended{/if}">

<td>
<a style="padding-left: 5px;" class="" href="main.php?page=serversummary&id={$srv.id}">{$srv.name}</a>
</td>  

<td>
<span class="tooltip"> {$srv.istice|date_format:"%d.%m.%Y"}
</span>
</td> 

<td>
{$srv.cena} &#8364;
</td> 

<td>{if $srv.mod eq '7'}
<img style='height:10px;width:10px;' src='template/images/game-samp.png'>{else}<img style='height:10px;width:10px;' src='template/images/game-cs.png'>{/if} {$srv.ip}:{$srv.port}
</<td> 

<td>
{$srv.slotovi}
</<td> 

<td class="{if $srv.status eq 'Active'}green{else}red{/if}">
{$srv.status}
</td>

</tr>
		</tbody>
<tr class="even">
                    <td></td>
                    <td align="right">Total price:</td>
                    <td>{$totalcost}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
{foreachelse}

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">You currently have no server.</span><br />
{/foreach}

</div>
</div>
</table>
