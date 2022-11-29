<div id="content">
        
        
        
<h1>Editing Admin/Support Profile</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Profile Informations</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="ime">Name:</label>
            <input type="text" name="fname" id="ime" value="{$e_ime}" />
        </div>                
        <div class="input long">
            <label for="prezime">Last Name:</label>
            <input type="text" name="lname" id="prezime" value="{$e_prezime}" />
        </div>
        <div class="input long">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="{$e_username}" />
        </div>  
        
        <div class="input long">
            <label for="password">Password (Not visible):</label>
            <input type="text" name="password" id="password" value="{$e_password}" />
        </div>     
        
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="{$e_email}" />
        </div> 

        <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
				<option value="admin" {if $e_status eq "admin"} selected="1" {/if}>Admin</option>
                <option value="support" {if $e_status eq "support"} selected="1" {/if}>Support</option>
                <option value="suspended" {if $e_status eq "suspendovan"} selected="1" {/if}>Suspended</option>
            </select>
        </div>
		
        <div class="submit">
            <input type="submit" name="edit_admin" value="Edit" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
