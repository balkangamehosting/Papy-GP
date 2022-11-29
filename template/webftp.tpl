<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div class="serveri_morph">
<img src="template/images/webftp-icon-head.png" border="0" /><font style="margin-top:20px" face="Tahoma, Verdana, Arial, sans-serif;">WebFTP</font>
<br />
<font color="red">
Direct access to server files via FTP.</font><br />
</div>
<div class="ftp-options">
        <ul class="support-actions">
            <li>
                <a rel="modal" href="./main.php?page=serversummary&id={$id}" class="btn cboxElement" style="margin-left: 483px;">Back to Server</a>
            </li>
        </ul>
        </div>
<br />
<div id="ftp_path">
<div id="ftp_home">
<a href="main.php?page=webftp&id={$id}&path=/"><img src="template/images/ftp_home.png" border="0" /></a>
</div>

{$ftp_path}

<div class="clear"></div>
</div>
</div>

<div style="margin-left: 10px; margin-right: 10px;" class="dataTables_wrapper">
<table class="data-table" style="margin-left: 0px; width: 100%; border-collapse: collapse; border: medium none;">
            <thead>
                <tr>
                    <th class="sorting_disabled" width="300">Files and folders</th>
                    <th class="sorting_disabled" width="120">Size</th>
                    <th class="sorting_disabled" width="80">User </th>
                    <th class="sorting_disabled" width="80">Group </th>
                    <th class="sorting_disabled" width="120">Permissions</th>
                    <th class="sorting_disabled" width="160">Action</th>
                </tr>
            </thead>

{foreach from=$ftp_folderi item=x}

<tr>
<td>
<img src="template/images/ftp_folder.png" border="0" /> <a href="main.php?page=webftp&id={$id}&path={$old_path}{$x.8}">
{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}</a>
</td>

<td>
{if $x.4 < 1024} 
{$x.4} B
{elseif $x.4 < 1048576} 
{math|string_format:"%.2f" equation="size / 1024" size=$x.4} KB 
{else} 
{math|string_format:"%.2f" equation="size / 1024 / 1024" size=$x.4} MB 
{/if} 
</td>

<td>
{$x.2}
</td>

<td>
{$x.3}
</td>

<td>
{$x.0}
</td>

<td>
<a id="delete_folder" class="delete_folder" informacije="{$id},{$old_path},{$x.8}" href="javascript:void(0)" />Delete</a>
</td>

{/foreach}

{foreach from=$ftp_fajlovi item=x}

<tr>
<td>
<img src="template/images/ftp_file.png" border="0" /> 
{if $x.9} 
<a href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$x.8}">
{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}
</a>
{else}

{if $x.8|count_characters > 18} 
{$x.8|substr:0:18}...
{else}
{$x.8}
{/if}

{/if}
</td>

<td>
{if $x.4 < 1024} 
{$x.4} B
{elseif $x.4 < 1048576} 
{math|string_format:"%.2f" equation="size / 1024" size=$x.4} KB 
{else} 
{math|string_format:"%.2f" equation="size / 1024 / 1024" size=$x.4} MB 
{/if} 
</td>

<td>
{$x.2}
</td>

<td>
{$x.3}
</td>

<td>
{$x.0}
</td>

<td>
<a id="delete_file" class="delete_file" ftp_id="{$id}" ftp_path="{$old_path}" ftp_fname="{$x.8}" href="javascript:void(0)" />Delete</a>
{if $x.9} 
<a style="margin-left: 5px;" href="main.php?page=ftp_file&id={$id}&path={$old_path}&file={$x.8}">Edit</a>
{/if} 
</td>
</th>
{/foreach}

</table>

<div class="clear"></div>
</div>
</br>

{/if}
</div>

