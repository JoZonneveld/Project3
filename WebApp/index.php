<?php
require_once 'Mobile/Mobile_Detect.php';
$detect = new Mobile_Detect;


if (!$detect->isMobile() ) {
    echo '<meta name="viewport" content="initial-scale=0.65,minimum-scale=0.5,maximum-scale=0.5,width=device-width,height=device-height,target-densitydpi=device-dpi,user-scalable=yes" /> ';
} elseif( $detect->isiOS() ){
    echo '<meta name="viewport" content="width=device-width, initial-scale=0.75, maximum-scale=12.0, minimum-scale=.25, user-scalable=yes"/> ';
} else {
    echo '<meta name="viewport" content="width=device-width, initial-scale=0.80, maximum-scale=12.0, minimum-scale=.25, user-scalable=yes"/> ';

    //echo '<meta name="viewport" content="initial-scale=0.65,minimum-scale=0.5,maximum-scale=0.5,width=device-width,height=device-height,target-densitydpi=device-dpi,user-scalable=yes" />
    // <link rel="stylesheet" href="css/android.css" />';
}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<style>

    </style>
</head>
<body>
<?php
session_start();
include("include/class.php");
$db = new DB();

include("include/menu.php");
?>

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