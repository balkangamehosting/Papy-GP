<div id="content">
        
        
        
<h1>Paid Servers List</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Servers List
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Name</th>
                    <th>Client</th>
                    <th>Number of Slots</th>
                    <th>Expires</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$serveri item=server}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=server&action=edit&id={$server.id}">{$server.id}</a></td>
                    <td>{$server.name}</td>
                    <td>{$server.klijent}</td>
                    <td>{$server.slotovi}</td>
                    <td>{$server.istice}</td>
                    <td>{$server.status}</td>
                    <td class="actions"><a href="admin.php?page=server&action=edit&id={$server.id}" title="Edit this server"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=server&action=list{$isticemi}&delete={$server.id}" onclick="return confirm('Are you sure you want to delete this server?')" title="Delete this server"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no servers.</td>
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
        
        
