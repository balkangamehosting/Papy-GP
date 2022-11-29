<div id="content">
        
        
        
<h1>Client Overview</h1>
{if $message}
{$message}
{/if}

  
       
<div class="bloc left">
    <div class="title">
        Client Informations
    </div>
    <div class="content">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Client</em></th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4>Name:</h4></td>
                        <td>{$ime}</td>
                    </tr>
                    <tr>

                        <td><h4>Last Name:</h4></td>
                        <td>{$prezime}</td>
                    </tr>
                    <tr>
                        <td><h4>Email:</h4></td>
                        <td>{$email}</td>
                    </tr>
                    <tr>
                        <td><h4>Number of Slots:</h4></td>
                        <td>{$slotovi}</td>
                    </tr>                    
                    
                </tbody>
            </table>
                    <br />
                    <center>
        <div class="submit" style="float:left;">
            <form action="admin.php" method="get" >
            <input type="hidden" name="page" value="client" />    
            <input type="hidden" name="action" value="list" /> 
            <input type="hidden" name="delete" value="{$id}" /> 
            <input type="submit" value="Delete client" />
            </form>
        </div>
        
      <div style="float:right;">
         <div class="submit" style="float:left; margin-right:10px;">
            <form action="admin.php" method="get">
            <input type="hidden" name="page" value="client" />    
            <input type="hidden" name="action" value="edit" /> 
            <input type="hidden" name="id" value="{$id}" /> 
            <input type="submit" value="Edit client" />
            </form>
        </div>     
        
        <div class="submit" style="float:right;">
            <input type="reset" class="black" value="Login as client" onclick="window.open('{$link}index.php?support={$id}');" />
        </div> 
      </div>        
                    </center>
                    <div style="clear:both"></div>
    </div>
   
</div>
            
            
<div class="bloc right">

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
                    <th>IP Adress</th>
                    <th>Number of Slots</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$serveri item=server}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td><a href="admin.php?page=server&action=edit&id={$server.id}">{$server.id}</a></td>
                    <td>{$server.ime}</td>
                    <td>{$server.ip}:{$server.port}</td>
                    <td>{$server.slotovi}</td>
                    <td>{$server.status}</td>
                    <td class="actions"><a href="admin.php?page=server&action=list&delete={$server.id}" title="Delete this server"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="7">There are no servers</td>
             </tr>
             {/foreach}
	      <tr> <td colspan="7" style="border-bottom: none;padding-top: 5px;background: none;">
        <div class="submit" style="float:right;">
	    <input type="submit" value="Add Server" onclick="window.open('admin.php?page=server&action=add&korak=2&klijent={$id}');" />
        </div> </td>
	      </tr>
            </tbody>

        </table>
    </div>
</div>            


<div class="cb"></div>

</div>
        
        
