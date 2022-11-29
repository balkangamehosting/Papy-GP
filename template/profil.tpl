{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="gp-column" style="margin-bottom: 0px;"><br />

<div class="morph_prf" style="margin-top: 10px;">
<dl style="margin-left: 30px;margin-top: -20px;background: url(&quot;template/images/gp-icon-config.png&quot;) no-repeat;padding-left: 55px;height: 45px;">
                <dt style="padding-top: 5px;">Personal data</dt>
                <dd>Here you can change personal data</dd>
</dl>
<br />
<form action="" method="post" style="width: 70%;margin-left: 10%;">
<label for="fname">First Name :</label> <input type="text" style="width:395px;" class="input" name="fname" value="{$profil_fname}" /> <br /><br />
<label for="lname">Second Name :</label> <input type="text" style="width:395px;" class="input" name="lname" value="{$profil_lname}" /> <br /><br />
<label for="email">Email :</label> <input type="text" style="width:395px;" class="input" name="email" value="{$profil_email}" /> <br /><br />
<label for="password">Password (not visible) :</label> <input type="password" style="width:395px;" class="input" name="password" autocomplete="off" /> <br /><br />
<input type="submit" class="lgboutton" name="submit" value="Save">
</form>
</div>
<br />