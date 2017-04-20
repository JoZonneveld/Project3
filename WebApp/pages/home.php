<?php

$db->sql = mysqli_query($db->conn, "SELECT id, Adres, Longitude, Latitude FROM paal");//haal gegevens uit db voor elektrische palen

if ($db->sql->num_rows > 0)
{
    $i = 0; // array var
    while($row = $db->sql->fetch_assoc())
    {
        $adres[$i] = $row['Adres']; // Adres in array zetten
        $long[$i] = $row['Longitude']; // Longitude in array zetten
        $lat[$i] = $row['Latitude']; // Latitude in array zetten
        $i++; // +1 op array counter
    }
}

$db->sql = mysqli_query($db->conn, "SELECT id, AreaDesc, Longitude, Latitude FROM park"); // haal de gegevens uit de db voor garages

if ($db->sql->num_rows > 0)
{
    $i = 0;// array var
    while($row = $db->sql->fetch_assoc())
    {
        $adres1[$i] = $row['AreaDesc'];// AreaDesc = Adres in array zetten
        $long1[$i] = $row['Longitude'];// Longitude in array zetten
        $lat1[$i] = $row['Latitude'];// Latitude in array zetten
        $i++; // +1 op array counter
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
<div id="map" style="width:100vw;height:98vh;"></div>

<script>
    var locations = [ ]; // array voor elektrische palen markers
    var locations1 = [ ]; // array voor garages markers
</script>

<?php

for ($i = 0; $i < count($long); $i++)
{
    ?>
    <script>
        locations.push(['<?= $adres[$i] ?>', "<?= $lat[$i] ?>", "<?= $long[$i] ?>", <?= $i ?>]) // vul de paal array met gegevens palen
    </script>
    <?php
}

for ($i = 0; $i < count($long1); $i++)
{
    ?>
    <script>
        locations1.push(['<?= $adres1[$i] ?>', "<?= $lat1[$i] ?>", "<?= $long1[$i] ?>", <?= $i ?>]) // vul de garage array met gegevens garages
    </script>
    <?php
}

?>

<script type="text/javascript">

    var paal = 'img/paal1.png'; // afbeelding marker paal
    var park = 'img/park.png'; // afbeelding marker garage

    //maak de map aan
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: new google.maps.LatLng(51.9244201, 4.4777325),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    //markers voor palen neer zetten op de map
    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,
            icon: paal
        });
        // click functie
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }

    //markers voor garages neer zetten op de map
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