<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<style>
    body {
        padding-top: 70px;
        /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
    }
    </style>
</head>
<body>
<?php
session_start();
include("include/class.php");
$db = new DB();
?>
<div id="menu">
<?php
	include("include/menu.php");
?>
</div>

<div id="content">
<center>
 <?php 
   if(isset($_GET['page']))
   {
	   $page = $_GET['page'];
	   
	   if(file_exists("pages/".$page.".php"))
	   {
		   include("pages/".$page.".php");
	   }
	   else
	   {
		   include("pages/home.php");
	   }
   }
   else
   {
	  include("pages/home.php");
   }
 ?>
 </center>
 </div>

     <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>