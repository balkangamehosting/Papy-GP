<div id="content">
        
        

    
<h1><img src="template/img/icons/dashboard.png" alt="" />Home</h1>
                
{if $message}
{$message}
{/if}

<div class="bloc" style="float: left; width: 100%;">
 <div class="title">
        Message
    </div>
    <div class="content">
    {if $napomena}
    {$napomena}
    {/if}
    <form action="" method="post">
        <div class="input textarea">
             <textarea name="napomena" id="textarea1" rows="7" cols="4">{$admin.napomena}</textarea>
        </div>
        <div class="submit">
            <input type="submit" value="Save" />
        </div>
    </form>    
    </div>   
</div>


<div class="bloc left">
 <div class="title">
        Signature
    </div>
    <div class="content">
	{if $signature}
    {$signature}
    {/if}
    <form action="" method="post">
        <div class="input textarea">
             <textarea name="signature" id="textarea1" rows="7" cols="4">{$admin.signature}</textarea>
        </div>
        <div class="submit">
            <input type="submit" value="Save" />
        </div>
    </form>    
    </div>       
</div>

<div class="bloc right">
    <div class="title">
        Statistics
    </div>
    <div class="content">
        <div class="left">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Servers</em></th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4>{$active_servers}</h4></td>
                        <td>Active</td>
                    </tr>
                    <tr>

                        <td><h4>{$inactive_servers}</h4></td>
                        <td>Inactive</td>
                    </tr>
                    <tr>
                        <td><h4>{$expired_servers}</h4></td>
                        <td>Expired</td>
                    </tr>
					<!--
                     <tr>
                        <td><h4>{$number_slots}</h4></td>
                        <td>Number of Slots</td>
                    </tr> 
					-->
                     <tr>
                        <td><h4>{$number_free_servers}</h4></td>
                        <td>Free Servers</td>
                    </tr> 
					<tr>
						<td><h4>{$number_replies}</h4></td>
						<td>Replied Tickets</td>
					</tr>
                </tbody>
            </table>
        </div>
        <div class="right">

            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Tickets</em></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <td><h4>{$unanswered_tickets}</h4></td>
                        <td class="bad">&nbsp;Unanswered</td>
                    </tr>
                    <tr>
                        <td><h4>{$opened_tickets}</h4></td>
                        <td class="neutral">&nbsp;Opened</td>
                    </tr>

                    <tr>
                        <td><h4>{$closed_tickets}</h4></td>
                        <td class="good">Closed</td>
                    </tr>
                     <tr>
                        <td><h4>{$number_admins}</h4></td>
                        <td>&nbsp;Number of Admins &amp; Supports</td>
                    </tr> 
                     <tr>
                        <td><h4>{$number_clients}</h4></td>
                        <td>&nbsp;Number of Clients</td>
                    </tr> 					
                </tbody>
            </table>
        </div>
        <div class="cb"></div>

    </div>
</div>

<div class="bloc" style="float: left; width:100%;">
                 <div class="title">
                    Chat <input type="text" placeholder="Forbidden Spam and insults..." style="margin-left: 20px; margin-top: 3px;" id="chat_text" /> <div class="submit" style="margin-top: -40px; margin-left: 4px; margin-right: -4px;"><input class="btn btn-primary" type="button" value="Send" style="margin-top: 3px; float: right; margin-right: 40%;" onclick="Chat_Send()" /></div>
                </div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
                    <div id="chat_messages">
						<div id="atest">Deleting...</div>
						<div id="rtest">Refreshing...</div>
                        <ul></ul>
                    </div>
                    {if $admin.status eq "admin"}
					<div class="submit" style="float: left;">
                        <input class="btn btn-primary" type="button" value="Delete all messages" style="margin: 5px 10px 5px 10px;" onclick="Chat_IzbrisiSve()" />
                    </div>
					{/if}
					<div class="submit" style="float: left;">
                        <input class="btn btn-primary" type="button" value="Refresh" style="margin: 5px 10px 5px 10px;" onclick="Refresh()" />
                    </div>
				
<div class="bloc right" style="margin-left: 5px; margin-top: -205px; margin-bottom: 10px; margin-right: 5px; width:20%;">
                 <div class="title">
				Active Clients
				</div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
					<div id="clanovi">
						<div id="vtest">Refreshing...</div>
                        <ul></ul>
					</div>
					<div class="submit" id="klijenti">
                        <input class="btn btn-primary" type="button" value="Online: {$klijention}" style="margin: 5px 10px 5px 10px;" />
                    </div>
				</div>
</div>
<div class="bloc right" style="margin-top: -205px; width:20%;">
                 <div class="title">
				Active Admins
				</div> 
                <div id="chat_main" class="content" style="float: left; padding: 0; margin: 0; width: 100%;">
					<div id="onlinea">
						<div id="btest">Refreshing...</div>
                        <ul></ul>
					</div>
					<div class="submit" id="admini">
						<input class="btn btn-primary" type="button" value="Online: {$adminion}" style="margin: 5px 10px 5px 10px;" />
                    </div>
				</div>
</div>	</div>			
</div>
<div class="bloc" style="float: left; width: 100%;">
    <div class="title">
        Logs list
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" class="checkall"/></th>
                    <th>ID</th>
                    <th>Message</th>
                    <th>Name</th>
                    <th>IP Adress</th>
                    <th style="width: 110px;">Time</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$logovi item=log}
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>{$log.id}</td>
                    <td>{$log.message}</td>
                    <td><a href="admin.php?page=client&action=overview&id={$log.clientid}">{$log.name}</a></td>
                    <td>{$log.ip}</td>
                    <td class="actions">{$log.vreme}</td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="6">There are no clients</td>
             </tr>
             {/foreach}

            </tbody>

        </table>

    </div>
</div> 


<div class="cb"></div>

                    


</div>
        
        
