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
    <title>Park 'n Volt</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <style>

    </style>
</head>
<body>
<script src="js/plotly-latest.min.js"></script>
<?php
session_start();
include("include/class.php");
$db = new DB();

include("include/menu.php");
?>

<div id="content">
    <center>
        <?php
        $file = fopen("img/paal.csv","r");
        $Rotterdam = 0;
        $Amsterdam = 0;
        $DenHaag = 0;
        $adres = [];
        $bool = true;

        while (($line = fgetcsv($file)) !== FALSE) {
        //count Rotterdam
        if (strpos($line[2], 'Rotterdam'))
        {
        for($i = 0; $i < count($adres); $i++)
        {
        if($adres[$i] == $line[2])
        {
        $bool = false;
        }
        }
        if($bool)
        {
        $Rotterdam++;
        }
        $bool = true;
        array_push($adres, $line[2]);
        }

        //count Amsterdam
        if (strpos($line[2], 'Amsterdam'))
        {
        for($i = 0; $i < count($adres); $i++)
        {
        if($adres[$i] == $line[2])
        {
        $bool = false;
        }
        }
        if($bool)
        {
        $Amsterdam++;
        }
        $bool = true;
        array_push($adres, $line[2]);
        }

        //count Den-Haag
        if (strpos($line[2], 'Den Haag'))
        {
        for($i = 0; $i < count($adres); $i++)
        {
        if($adres[$i] == $line[2])
        {
        $bool = false;
        }
        }
        if($bool)
        {
        $DenHaag++;
        }
        $bool = true;
        array_push($adres, $line[2]);
        }
        }
        fclose($file);

        ?>

        <div id="myDiv" style="width: 480px; height: 400px;">
            <h2>Aantal oplaad palen</h2>
            <!-- Plotly chart will be drawn inside this DIV --></div>
        <script>
            var data = [
                {
                    x: ['Rotterdam', 'Amsterdam', 'Den-Haag'],
                    y: [<?= $Rotterdam ?>, <?= $Amsterdam ?>, <?= $DenHaag ?>],
                    type: 'bar'
                }
            ];

            Plotly.newPlot('myDiv', data);
        </script>
    </center>
</div>

<!-- jQuery Version 1.11.1 -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>


</body>
</html>