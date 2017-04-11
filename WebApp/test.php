<?php

include 'include/class.php';

$db = new DB();

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
    print $i;
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
<div id="map" style="width: 500px; height: 400px;"></div>

<script>
    var locations = [ ];
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

?>

<script type="text/javascript">

    //locations.push(['<?= $adres[1] ?>', "<?= $lat[1] ?>", "<?= $long[1] ?>", <?= 1 ?>])


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
            map: map
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
</script>