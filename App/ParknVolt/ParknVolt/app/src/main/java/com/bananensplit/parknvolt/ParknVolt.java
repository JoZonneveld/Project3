package com.bananensplit.parknvolt;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class ParknVolt extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {


    //Standaard webpagina
    String page = "http://jprojects.eu/project3/maps/all.php";


    //Standaard Android Studio methods
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_parkn_volt);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        toggle.syncState();

        NavigationView navigationView = (NavigationView) findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        //Methode om een webpagina te laden
        getPage(page);
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.parkn_volt, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        return super.onOptionsItemSelected(item);
    }

    public void getPage(String page) {

        //Maakt een instantie aan van WebView om webpagina's te tonen
        WebView webView = new WebView(this);

        //Ophalen van de bijhorende webview widget
        webView = (WebView) findViewById(R.id.webview1);

        //Ophalen van de standaard instellingen
        WebSettings webSettings = webView.getSettings();

        //Geeft de webview toestemming om JavaScript te laden
        webSettings.setJavaScriptEnabled(true);

        //Laadt een URL
        webView.loadUrl(page);
    }

    //Handelt de filters van de map en navigatie van het scherm
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        int id = item.getItemId();

        if (id == R.id.parking) {
            getPage("http://jprojects.eu/project3/maps/park.php");
        } else if (id == R.id.charging_points) {
            getPage("http://jprojects.eu/project3/maps/paal.php");
        } else if (id == R.id.settings) {
            getPage("http://jprojects.eu/project3/maps/all.php");
        } else if (id == R.id.graph){
            Intent i = new Intent(this, graph.class);
            startActivity(i);
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
}
