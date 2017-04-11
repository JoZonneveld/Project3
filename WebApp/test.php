<script>
    var objConnection = new ActiveXObject("adodb.connection");
    var strConn = "driver={sql server};server=localhost;database=project3;uid=root;password=";
    objConnection.Open(strConn);
    var rs = new ActiveXObject("ADODB.Recordset");
    var strQuery = "SELECT * FROM  paal";
    rs.Open(strQuery, objConnection);
    rs.MoveFirst();
    while (!rs.EOF)
    {
        document.write(rs.fields("Adres"));
        rs.movenext();
    }
</script>