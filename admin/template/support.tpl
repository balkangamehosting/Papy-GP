<div id="content">
        
        
        
<h1>Clients Support</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Tickets List
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Title</th>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Priority</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$tiketi item=tiket}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=ticket&action=overview&id={$tiket.id}">{$tiket.id}</a></td>
                    <td>{$tiket.naslov}</td>
                    <td>{$tiket.datum}</td>
		    <td>{$tiket.vrsta}</td>
                    <td>{$tiket.prioritet}</td>
                    <td>{$tiket.status}</td>
                    <td class="actions"><a href="admin.php?page=support&status={$status}&delete={$tiket.id}" title="Delete this ticket"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no tickets</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
        <div class="pagination">

            {$stranice}
           

        </div>
    </div>
</div>
                

       


</div>
        
        
