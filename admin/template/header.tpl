<!DOCTYPE html>
<html>
    <head>
        <title>HQ Hosting - Admin Panel</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link href="template/img/icons/favicon.ico" rel="shortcut icon" />

        <!-- Reset all CSS rule -->
        <link rel="stylesheet" href="template/css/reset.css" />
        
        <!-- Main stylesheed  (EDIT THIS ONE) -->
        <link rel="stylesheet" href="template/css/style.css" />

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="template/css/jqueryui/jqueryui.css" />
        
        <!-- jWysiwyg - https://github.com/akzhan/jwysiwyg/ -->
        <link rel="stylesheet" href="template/js/jwysiwyg/jquery.wysiwyg.old-school.css" />
        <script type="text/javascript" src="template/js/jwysiwyg/jquery.wysiwyg.js"></script>
		
		<script type="text/javascript" src="template/js/etrail.js"></script>

        
        
        <!-- Tooltipsy - http://tooltipsy.com/ -->
        <script type="text/javascript" src="template/js/tooltipsy.min.js"></script>
        
        <!-- iPhone checkboxes - http://awardwinningfjords.com/2009/06/16/iphone-style-checkboxes.html -->
        <script type="text/javascript" src="template/js/iphone-style-checkboxes.js"></script>
        <script type="text/javascript" src="template/js/excanvas.js"></script>
        
        <!-- Load zoombox (lightbox effect) - http://www.grafikart.fr/zoombox -->
        <script type="text/javascript" src="template/js/zoombox/zoombox.js"></script>

        <link rel="stylesheet" href="template/js/zoombox/zoombox.css" />
        
        <!-- Charts - http://www.filamentgroup.com/lab/update_to_jquery_visualize_accessible_charts_with_html5_from_designing_with/ -->
        <script type="text/javascript" src="template/js/visualize.jQuery.js"></script>
        
        <!-- Uniform - http://uniformjs.com/ -->
        <script type="text/javascript" src="template/js/jquery.uniform.min.js"></script>
        {$script}
    </head>

    <body class="white" onload="Refresh()">
    
        
        
        <!--              
                HEAD
                        --> 
        <div id="head">
            <div class="left">
                <a href="admin.php?page=profile" class="button profile"><img src="template/img/icons/huser.png" alt="" /></a>
                Hello,
                <a href="admin.php?page=profile"> {$admin.fname} {$admin.lname}</a>
                |
                <a href="../logout.php?admin=yes">Logout</a>

            </div>
            <div style="float:right; margin-right: 250px;">
                <form action="" id="search" method="post" class="search placeholder">
                    <label>Server IP Adress?</label>
                    <input type="text" value="" name="qq" class="text"/>
                    <input type="submit" value="search" class="submit"/>
                </form>
            </div>			
            <div class="right">
                <form action="" id="search" method="post" class="search placeholder">
                    <label>Client E-mail ?</label>
                    <input type="text" value="" name="q" class="text"/>
                    <input type="submit" value="search" class="submit"/>
                </form>
            </div>
        </div>
                
                
        <!--            
                SIDEBAR
                         --> 
        <div id="sidebar">
            <ul>
                <li class="nosubmenu">
                    <a href="admin.php">
                        <img src="template/img/icons/menu/home.png" alt="" />
                        Home
                    </a>
                </li>
                 <li><a href="#"><img src="template/img/icons/menu/client.png" alt="" /> Clients</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=client&action=list">Clients List</a></li>
                                                <li><a href="admin.php?page=client&action=add">Add Client</a></li>
                    </ul>
                </li>               

 
<li><a href="#"><img src="template/img/icons/menu/server.png" alt="" /> Servers</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=server&action=list">Servers List</a></li>
                                                <li><a href="admin.php?page=server&action=list&istekli=1">Expired Servers</a></li> 
						<li><a href="admin.php?page=server&action=freelist">Free Servers</a></li> 
                                                <li><a href="admin.php?page=server&action=add">Add Server</a></li>
                    </ul>
                </li>
 {if $admin.status eq "support"}
                <li><a href="#"><img src="template/img/icons/menu/server.png" alt="" /> Boxes & Mods List</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=box&action=list">Boxes List</a></li>
                                                <li><a href="admin.php?page=mod&action=list">Mods List</a></li>
                    </ul>
                </li> 
{/if}
 {if $admin.status eq "admin"}
                <li><a href="#"><img src="template/img/icons/menu/server.png" alt="" /> Boxes</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=box&action=list">Boxes List</a></li>
                                                <li><a href="admin.php?page=box&action=add">Add Boxes</a></li>
                    </ul>
                </li> 
                <li><a href="#"><img src="template/img/icons/menu/mod.png" alt="" /> Mods</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=mod&action=list">Mods List</a></li>
                                                <li><a href="admin.php?page=mod&action=add">Add Mod</a></li>
                    </ul>
                </li>
{/if}
                <li><a href="#"><img src="template/img/icons/menu/news.png" alt="" /> Notifications</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=news&action=list">Notifications List</a></li>
                                                <li><a href="admin.php?page=news&action=add">Add Notification</a></li>
                    </ul>
                </li>  
                <li><a href="#"><img src="template/img/icons/menu/support.png" alt="" /> Support</a>

                    <ul>
                    	<li><a href="admin.php?page=email&action=send"><span>Send an E-mail!</span></a></li>
                    	<li><a href="admin.php?page=support&status=Unanswered"><span>Unanswered Tickets</span></a></li>
                        <li><a href="admin.php?page=support&status=Opened"><span>Opened Tickets</span></a></li>
                        <li><a href="admin.php?page=support&status=Closed"><span>Closed Tickets</span></a></li>
                        {if $admin.status eq "admin"}
			<li><a href="admin.php?page=admins_list"><span>Admins/Supports List</span></a></li>
                        <li><a href="admin.php?page=add_admin"><span>Add Admin/Support</span></a></li>
                        {/if}
                    </ul>
                </li>
            </ul>


        </div>
<div id="content" style="padding: 0; margin: 28px 40px -40px 280px;">
<br />
</div>