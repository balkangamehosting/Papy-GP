{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="content" class="ga-tickets clearfix">
 <div id="gp-home">
  <dl class="tk-head">
       <dt>Support</dt>
       <dd>Ticket #{$tiket_id} - {$tiket_naslov}</dd>
    </dl>

<div class="tk-col-left">
        <a href="main.php?page=support">Go back</a>
        <a class="servers-buttne" href="main.php?page=serverslist">Servers </a>
    </div>
<div class="tk-col-right">
        <h2>Messages</h2>
        <div id="pmesages">

{foreach from=$odgovori item=odgovor}
<ul>
            	<li class="box sent ui-detail-top-left-blue">
                    <dl>
                        <dt>By {$odgovor.user} {$odgovor.user1} on {$odgovor.vrijeme_odgovora|date_format:"%d.%m.%Y at %H:%M:%S"}</dt>
                        <dd>{$odgovor.odgovor}</dd>
                        <dd style="font-style:italic;color:red;">{$odgovor.napomena}</dd>
                    </dl>
                </li>
            </ul>
{/foreach}

{if $tiket_zatvoren eq 1}

{else}
<div id="odgovori">
<h2 class="icon-reply">Answer</h2>
<form action="" method="post">
<textarea name="odgovor">{$neodgovoreni_tiketi}</textarea>
<input type="submit" class="odgovori_dugme" name="reply" value="Reply"/> <a href="./main.php?page=ticket&id={$tiket_id}&zatvori=yes" style="text-decoration: none;"><input type="button" class="closebtn" name="close" value="Close" /></a>
</form>
</div>
{/if}

</div>


<div class="clear"></div>
</div>



{/if}
</div>