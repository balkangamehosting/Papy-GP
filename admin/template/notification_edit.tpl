<div id="content">
        
        
        
<h1>Editing Notifications</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Content</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="naslov">Title:</label>
            <input type="text" name="naslov" id="naslov" value="{$naslov}" />
        </div>                
        <div class="input">
            <label for="input4">Date</label>
            <input type="text" name="datum" class="datepicker" id="input4" value="{$datum}" />
        </div>
        <div class="input textarea">
            <label for="text">Text</label>
            <textarea name="text" id="text" rows="7" class="wysiwyg" cols="4">
{$text}
            </textarea>
        </div>  
        <div class="input">
            <label class="label">Hidden</label>
            <input type="radio" id="radio1" name="hidden" value="1"/><label for="radio1" class="inline">Yes</label> <br/>
            <input type="radio" id="radio2"  name="hidden" value="0" checked="checked" /> <label for="radio2" class="inline">No</label>
        </div>    
        <div class="submit">
            <input type="submit" name="add" value="Edit" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
