<div id="content">
        
        
        
<h1>Editing Mod</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Mod Informations</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="uredi_klijent" value="1" />
        <div class="input long">
            <label for="ime">Name:</label>
            <input type="text" name="ime" id="ime" value="{$ime}" />
        </div>       
        <div class="input long">
            <label for="igra">Game:</label>
            <input type="text" name="igra" id="igra" value="{$igra}" />
        </div>         
        <div class="input long">
            <label for="putanja">Path:</label>
            <input type="text" name="putanja" id="putanja" value="{$putanja}" />
        </div>
        <div class="input long">
            <label for="putanja">Default map:</label>
            <input type="text" name="mapa" id="mapa" value="{$mapa}" />
        </div>
		<div class="input textarea">
            <label for="komanda">Command</label>
            <textarea name="komanda" id="komanda" rows="7" cols="4">{$komanda}</textarea>
        </div>      
        <div class="input">
            <label class="label">Hidden</label>
            <input type="radio" id="radio1" name="skriven" value="1" /><label for="radio1" class="inline">Yes</label> <br/>
            <input type="radio" id="radio2"  name="skriven" value="0" checked="checked"/> <label for="radio2" class="inline">No</label>
        </div>    
        <div class="submit">
            <input type="submit" name="edit_mod" value="Edit" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
