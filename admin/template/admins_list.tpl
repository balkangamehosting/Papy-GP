<div id="content">
        
        
        
<h1>Admins/Supports List</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Admins/Supports Informations
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>&nbsp;&nbsp;Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Number of ticket answers</th>
                    <th>Status</th>
                    <th width="40px" align="right">Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$radnici item=radnik}
			
                <tr>
                    <td>&nbsp;&nbsp;{$radnik.fname}</td>
                    <td>{$radnik.lname}</td>
                    <td>{$radnik.username}</td>
                    <td>{$radnik.password}</td>
                    <td>{$radnik.email}</td>
                    <td>{$radnik.odgovori}</td>
                    <td><span style="color: {$radnik.boja}">{$radnik.status}</span></td>
					<td class="actions">
						<a href="admin.php?page=admins_list&delete={$radnik.id}" title="Delete admin/support"><img style="float: right;" src="template/img/icons/delete.png" alt="" /></a>
						<a href="admin.php?page=admin_edit&id={$radnik.id}" title="Edit admin/support"><img style="float: right;" src="template/img/icons/edit.png" alt="" /></a>
					</td>	
                    				
                </tr>
             {foreachelse}
             <tr>
             <td colspan="8">There are no admins/supports.</td>
             </tr>
             {/foreach}
	<td colspan="10" style="border-bottom: none;padding-top: 5px;background: none;">
       <div class="submit" style="float:left;margin-left: 89%;">
	    <input type="submit" value="Add Admin" onclick="window.location='admin.php?page=add_admin';" />  
        </div> </td>
	      </tr>

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
