<?php
include '../include/class.php';
$db = new DB();

$db->sql = mysqli_query($db->conn, "SELECT id, Longitude, Latitude FROM park");

if ($db->sql->num_rows > 0)
{
    while($row = $db->sql->fetch_assoc())
    {
        $id = $row['id'];
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

//        $longExplode = explode(".", $long);
//        $latExplode = explode(".", $lat);
//
//        $long =  $longExplode[0] . "," . $longExplode[1];
//        $lat =  $latExplode[0] . "," . $latExplode[1];
        print $long . " - " . $lat . "<br>";
        $sql1 = mysqli_query($db->conn, "UPDATE park SET LongDou = '$long', LatDou = '$lat' WHERE id = '$id'");
    }
}

