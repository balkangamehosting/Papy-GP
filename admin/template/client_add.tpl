<div id="content">
        
        
        
<h1>Adding Client</h1>
{if $message}
{$message}
{/if}

<div class="bloc">
    <div class="title">Client Informations</div>
    <div class="content">
    <form action="" method="post">
        <div class="input long">
            <label for="fname">Name:</label>
            <input type="text" name="fname" id="fname" />
        </div>                
        <div class="input long">
            <label for="lname">Last Name:</label>
            <input type="text" name="lname" id="lname" />
        </div>
        <div class="input long">
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" />
        </div>        
        <div class="input long">
            <label for="pin">Pin kod:</label>
            <input type="text" name="pin" id="pin" maxlength="5" />
        </div>        
        <div class="input">
            <label class="label">Send Informations</label>
            <input type="radio" id="radio1" name="data" value="1"  checked="checked"/><label for="radio1" class="inline">Yes</label> <br/>
            <input type="radio" id="radio2"  name="data" value="0" /> <label for="radio2" class="inline">No</label>
        </div>    
        <div class="submit">
            <input type="submit" name="add_client" value="Add" />
        </div>  
    </form>    
    </div>
</div>    
       


</div>
        
        
