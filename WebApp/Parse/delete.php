<?php
include '../include/class.php';
$db = new DB();

$db->sql = mysqli_query($db->conn, "SELECT * FROM paal ORDER BY Adres");

if ($db->sql->num_rows > 0) {
    $a = 0;
    while ($row = $db->sql->fetch_assoc())
    {
        $id = $row['id'];
            for ($i = 0; $i < count($adres); $i++)
            {
                if($adres[$i] == $row['Adres'])
                {
                    print"<b>duplicate</b>";
                    $sql2 = mysqli_query($db->conn, "DELETE FROM paal WHERE id = '$id'");
                }
            }


        $adres[$a] = $row['Adres'];

        print $adres[$a]."<br>";
        $a++;
    }
}