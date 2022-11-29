<div id="content">
        
        
        
<h1>Ticket overview</h1>
{if $message}
{$message}
{/if}

  
       
<div class="bloc">
    <div class="title">
        Ticket Informations
    </div>
    <div class="content">

         <table class="noalt">
            <tbody>
                {foreach from=$odgovori item=odgovor}
                <tr>
                    <td>
                        <p>

                            <strong>{$odgovor.korisnik}</strong><br/>
                            <em>{$odgovor.vrijeme_odgovora}</em><br/>
{$odgovor.odgovor}
                        </p>
                    </td>
                </tr>
                {/foreach}
                      
                                      
            </tbody>
        </table>       
        <form action="" method="post">
        <div class="input textarea">
            <label for="odgovor">Reply</label>
            <textarea name="odgovor" id="odgovor" rows="7" cols="4"></textarea>
        </div> 
        <div class="submit">
            <center>
            <input type="submit" name="save_changes" value="Reply" />
            <input type="reset" class="black" value="Close" onclick="document.location = '{$link}admin.php?page=ticket&action=overview&id={$id}&zatvori=yes';" />
            <input type="reset" class="black" value="Delete" onclick="document.location = '{$link}admin.php?page=support&status=Unanswered&delete={$id}';" />
            </center>
        </div>            
        </form>
        </div>
    </div>
</div>
            
                     




</div>
        
        
