<?php
include '../include/class.php';

$db = new DB(); // geeft connectie met de db

$db->sql = mysqli_query($db->conn, "SELECT * FROM paal ORDER BY Adres");
//haal alle adressen op met hun ID (PK)
if ($db->sql->num_rows > 0) {

    $a = 0; // var voor Array counter

    while ($row = $db->sql->fetch_assoc())
    {
        $id = $row['id']; // ID in een var zetten om makkelijker te gebruiken
            for ($i = 0; $i < count($adres); $i++) //Loop op inhoud Array $adres
            {
                if($adres[$i] == $row['Adres'])// als het adress een duplicate is staat hij in de array en zal deze verwijderd worden
                {
                    $sql2 = mysqli_query($db->conn, "DELETE FROM paal WHERE id = '$id'"); // Delete duplicate in de db
                }
            }


        $adres[$a] = $row['Adres']; // voeg adres uit db aan de array toe

        $a++; //plus 1 voor de array counter
    }
}