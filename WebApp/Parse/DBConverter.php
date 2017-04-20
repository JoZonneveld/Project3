<?php

include '../include/class.php';

$db = new DB();


$db->sql = mysqli_query($db->conn, "SELECT id, Longitude, Latitude FROM paal");

if ($db->sql->num_rows > 0)
{
    $max_long = 0;
    $max_lat = 0;
    while($row = $db->sql->fetch_assoc()) {
        $id = $row['id'];
        $long = $row['Longitude'];
        $lat = $row['Latitude'];

        //change Longitude
        $test1 = explode(".", $long); //Split de Longtitude op een .
        $output = "";
        for($i = 0; $i < count($test1); $i++)
        {
            //Plak de uit elkaar gehaalde string aan elkaar
            $output = $output . $test1[$i];
        }

        $output1 = "";
        for($i = 0; $i < strlen($output); $i++)
        {
            if($i == 1)
            {
                //check of we op punt zijn aangekomen waar een . moet worden neergezet
                $output1 = $output1 . "." . $output[$i];
            }
            else
            {
                //Als er geen punt gezet hoeft te worden
                $output1 = $output1 . $output[$i];
            }
        }

        //change Lat zelfde proces als de change Longtitude
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

        //Nieuwe correcte gegevens in de database aanpassen
        $sql1 = mysqli_query($db->conn, "UPDATE paal SET LongInt = '$output1', latInt = '$output2' WHERE id = '$id'");
    }
}



