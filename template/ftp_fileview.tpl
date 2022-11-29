<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div style="margin-bottom: 0px;" class="serveri_morph">
<img src="template/images/webftp-icon-head.png" border="0" /><font style="margin-top:20px" face="Tahoma, Verdana, Arial, sans-serif;">WebFTP</font>
<br />
<font color="red">
Direct access to server files via FTP.</font><br />
</div>

<br />

<div id="ftp_path">
<div id="ftp_home">
<a href="main.php?page=webftp&id={$id}&path=/"><img src="template/images/ftp_home.png" border="0" /></a> 
</div>

{$ftp_path}


<div class="ftp_path_folder">
<a href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$file}">{$file}</a>
</div>
<div class="clear"></div>
</div>

<div id="edit_file">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">

<form method="post" name="file_edit" id="file_edit" action="">
<textarea name="new_file" spellcheck="false" cols="100%" class="edit_file_textare">{$ftp_contents}</textarea>
</div>
<div class="obavjest_bottom_text"></div>
<div class="clear"></div>
<input type="submit" class="save_file" name="submit" value="Save">
</form>
</div>

</div>

{/if}
</div>

