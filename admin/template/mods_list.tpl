<div id="content">
        
        
        
<h1>Modovi</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Mods List
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Name</th>
                    <th>Path</th>
					<th>Default map</th>
                    <th>Hidden</th>
{if $admin.status eq "admin"}
                    <th>Action</th>
{/if}
                </tr>
            </thead>

            <tbody>
            {foreach from=$modovi item=mod}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>{$mod.id}</td>
                    <td>{$mod.ime}</td>
                    <td>{$mod.putanja}</td>
					<td>{$mod.mapa}</td>
                    <td>{$mod.hidden}</td>
{if $admin.status eq "admin"}
                    <td class="actions"><a href="admin.php?page=mod&action=edit&id={$mod.id}" title="Edit this mod"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=mod&action=list&delete={$mod.id}" title="Hide this mod"><img src="template/img/icons/delete.png" alt="" /></a></td>
{/if}
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no mods.</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
