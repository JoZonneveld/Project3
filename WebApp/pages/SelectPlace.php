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

    $db->sql = mysqli_query($db->conn, "SELECT `Adres` FROM `paal` WHERE `Longitude` < 4.5194768 AND `Longitude` > 4.4994768 AND `Latitude` < 51.9009409 AND `Latitude` < 51.8929409");
}
?>


<div id="map" style="width:100vw;height:100vh;"></div>


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

