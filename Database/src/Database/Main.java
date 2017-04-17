package Database;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

public class Main {

    public static void printStr(String output)
    {
        System.out.println(output);
    }

    public static void printInt(int output)
    {
        System.out.println(output);
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        String driverName = "org.gjt.mm.mysql.Driver";
        Class.forName(driverName);

        String serverName = "localhost";
        String mydatabase = "project3";
        String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

        String username = "root";
        String password = "";
        Connection connection = DriverManager.getConnection(url, username, password);

        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery( "SELECT id, Adres, Longitude, Latitude FROM paal ORDER BY Adres;" );

        while ( rs.next() ) {
            String Longitude = rs.getString("Longitude");
            String Latitude = rs.getString("Latitude");
            //System.out.println(Longitude + " - " + Latitude);
            String[] parts = Longitude.split("[.]");
            printStr(parts[1]);
            int foo = 0;
            try {
                foo = Integer.parseInt(parts[0]);
            } catch (NumberFormatException e) {
                //No problem this time, but still it is good practice to care about exceptions.
                //Never trust user input :)
                //Do something! Anything to handle the exception.
            }

            //printInt(foo);
        }
    }
}
