<?php
/**
 * Created by PhpStorm.
 * User: Joost
 * Date: 8-4-2017
 * Time: 20:46
 */
include 'include/class.php';

$db = new DB();


$db->sql = mysqli_query($db->conn, "SELECT id, Longitude, Latitude FROM paal");

if ($db->sql->num_rows > 0)
{
    while($row = $db->sql->fetch_assoc()) {
        $id = $row['id'];
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

        $test1 = explode(".", $long);
        //change Longitude
        $output = "";
        for($i = 0; $i < count($test1); $i++)
        {
            $output = $output . $test1[$i];
        }

        $output1 = "";
        for($i = 0; $i < strlen($output); $i++)
        {
            if($i == 1)
            {
                $output1 = $output1 . "." . $output[$i];
            }
            else
            {
                $output1 = $output1 . $output[$i];
            }
        }
        print $output1;
        print " - ";
        //change Lat
        $test1 = explode(".", $lat);
        $output = "";
        for($i = 0; $i < count($test1); $i++)
        {
            $output = $output . $test1[$i];
        }

        $output2 = "";
        for($i = 0; $i < strlen($output); $i++)
        {
            if($i == 2)
            {
                $output2 = $output2 . "." . $output[$i];
            }
            else
            {
                $output2 = $output2 . $output[$i];
            }
        }
        print $output2;
        print "<br>";
        $sql1 = mysqli_query($db->conn, "UPDATE paal SET Longitude = '$output1', Latitude = '$output2' WHERE id = '$id'");
    }
}



