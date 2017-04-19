<?php

if(isset($_GET['id'])) {
    $id = $_GET['id'];
}
else{
    $id = null;
}

if(isset($_GET['kind'])) {
    $kind = $_GET['kind'];
}
else{
    $kind = null;
}

if($kind == "paal")
{
    $one = "img/paal1.png";
    $two = "img/park.png";
    $db->getSinglePaal($id);
    $db->sql = mysqli_query($db->conn, "SELECT Adres, Longitude, Latitude FROM paal WHERE id = '$id'");

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

    $sql = mysqli_query($db->conn, "SELECT id, `Longitude`, `Latitude` FROM `paal` WHERE id = '$id' ");
    if ($sql->num_rows > 0) {
        while ($row = $sql->fetch_assoc()) {
            $longDou =  $row['Longitude'];
            $latDou =  $row['Latitude'];
        }
    }
    $Maxlong = $longDou + 0.005;
    $Minlong = $longDou - 0.005;

    $Maxlat = $latDou + 0.005;
    $Minlat = $latDou - 0.005;


    $sql = mysqli_query($db->conn, "SELECT id, AreaDesc ,`Longitude`, `Latitude`
                                                              FROM `park`
                                                              WHERE Longitude BETWEEN '$Minlong' AND '$Maxlong'
                                                              AND  Latitude BETWEEN  '$Minlat' AND '$Maxlat'");
    if ($sql->num_rows > 0)
    {
        $i = 0;
        while($row = $sql->fetch_assoc())
        {
            $adres1[$i] = $row['AreaDesc'];
            $long1[$i] =  $row['Longitude'];
            $lat1[$i] =  $row['Latitude'];
            $i++;
        }
    }
}
else if($kind == "Park") {
    $one = "img/park.png";
    $two = "img/paal1.png";

    $db->getSinglePark($id);

    $db->sql = mysqli_query($db->conn, "SELECT AreaDesc, Longitude, Latitude FROM park WHERE id = '$id'");

    if ($db->sql->num_rows > 0)
    {
        $i = 0;
        while($row = $db->sql->fetch_assoc())
        {
            $adres[$i] = $row['AreaDesc'];
            $long[$i] = $row['Longitude'];
            $lat[$i] = $row['Latitude'];
            $i++;
        }
    }

    $sql = mysqli_query($db->conn, "SELECT id, `Longitude`, `Latitude` FROM `park` WHERE id = '$id' ");
    if ($sql->num_rows > 0) {
        while ($row = $sql->fetch_assoc()) {
            $longDou =  $row['Longitude'];
            $latDou =  $row['Latitude'];
        }
    }
    $Maxlong = $longDou + 0.005;
    $Minlong = $longDou - 0.005;

    $Maxlat = $latDou + 0.005;
    $Minlat = $latDou - 0.005;


    $sql = mysqli_query($db->conn, "SELECT id, Adres ,`Longitude`, `Latitude`
                                                              FROM `paal`
                                                              WHERE Longitude BETWEEN '$Minlong' AND '$Maxlong'
                                                              AND  Latitude BETWEEN  '$Minlat' AND '$Maxlat'");
    if ($sql->num_rows > 0)
    {
        $i = 0;
        while($row = $sql->fetch_assoc())
        {
            $adres1[$i] = $row['Adres'];
            $long1[$i] =  $row['Longitude'];
            $lat1[$i] =  $row['Latitude'];
            $i++;
        }
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
<div id="map" style="width:100vw;height:95vh;"></div>

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

    var one = '<?= $one ?>';
    var two = '<?= $two ?>';


    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 16,
        center: new google.maps.LatLng('<?= $lat[0] ?>', '<?= $long[0] ?>'),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i][1], locations[i][2]),
            map: map,
            icon: one
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
            icon: two
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infowindow.setContent(locations1[i][0]);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
</script>

