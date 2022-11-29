<div id="content">
        
        
        
<h1>Editing Action</h1>
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
        <div class="submit">
            <input type="submit" name="add" value="Add" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
