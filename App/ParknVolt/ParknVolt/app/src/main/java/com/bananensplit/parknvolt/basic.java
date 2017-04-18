package com.bananensplit.parknvolt;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;


public class basic extends AppCompatActivity implements View.OnClickListener {

    Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_basic);

        button = (Button) findViewById(R.id.button);
        button.setOnClickListener(this);

        WebView webView = new WebView(this);
        webView = (WebView) findViewById(R.id.webviewgraph);
        WebSettings webSettings = webView.getSettings();
        webSettings.setJavaScriptEnabled(true);

        webView.loadUrl("http://jprojects.eu/project3/maps/plot.php");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button:
                Intent i = new Intent(basic.this, ParknVolt.class);
                startActivity(i);
                break;
        }
    }
}
