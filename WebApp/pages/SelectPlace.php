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
}
?>



<!DOCTYPE html>
<html>
<body>
<div id="map" style="width:100%;height:400px;"></div>

<script>
    var long = "<?php print $long ?>";
    var lat = "<?php print $lat ?>";

    var myCenter = new google.maps.LatLng(long,lat);
    function myMap() {
        var myCenter = new google.maps.LatLng(lat,long);
        var mapCanvas = document.getElementById("map");
        var mapOptions = {center: myCenter, zoom: 16};
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({position:myCenter});
        marker.setMap(map);
    }

</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJT7Y3hhxrM8kj7bbtWNQt8mmdPDmlxOg&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

</body>
</html>

