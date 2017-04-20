package com.bananensplit.parknvolt;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;


public class graph extends AppCompatActivity implements View.OnClickListener {

    Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_basic);

        button = (Button) findViewById(R.id.button);
        button.setOnClickListener(this);

        //Maakt een instantie aan van WebView om webpagina's te tonen
        WebView webView = new WebView(this);

        //Ophalen van de bijhorende webview widget
        webView = (WebView) findViewById(R.id.webviewgraph);

        //Ophalen van de standaard instellingen
        WebSettings webSettings = webView.getSettings();

        //Geeft de webview toestemming om JavaScript te laden
        webSettings.setJavaScriptEnabled(true);

        //Laadt een URL
        webView.loadUrl("http://jprojects.eu/project3/maps/plot.php");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button: //Verandert het huidige scherm naar het hoofdscherm
                Intent i = new Intent(graph.this, ParknVolt.class);
                startActivity(i);
                break;
        }
    }
}
