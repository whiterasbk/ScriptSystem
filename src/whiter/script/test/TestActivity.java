package whiter.script.test;
import android.app.Activity;
import android.os.Bundle;
import whiter.script.debug.Debug;
import whiter.script.debug.Log;

public class TestActivity extends Activity
{
    public void onDestroyTest() {}
    public void onCreateTest(Bundle savedInstanceState) {}
    public void onStartTest() {}
    public void onStopTest() {}
    public void onRestartTest() {}
    public void onResumeTest() {}
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
            Log.setActivity(this);
            onCreateTest(savedInstanceState);
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }

    @Override
    public void onStart() {
        try {
            super.onStart();
            onStartTest();
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }

    @Override
    public void onStop() {
        try {
            super.onStop();
            onStopTest();
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }

    @Override
    public void onRestart() {
        try {
            super.onRestart();
            onRestartTest();
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }

    @Override
    public void onResume() {
        try {
            super.onResume();
            onRestartTest();
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }

    @Override
    public void onDestroy() {
        try {
            super.onDestroy();
            onDestroyTest();
        } catch(Throwable ve) {
            Debug.e(ve);
        }
    }
}
