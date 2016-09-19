package com.miguel.marcelo.arastarimagem;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;


public class MainActivity extends Activity implements View.OnTouchListener{
	
	float dX, dY;
	TextView _view;
	ImageView image2;
	
	//-----------
	/*TextView _view;
	ViewGroup _root;
	private int _xDelta;
	private int _yDelta;*/

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        _view = (TextView)findViewById(R.id.textView1);
        
        ImageView image2 = (ImageView) findViewById(R.id.imageView1);
        image2.setOnTouchListener(this);
     
    }
   
    
   
    public boolean onTouch(View view, MotionEvent event) {

        switch (event.getAction()) {

            case MotionEvent.ACTION_DOWN:

                dX = view.getX() - event.getRawX();
                dY = view.getY() - event.getRawY();
                break;

            case MotionEvent.ACTION_MOVE:

                view.animate()
                        .x(event.getRawX() + dX)
                        .y(event.getRawY() + dY)
                        .setDuration(0)
                        .start();
                break;
            default:
                return false;
        }
        return true;
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
            //action_settings
        }
        return super.onOptionsItemSelected(item);
    }
}
