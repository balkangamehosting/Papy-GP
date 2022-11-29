<div id="content">
        
        
        
<h1>Actions List</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Actions Informations
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>

                    <th>Title</th>
                    <th>Date</th>
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
                    <td class="actions"><a href="admin.php?page=action&action=edit&id={$vijest.id}" title="Edit this action"><img src="template/img/icons/edit.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no actions.</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
