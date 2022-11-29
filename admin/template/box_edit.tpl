<div id="content">
        
        
        
<h1>Editing Box</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Box Informations</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="edit_client" value="1" />
        <div class="input long">
            <label for="ime">Name:</label>
            <input type="text" name="ime" id="ime" value="{$ime}" />
        </div>                
        <div class="input long">
            <label for="ip">IP Adress:</label>
            <input type="text" name="ip" id="ip" value="{$ip}" />
        </div>
     
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="{$username}" />
        </div>  
        
        <div class="input long">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" value="{$password}" />
        </div>  
        
        <div class="input long">
            <label for="ftp_port">FTP Port:</label>
            <input type="text" name="ftp_port" id="ftp_port" value="{$ftp_port}" />
        </div>  
        
        <div class="input long">
            <label for="ssh_port">SSH Port:</label>
            <input type="text" name="ssh_port" id="ssh_port" value="{$ssh_port}" />
        </div>  
        
       <div class="input long">
            <label for="lokacija">Location:</label>
            <input type="text" name="lokacija" id="lokacija" value="{$lokacija}" />
        </div>           
        
        <div class="submit">
            <input type="submit" name="add_box" value="Edit" />
        </div>  
    </form>    
    </div>
</div>    
       

<div class="bloc left">

    <div class="title">
        IP Adress List
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>
                    <th>IP Adress</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$ip_adrese item=ip_adresa}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>{$ip_adresa.id}</td>
                    <td>{$ip_adresa.ip}</td>
                    <td class="actions"><a href="admin.php?page=box&action=edit&id={$id}&deleteip={$ip_adresa.id}" title="Delete this IP Adress"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="4">There are no IP adresses</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>                   
  
                 
<div class="bloc right">

    <div class="title">
        Add IP Adress
    </div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="ip">IP Adress:</label>
            <input type="text" name="ip" id="ip" />
        </div>                
        <div class="submit">
            <input type="submit" name="add_ip" value="Add" />
        </div>  
    </form>           
    </div>
</div>                 
                 
<div class="cb"></div>                 
                 

</div>
        
        
