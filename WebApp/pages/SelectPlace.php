<!DOCTYPE html>
<html>
<body>
<button class="btn btn-info" onclick="window.history.back();">Go Back</button>
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
    $db->getSinglePaal($id);
    $long = $db->getLong($id);
    $lat = $db->getLat($id);
}
else if($kind == "Park")
{
    $db->getSinglePark($id);
    $long = $db->getLongPark($id);
    $lat = $db->getLatPark($id);

    $testLong = str_replace(".", "", $long);
    $testLat = str_replace(".", "", $lat);

    ?>

    <script>
        var longtest = <?php print $testLong ?>;
        var lattest = <?php print $testLat ?>;
        document.write(longtest + 100000000);
    </script>

    <?php

    $minLong    = 0; // - 100.000.000
    $maxLong    = 0; // + 100.000.000

    $minLat     = 0; // - 40.000.000.000
    $maxLat     = 0; // + 40.000.000.000
}
?>


<div id="map" style="width:100%;height:500px;"></div>


<script>

    var long = "<?php print $long ?>";
    var lat = "<?php print $lat ?>";

    var myCenter = new google.maps.LatLng(long,lat);
    function myMap() {
        var myCenter = new google.maps.LatLng(lat, long);
        var mapCanvas = document.getElementById("map");
        var mapOptions = {center: myCenter, zoom: 13};
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({position: myCenter});
        marker.setMap(map);
        infoWindow = new google.maps.InfoWindow;
    }



</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJT7Y3hhxrM8kj7bbtWNQt8mmdPDmlxOg&callback=myMap"></script>
</body>
</html>

