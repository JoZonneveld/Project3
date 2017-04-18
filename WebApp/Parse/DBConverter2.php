<?php
include '../include/class.php';

$db = new DB();

$db->sql = mysqli_query($db->conn, "SELECT id, Longitude, Latitude FROM paal");

if ($db->sql->num_rows > 0) {
    $maxLong = 0;
    $maxLat = 0;
    while ($row = $db->sql->fetch_assoc())
    {
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

        if($maxLong < strlen($long)){
            $maxLong = strlen($long);
        }
        if($maxLat < strlen($lat))
        {
            $maxLat = strlen($lat);
        }
    }
}

$db->sql = mysqli_query($db->conn, "SELECT id, Adres, Longitude, Latitude FROM paal");

if ($db->sql->num_rows > 0)
{
    while($row = $db->sql->fetch_assoc())
    {
        $id = $row['id'];
        $adres = $row['Adres'];
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

        $loopLong = $maxLong - strlen($long);

        $loopLat = $maxLat - strlen($lat);

        for($i = 0; $i < $loopLong; $i++)
        {
            $long = $long . "0";
        }

        for($i = 0; $i < $loopLat; $i++)
        {
            $lat = $lat . "0";
        }
        print $long . " - " . $lat ."<br>";

        //$sql1 = mysqli_query($db->conn, "UPDATE paal SET Longitude = '$long', Latitude = '$lat' WHERE id = '$id'");
    }
}

$db->sql = mysqli_query($db->conn, "SELECT id, Longitude, Latitude FROM park");

if ($db->sql->num_rows > 0) {
    while ($row = $db->sql->fetch_assoc())
    {
        $id = $row['id'];
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

        $loopLong = $maxLong - strlen($long);

        $loopLat = $maxLat - strlen($lat);

        for($i = 0; $i < $loopLong; $i++)
        {
            $long = $long . "0";
        }

        for($i = 0; $i < $loopLat; $i++)
        {
            $lat = $lat . "0";
        }
        print $long . " - " . $lat ."<br>";

        //$sql1 = mysqli_query($db->conn, "UPDATE park SET Longitude = '$long', Latitude = '$lat' WHERE id = '$id'");
    }
}