<?php

function getMin($input)
{
    $test1 = explode(".", $input);
    $output = "";
    for($i = 0; $i < count($test1); $i++)
    {
        $output = $output . $test1[$i];
    }

    $loop = strlen($output) - 3;

    $a = 1;
    for($i = 0; $i < $loop; $i++)
    {
        $a = $a . 0;
    }

    return $output - $a;
}


function getMax($input)
{
    $test1 = explode(".", $input);
    $output = "";
    for($i = 0; $i < count($test1); $i++)
    {
        $output = $output . $test1[$i];
    }

    $loop = strlen($output) - 3;

    $a = 1;
    for($i = 0; $i < $loop; $i++)
    {
        $a = $a . 0;
    }

    /** @var int $output */
    return $output + $a;
}

$long = "4.5094768";
$lat = "51.8969409";

$minLat = 0;
$maxLat = 0;

$minLong = 0;
$maxLong = 0;

$maxLong = getMax($long);
$minLong = getMin($long);

print $maxLong . " - " .$minLong;
?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Google Maps Multiple Markers</title>
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyBJT7Y3hhxrM8kj7bbtWNQt8mmdPDmlxOg&sensor=false"
            type="text/javascript"></script>
    <script src=""></script>
</head>
<body>
<div id="map" style="width:100%;height:400px;"></div>

<script type="text/javascript">

    var iconBase = 'img/park.png';
    var locations = [ ];

    locations.push(['home', "51.8969409", "4.5094768", 1]);

    locations.push(['up lat +', "51.9009409", "4.5194768", 3]); // + = up Lat +/- 40.000.000.000 Long +/- 100.000.000
    locations.push(['down lat -', "51.8929409", "4.5194768", 4]); // - = down

    locations.push(['up long +', "51.9009409", "4.4994768", 3]); // + = down
    locations.push(['down long -', "51.8929409", "4.4994768", 4]); // - = up



    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: new google.maps.LatLng(51.8969409, 4.5094768),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,
            icon: iconBase
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
</script>
</div>
</body>