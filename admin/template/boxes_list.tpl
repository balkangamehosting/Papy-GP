<div id="content">
        
        
        
<h1>Boxes List</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Boxes Informations
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Name</th>
                    <th>IP Adress</th>
                    <th>Location</th>
		    <th>Servers</th>
{if $admin.status eq "admin"}
                    <th>Action</th>
{/if}
                </tr>
            </thead>

            <tbody>
            {foreach from=$masine item=masina}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=box&action=edit&id={$masina.id}">{$masina.id}</a></td>
                    <td>{$masina.name}</td>
                    <td>{$masina.ip}</td>
                    <td>{$masina.location}</td>
		    <td><a href="admin.php?page=server&action=list&boxid={$masina.id}">{$masina.serverii} servers</a></td>
{if $admin.status eq "admin"}
                    <td class="actions"><a href="admin.php?page=box&action=edit&id={$masina.id}" title="Edit this box"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=box&action=list&delete={$masina.id}" title="Delete this box and all his servers"><img src="template/img/icons/delete.png" alt="" /></a></td>
{/if}
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no boxes.</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
