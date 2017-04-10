<?php
	class DB 
	{
		var $conn;
		var $sql;

		function __construct()
		{
			$this->conn = mysqli_connect("localhost","root","","project3");
			if (!$this->conn) {
    			die("Connection failed: " . mysqli_connect_error());
			}
		}
		// Insert Data

		// get Data 
        function getPaal(){
            $this->sql = mysqli_query($this->conn, "SELECT * FROM paal");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {
                    ?>
                        <a href="?page=SelectPlace&id=<?php print $row["id"]?>&kind=paal"><?php print $row["Adres"]?></a><br>
                    <?php
                }
            }
        }

        function getSinglePaal($id)
        {
            $this->sql = mysqli_query($this->conn, "SELECT * FROM paal WHERE id = '$id'");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {

                    echo $row["Adres"]."<br>";
                }
            }
        }

        function getLong($id)
        {
            $long = null;
            $this->sql = mysqli_query($this->conn, "SELECT * FROM paal WHERE id = '$id'");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {
                    $long = $row["Longitude"];
                }
            }
            return $long;
        }
        function getLat($id)
        {
            $lat = null;
            $this->sql = mysqli_query($this->conn, "SELECT * FROM paal WHERE id = '$id'");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {

                    $lat =  $row["Latitude"];
                }
            }

            return $lat;
        }

        function getPark(){
            $this->sql = mysqli_query($this->conn, "SELECT * FROM park");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {
                    ?>
                    <a href="?page=selectedPark&id=<?php print $row["id"]?>"><?php print $row["AreaDesc"]?></a><br>
                    <?php
                }
            }
        }

        function getSinglePark($id)
        {
            $this->sql = mysqli_query($this->conn, "SELECT * FROM park WHERE id = '$id'");

            if ($this->sql->num_rows > 0)
            {
                while($row = $this->sql->fetch_assoc()) {
                    echo $row["AreaDesc"]."<br>";
                }
            }
        }
	}
?>