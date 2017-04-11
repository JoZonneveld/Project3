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
}
?>

<!DOCTYPE html>
<html>
<body>
<div id="map" style="width:100%;height:400px;"></div>

<script>
    var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
    var icons = {
        parking: {
            icon: iconBase + 'parking_lot_maps.png'
        },
        library: {
            icon: iconBase + 'library_maps.png'
        },
        info: {
            icon: iconBase + 'info-i_maps.png'
        }
    };

    var long1 = "4.4837392";
    var lat1 = "51.9365139";

    var long = "<?php print $long ?>";
    var lat = "<?php print $lat ?>";

    var myCenter = new google.maps.LatLng(long,lat);
    function myMap() {
        var myCenter = new google.maps.LatLng(lat,long);
        var mapCanvas = document.getElementById("map");
        var mapOptions = {center: myCenter, zoom: 16};
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({position:myCenter} );
        marker.setMap(map);
    }



</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJT7Y3hhxrM8kj7bbtWNQt8mmdPDmlxOg&callback=myMap"></script>
</body>
</html>
