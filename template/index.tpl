{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
</div>
<div id="login" style="margin-top: 15%;">
<form onsubmit="skloni();return false;">
<div id="email"><img src="template/images/email.png" border="0" /></div>
<div id="email_input"><input type="text" name="email" id="emaili" class="input" placeholder="info@hq-hosting.me" /></div>
<div id="password"><img src="template/images/pass.png" border="0" /></div>
<div id="password_input"><input type="password" name="password" id="passwordi" class="input" placeholder="demo" /></div>
<div id="remember_me"><input type="checkbox" name="remember_me" id="remember" value="1" checked="1" />Remember me</div>
<div id="lost_pw"><a href="#">Forgot your password ?</a></div>
<div id="login_btn"><input type="image" id="loginbtn" src="template/images/loginbtn.png" name="submit" /></div>
</form>
</div>