<div id="content" class="ga-gphome clearfix">
<div id="gp-home" style="font-family: Tahoma, Verdana, Arial, sans-serif;">
    <div class="left">
        <dl class="title">
            <dt><font color="white">Welcome to our GPanel</font></dt>
        </dl>
        <h1></h1>
    </div>
    <div class="right">
        <dl class="title">
            <dt>Last announcements:</dt>
            <dd>Here you can see reports about servers, works announced or eventual problems with machines </dd>
        </dl>
        <div class="scroll-panel">
{foreach from=$news item=nws}
            <dl>
	      <dd>{$nws.date|date_format:"%d.%m.%Y"} - {$nws.title} {if $nws.date|date_format:"%d.%m.%Y" eq $smarty.now|date_format:"%d.%m.%Y"}<span class='blink_me' style='color:green;font-size:12px;font-weight:bold;margin-left:20px;'>NEW MESSAGE!</span>{else}{/if}</dd>
	<dt>{$nws.text}</dt>
  	    </dl>
<br />
{foreachelse}
            <dl>
	      <dd>{$smarty.now|date_format:"%d.%m.%Y"} - No Notifications !</dd>
	<dt>There are currently no news or notifications</dt>
	    </dl>
        </div>
    </div>
</div>
{/foreach}
</div>
</div>
</div>

