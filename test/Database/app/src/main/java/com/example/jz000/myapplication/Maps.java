package com.example.jz000.myapplication;

import android.database.sqlite.SQLiteDatabase;
import android.support.v4.app.FragmentActivity;
import android.os.Bundle;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Maps extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maps);
        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        mapFragment.getMapAsync(this);
    }


    /**
     * Manipulates the map once available.
     * This callback is triggered when the map is ready to be used.
     * This is where we can add markers or lines, add listeners or move the camera. In this case,
     * we just add a marker near Sydney, Australia.
     * If Google Play services is not installed on the device, the user will be prompted to install
     * it inside the SupportMapFragment. This method will only be triggered once the user has
     * installed Google Play services and returned to the app.
     */
    @Override
    public void onMapReady(GoogleMap googleMap) {


        mMap = googleMap;

        LatLng Rotterdam = new LatLng( 51.9244201, 4.4777325);

        Connection c = null;
        Statement stmt = null;

        SQLiteDatabase myDB = this.openOrCreateDatabase("DatabaseName", MODE_PRIVATE, null);
        //        try {
//            Class.forName("org.sqlite.JDBC");
//            c = DriverManager.getConnection("jdbc:sqlite:Official.db");
//            c.setAutoCommit(false);
//
//            stmt = c.createStatement();
//            ResultSet rs = stmt.executeQuery( "SELECT id, Adres, Longitude, Latitude FROM paal ORDER BY Adres;" );
//
//            List<String[]> test = new ArrayList<>();
//
//
//            while ( rs.next() ) {
//
//                String Adres = rs.getString("Adres");
//                double Longitude = rs.getDouble("Longitude");
//                double Latitude = rs.getDouble("Latitude");
//                LatLng marker = new LatLng(Latitude, Longitude);
//                mMap.addMarker(new MarkerOptions().position(marker).title("Marker in Rotterdam"));
//            }
//
//            rs.close();
//            stmt.close();
//            c.close();
//        } catch ( Exception e ) {
//            mMap.addMarker(new MarkerOptions().position(Rotterdam).title("Marker in Rotterdam"));
//        }

        // Add a marker in Sydney and move the camera


        mMap.moveCamera(CameraUpdateFactory.newLatLng(Rotterdam));
    }
}
