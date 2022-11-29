<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="content" class="ga-support clearfix">
<div id="gp-column" class="support">
        <dl>
	    <dt>Support</dt>
	    <dd>By filling out this form will open a new support ticket.</dd>
	    <dd>Make sure that you give us a detailed description of the problem you have about the server and our support team will answer you as soon as possible.</dd>
	</dl>
</div>

<br />

<div class="open_ticket"><br />
<form action="main.php?page=support" method="post">
<label for="tiket_title">Title:</label> <input style="width:350px;" class="input" type="text" name="tiket_title" />
<br /><br />

<label for="serveri">Server:</label> 
<select style="width:360px;" class="input" name="serveri" >
{foreach from=$serveri item=srv}
<option value="{$srv.id}">{$srv.ip}:{$srv.port}</option>
<option value="Info">INFO</option>
{/foreach}
</select>
<br /><br />

<label for="vrsta">Ticket type:</label> 
<select style="width:360px;" class="input" name="vrsta">
<option value="Support">SUPPORT</option>
<option value="Question">QUESTION</option>
<option value="Payment">PAYMENT</option>
</select>
<br /><br />

<label for="priority">Ticket priority:</label> 
<select style="width:360px;" class="input" name="prioritet">
<option value="Urgent">HIGH</option>
<option value="Normal">MEDIUM</option>
<option value="Not urgent">NORMAL</option>
</select>
<br /><br />

<label for="question">Question:</label>
<textarea name="question" style="width:395px;height:70px;max-width:395px;max-height:70px;" class="input"></textarea>
<div class="clear"></div>
<input class="open_ticket-btn" value="Send" id="button" type="submit"></
</form>
</div>

<br />

{/if}
</div>
