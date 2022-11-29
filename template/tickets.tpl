{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="content" class="ga-support clearfix">
<div id="gp-column">
        <dl>
            <dt>Support</dt>
            <dd>Welcome to Your Hosting Support Panel</dd>
            <dd>Here you can open new ticket if you need help with server.</dd>
	</dl>
        <ul class="support-actions">
            <li>

                <a rel="modal" href="./main.php?page=open_ticket" class="btn cboxElement" style="margin-bottom: 7px;">New ticket</a>
		<a rel="modal" href="./main.php?page=support&archive=yes" class="btn cboxElement">Archive</a>
            </li>
        </ul>
<div class="dataTables_wrapper">

<table>
 <thead>
  <tr>
   <th>Status</th>
   <th>Ticket ID</th>
   <th>Date</th>
   <th>Server</th>
   <th>Ticket title</th>
   <th>Number of messages</th>
   <th>Last answer</th>
  </tr>
 </thead>

{foreach from=$tiketi item=tiket}
<tbody>
<tr>
<td>{if $tiket.status eq 'Answered'}<span class='green'>{$tiket.status}</span>{else if $tiket.status eq 'Unanswered'} <span style='color:#FFF;'>{$tiket.status} </span> {else}<span class='suspended' style='text-transform: uppercase;'>{$tiket.status} (archived)</span>{/if}</td>
<td><a href="main.php?page=ticket&id={$tiket.id}">#{$tiket.id}</a></td>
<td>{$tiket.datum|date_format:"%d.%m.%Y"}</td>
<td>{$tiket.ip}:{$tiket.port}</td>
<td><a href="main.php?page=ticket&id={$tiket.id}">
{if $tiket.naslov|count_characters > 21} 
{$tiket.naslov|substr:0:21}...
{else}
{$tiket.naslov}
{/if}
</a></td>
<td>{$tiket.broj_odgovora}</td>
<td>{$tiket.zadnji_odgovor|date_format:"%d-%m-%Y %H:%M"}</td>
</tr>
</tbody>

{foreachelse}

</table>

<span style="font-family:TAHOMA;font-size:12px;font-weight:bold;margin-left:10px;">You have no opened tickets.</span>


{/foreach}

{/if}
</div>

</table>