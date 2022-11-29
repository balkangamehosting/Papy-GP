<div id="content">
        
        
        
<h1>Adding Box</h1>
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
            <input type="text" name="ime" id="ime" />
        </div>                
        <div class="input long">
            <label for="ip">IP Adress:</label>
            <input type="text" name="ip" id="ip" />
        </div>
     
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" />
        </div>  
        
        <div class="input long">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" />
        </div>  
        
        <div class="input long">
            <label for="ftp_port">FTP Port <font color="#666666" style="verdana" size="-2">(Default 21)</font></font></label>
            <input type="text" name="ftp_port" id="ftp_port" />
        </div>  
        
        <div class="input long">
            <label for="ssh_port">SSH Port <font color="#666666" style="verdana" size="-2">(Default 22)</font></font></label>
            <input type="text" name="ssh_port" id="ssh_port" />
        </div>  
        
       <div class="input long">
            <label for="lokacija">Location</label>
            <input type="text" name="lokacija" id="lokacija" />
        </div>           
        
        <div class="submit">
            <input type="submit" name="add_box" value="Add" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
