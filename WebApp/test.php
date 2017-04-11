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
</script>


<script type="text/javascript">
    locations.push(['Wijnhaven 107', "51.9171772", "4.4839879", 1])


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