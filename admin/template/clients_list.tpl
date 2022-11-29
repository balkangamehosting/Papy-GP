<div id="content">
        
        
        
<h1>Clients List</h1>
                
{if $napomena}
{$napomena}
{/if}
<div class="bloc">

    <div class="title">
        Clients Informations
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Name</th>
                    <th>Last Name</th>
                    <th>Number of Servers</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$klijenti item=klijent}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=client&action=overview&id={$klijent.id}">{$klijent.id}</a></td>
                    <td><a href="admin.php?page=client&action=overview&id={$klijent.id}">{$klijent.fname}</a></td>
                    <td><a href="admin.php?page=client&action=overview&id={$klijent.id}">{$klijent.lname}</a></td>
                    <td>{$klijent.serveri}</td>
                    <td class="actions"><a href="admin.php?page=client&action=edit&id={$klijent.id}" title="Edit profile of this cilent"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=client&action=list&delete={$klijent.id}" title="Delete this client"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no clients.</td>
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
        
        
