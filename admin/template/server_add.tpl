<div id="content">
        
        
        
<h1>Adding Server</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Server Informations</div>
    <div class="content">
   

{if $korak eq 1} 
        <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" /> 
            <input type="hidden" name="korak" value="2" />    
        <div class="input">
            <label for="klijent">Select Client</label>
            <select name="klijent" id="klijent">
                {foreach from=$klijenti item=klijent}
                <option value="{$klijent.id}">{$klijent.fname} {$klijent.lname}</option>
                {foreachelse}
                    <option value="0">No Clients.</option>
                {/foreach}
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>             
 {/if}
     
 
 {if $korak eq 2}
 
       <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" />
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="korak" value="3" />    
        <div class="input">
            <label for="masina">Select Box</label>
            <select name="masina" id="masina">
                {foreach from=$masine item=masina}
                <option value="{$masina.id}">{$masina.name}</option>
                {foreachelse}
                    <option value="0">No Boxes.</option>
                {/foreach}
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>
     
 {/if}   
 
 
  {if $korak eq 3}
 
       <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" />
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="korak" value="4" />  
        <div class="input">
            <label for="ip">Select IP Adress</label>
            <select name="ip" id="ip">
                {foreach from=$ip_adrese item=ip}
                <option value="{$ip.id}">{$ip.ip}</option>
                {foreachelse}
                    <option value="0">No IP Adresses.</option>
                {/foreach}
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>
     
 {/if}
 
 
 
  {if $korak eq 4}
 
       <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" />
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="ip" value="{$ip}" />
            <input type="hidden" name="korak" value="7" />  
        <div class="input">
            <label for="mod">Select Mod</label>
            <select name="mod" id="mod">
                {foreach from=$modovi item=mod}
                <option value="{$mod.id}">{$mod.ime}</option>
                {foreachelse}
                    <option value="0">No Mods.</option>
                {/foreach}
            </select>
        </div>  
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>
     
 {/if} 
 
   {if $korak eq 7}
 
       <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" />
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="ip" value="{$ip}" />	
            <input type="hidden" name="mod" value="{$mod}" /> 			
            <input type="hidden" name="korak" value="8" />  
        <div class="input">
            <label for="vrsta">Server Type</label>
            <select name="vrsta" id="vrsta">
                <option value="1">Paid server</option>
		<option value="2">Free server</option>
            </select>
        </div> 
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>
     
 {/if} 
 
{if $korak eq 8}
	{if $vrsta eq 1}
       <form action="" method="get">
            <input type="hidden" name="page" value="server" /> 
            <input type="hidden" name="action" value="add" />
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="ip" value="{$ip}" />	
			<input type="hidden" name="mod" value="{$mod}" /> 
			<input type="hidden" name="vrsta" value="{$vrsta}" />				
            <input type="hidden" name="korak" value="5" />  
        <div class="input long">
            <label for="uplatnica">Payment Method</label>
            <input type="text" name="uplatnica" id="uplatnica" />
        </div>    
        <div class="submit">
            <input type="submit" value="Next" />
        </div>  
       </form>	
	{/if}
	
	{if $vrsta eq 2}
       <form action="admin.php?page=server&action=list" method="post">
             <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="ip" value="{$ip}" />	
			<input type="hidden" name="mod" value="{$mod}" /> 
			<input type="hidden" name="vrsta" value="{$vrsta}" />
			<input type="hidden" name="free" value="1" /> 
			<input type="hidden" name="uplatnica" value="" /> 

       <div class="input long">
            <label for="name">Server Name</label>
            <input type="text" name="name" id="name" />
        </div>             
            
       <div class="input long">
            <label for="name">Server Cost (&euro;)</label>
            <input type="text" name="cena" id="cena" value="0" />
        </div>
		
        <div class="input long">
            <label for="slotovi">Slots Number</label>
            <input type="text" name="slotovi" id="slotovi" />
        </div>  
        
        <div class="input long">
            <label for="mapa">Default Map</label>
            <input type="text" name="mapa" id="mapa" value="{$mapa}" />
        </div>         
            
        <div class="input long">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="{$port}" />
        </div> 

        <div class="input long">
            <label for="fps">FPS Max</label>
            <input type="text" name="fps" id="fps" value="300" />
        </div>         
 
       <div class="input">
            <label for="istice">Expires</label>
            <input type="text" class="datepicker" name="istice" id="istice"/>
        </div>            
 
         <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>
        </div>             
            
        <div class="submit">
            <input type="submit" name="add_server" value="Add" />
        </div>  
       </form>	
	{/if}  
 {/if} 
 
   {if $korak eq 5}
 
       <form action="admin.php?page=server&action=list" method="post">
            <input type="hidden" name="klijent" value="{$klijent}" />
            <input type="hidden" name="masina" value="{$masina}" /> 
            <input type="hidden" name="ip" value="{$ip}" />	
            <input type="hidden" name="mod" value="{$mod}" /> 
            <input type="hidden" name="vrsta" value="{$vrsta}" />
            <input type="hidden" name="uplatnica" value="{$uplatnica}" /> 
            <input type="hidden" name="free" value="0" /> 

       <div class="input long">
            <label for="name">Server Name</label>
            <input type="text" name="name" id="name" />
        </div>             
            
       <div class="input long">
            <label for="name">Server Cost (&euro;)</label>
            <input type="text" name="cena" id="cena" />
        </div>          
		
        <div class="input long">
            <label for="slotovi">Slots Number</label>
            <input type="text" name="slotovi" id="slotovi" />
        </div>  
        
        <div class="input long">
            <label for="mapa">Default Map</label>
            <input type="text" name="mapa" id="mapa" value="de_dust2" />
        </div>         
            
        <div class="input long">
            <label for="port">Port</label>
            <input type="text" name="port" id="port" value="{$port}" />
        </div> 

        <div class="input long">
            <label for="fps">FPS Max</label>
            <input type="text" name="fps" id="fps" value="300" />
        </div>         
 
       <div class="input">
            <label for="istice">Expires</label>
            <input type="text" class="datepicker" name="istice" id="istice"/>
        </div>            
 
         <div class="input">
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
            </select>
        </div>             
            
        <div class="submit">
            <input type="submit" name="add_server" value="Add" />
        </div>  
       </form>
     
 {/if}
 
     
    </div>
</div>    
       


</div>
        
        
