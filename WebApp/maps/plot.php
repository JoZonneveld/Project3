<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Google Maps Multiple Markers</title>
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyBJT7Y3hhxrM8kj7bbtWNQt8mmdPDmlxOg&sensor=false"
            type="text/javascript"></script>
    <script src=""></script>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
    </style>
</head>
<body>

<script src="../js/plotly-latest.min.js"></script>

<?php
$file = fopen("../img/paal.csv","r");
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

<div id="myDiv" style="width: 100vw; height: 100vh;"><!-- Plotly chart will be drawn inside this DIV --></div>
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
</body>
</html>

