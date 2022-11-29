<div id="content">
        
        
        
<h1>Editing Client</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Client informations</div>
    <div class="content">
    <form action="" method="post">
        <input type="hidden" name="edit_client" value="1" />
        <div class="input long">
            <label for="fname">Name:</label>
            <input type="text" name="fname" id="fname" value="{$fname}" />
        </div>                
        <div class="input long">
            <label for="lname">Last Name:</label>
            <input type="text" name="lname" id="lname" value="{$lname}" />
        </div>
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="{$email}" />
        </div>        
        <div class="input long">
            <label for="pin">Pin kod:</label>
            <input type="text" name="pin" id="pin" maxlength="5" value="{$pin}" />
        </div>        		
        <div class="input">
            <label class="label">Reset Password</label>
            <input type="radio" id="radio1" name="data" value="1"  /><label for="radio1" class="inline">Yes</label> <br/>
            <input type="radio" id="radio2"  name="data" value="0" checked="checked" /> <label for="radio2" class="inline">No</label>
        </div>    
        <div class="submit">
            <input type="submit" value="Edit" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
