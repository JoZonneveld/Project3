package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.sqlite.JDBC");
            c = DriverManager.getConnection("jdbc:sqlite:Official.db");
            c.setAutoCommit(false);
            System.out.println("Opened database successfully");

            stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "SELECT id, Adres, Longitude, Latitude FROM paal ORDER BY Adres;" );

            List<String[]> test = new ArrayList<>();


            while ( rs.next() ) {

                String Adres = rs.getString("Adres");
                String Longitude = rs.getString("Longitude");
                String Latitude = rs.getString("Latitude");
                // schrijf een code die Adres, Longtitude en latitude toevoegd aan de array.
                test.add(new String[] {Adres, Longitude, Latitude});

                System.out.println( Adres + " - " + Longitude + " - " + Latitude);
            }
            System.out.println(test.get(0)[2]);

            rs.close();
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
            System.exit(0);
        }
        System.out.println("Operation done successfully");
    }
}
