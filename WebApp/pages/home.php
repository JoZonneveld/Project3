<?php

$db->sql = mysqli_query($db->conn, "SELECT id, Adres, Longitude, Latitude FROM paal");

if ($db->sql->num_rows > 0)
{
    $i = 0;
    while($row = $db->sql->fetch_assoc())
    {
        $adres[$i] = $row['Adres'];
        $long[$i] = $row['Longitude'];
        $lat[$i] = $row['Latitude'];
        $i++;
    }
}

$db->sql = mysqli_query($db->conn, "SELECT id, AreaDesc, Longitude, Latitude FROM park");

if ($db->sql->num_rows > 0)
{
    $i = 0;
    while($row = $db->sql->fetch_assoc())
    {
        $adres1[$i] = $row['AreaDesc'];
        $long1[$i] = $row['Longitude'];
        $lat1[$i] = $row['Latitude'];
        $i++;
    }
}

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

<script>
    var locations = [ ];
    var locations1 = [ ];
</script>

<?php

for ($i = 0; $i < count($long); $i++)
{
    ?>
    <script>
        locations.push(['<?= $adres[$i] ?>', "<?= $lat[$i] ?>", "<?= $long[$i] ?>", <?= $i ?>])
    </script>
    <?php
}

for ($i = 0; $i < count($long1); $i++)
{
    ?>
    <script>
        locations1.push(['<?= $adres1[$i] ?>', "<?= $lat1[$i] ?>", "<?= $long1[$i] ?>", <?= $i ?>])
    </script>
    <?php
}

?>

<script type="text/javascript">

    var paal = 'img/paal1.png';
    var park = 'img/park.png';


    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: new google.maps.LatLng(51.9244201, 4.4777325),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,
            icon: paal
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }

    for (i = 0; i < locations1.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations1[i][1], locations1[i][2]),
            map: map,
            icon: park
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations1[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
</script>