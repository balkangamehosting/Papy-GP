<div id="content">
        
        
        
<h1>Notifications List</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Notification Informations
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Title</th>
                    <th>Date</th>
                    <th>Hidden</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$vijesti item=vijest}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>{$vijest.id}</td>
                    <td>{$vijest.title}</td>
                    <td>{$vijest.date}</td>
                    <td>{$vijest.skrivena}</td>
                    <td class="actions"><a href="admin.php?page=news&action=edit&id={$vijest.id}" title="Edit this Notification"><img src="template/img/icons/edit.png" alt="" /></a><a href="admin.php?page=news&action=list&delete={$vijest.id}" title="Delete this notification"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no notifications.</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
