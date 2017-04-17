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

<h1>Aantal oplaad palen</h1>

<div id="myDiv" style="width: 480px; height: 400px;"><!-- Plotly chart will be drawn inside this DIV --></div>
<script>
    var data = [
        {
            x: ['Rotterdam', 'Amsterdam', 'Den Haag'],
            y: [<?= $Rotterdam ?>, <?= $Amsterdam ?>, <?= $DenHaag ?>],
            type: 'bar'
        }
    ];

    Plotly.newPlot('myDiv', data);
</script>
