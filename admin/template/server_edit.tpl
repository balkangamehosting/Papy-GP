<div id="content">
        
        
        
<h1>Editing Server</h1>
{if $message}
{$message}
{/if}

  
       
<div class="bloc">
    <div class="title">
        Server Informations
    </div>
    <div class="content">
       <form action="" method="post">
        <div class="input">
            <label for="ime">Server Name</label>
            <input type="text" name="ime" id="ime" value="{$ime}" />
        </div>    
		
        <div class="input">
            <label for="ime">Server Cost (euro)</label>
            <input type="text" name="cena" id="cena" value="{$cena}" />
        </div>    		
		
        <div class="input">
            <label for="vlasnik">Cliend ID</label>
            <input type="text" name="vlasnik" id="vlasnik" value="{$vlasnik}" />
        </div>   
        
        <div class="input">
            <label for="mapa">Default Map</label>
            <input type="text" name="mapa" id="mapa" value="{$mapa}" />
        </div>        

        <div class="input">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="{$port}" />
        </div>
        
        <div class="input">
            <label for="fps">FPS</label>
            <input type="text" name="fps" id="fps" value="{$fps}" />
        </div>      
		
        {if $admin.status eq "support"}        
        <div class="input">
            <label for="slotovi">Slots</label>
            <input type="text" name="slotovi" readonly="readonly" id="slotovi" value="{$slotovi}" />
        </div>  
		{/if}
        {if $admin.status eq "admin"}        
        <div class="input">
            <label for="slotovi">Slots</label>
            <input type="text" name="slotovi" id="slotovi" value="{$slotovi}" />
        </div>  
		{/if}
		{if $admin.status eq "support"}
        <div class="input">
            <label for="istice">Expires</label>
            <input type="text" class="datepickerr" readonly="readonly" name="istice" value="{$istice}" id="istice"/>Radnicima onemogućena opcija
        </div> 		
		{/if}
		{if $admin.status eq "admin"}
        <div class="input">
            <label for="istice">Expires</label>
            <input type="text" class="datepicker" readonly="readonly" name="istice" value="{$istice}" id="istice"/>
        </div> 
        {/if}      
        <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Active">Active</option>
                <option value="Suspended" {if $status eq "Suspended"} selected="1" {/if}>Suspended</option>
            </select>
        </div>
		{if $admin.status eq "admin"}
        <div class="input">
            <label for="free">Free</label>
            <select name="free" id="free">
                <option value="0">No</option>
                <option value="1" {if $free eq "1"} selected="1" {/if}>Yes</option>
            </select>
        </div>
		{/if}
		{if $admin.status eq "support"}
        <div class="input">
            <label for="free">Free</label>
            <input type="text" readonly="readonly" name="free" value="{if $free eq '1'}Yes{else}No{/if}" id="free" />
        </div>		
		{/if}
        <div class="input">
            <label for="uplatnica">Payment method</label>
            <input type="text" {if $admin.status eq "support"}readonly="readonly" {/if}name="uplatnica" id="uplatnica" value="{$uplatnica}" />Disables support option
        </div>
                
        <div class="submit">
            <center>
            <input type="submit" name="save_changes" value="Save changes" />
            <input type="reset" value="Delete" onclick="document.location = 'admin.php?page=server&action=list&delete={$id}';" />
            <input type="reset" class="black" value="Login as client" onclick="window.open('{$link}index.php?support={$user_id}');" />
            <input type="reset" class="black" value="Client Profile" onclick="document.location = '{$link}admin/admin.php?page=client&action=overview&id={$user_id}';" />
            </center>
        </div>    
        </form>
        </div>
    </div>
</div>
            
                     




</div>
        
        
