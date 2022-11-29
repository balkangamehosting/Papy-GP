<div id="content">
        
        
        
<h1>Sending Email</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Content</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="naslov">E-mail:</label>
            <input type="text" name="korisnici" id="korisnici" value="{$korisnici}" />
        </div> 
        <div class="input long">
            <label for="naslov">Title:</label>
            <input type="text" name="naslov" id="naslov" />
        </div>                        
        <div class="input textarea">
            <label for="text">Message</label>
            <textarea name="text" id="text" rows="7" class="wysiwyg" cols="4">
            </textarea>
        </div>      
        <div class="submit">
            <input type="submit" name="send_email" value="Send" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
