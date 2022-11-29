<?php
if(!defined('GPANEL')) die('Not allowed on demo client.');

$mysql_server = 'localhost:3306';
$mysql_username = 'hqvoiceh_newgpanel';
$mysql_password = 'JKHSK(*&(*&%(&*%';
$mysql_database = 'hqvoiceh_newgpanel';
$mysql_charset = 'utf8';
$link = 'http://panel.hq-hosting.me/';
$configs["email"] = 'no-reply@hq-hosting.me';
$configs["demo"] = 'info@hq-hosting.me';
$configs["host"] = 'HQ-Hosting.ME';

$connect = mysql_connect($mysql_server, $mysql_username, $mysql_password) or die('Cannot connect to database!');
$select = mysql_select_db($mysql_database) or die('Cannot select database!');
mysql_query('SET  NAMES \''.$mysql_charset.'\'',$connect);
?>