package whiter.script.test;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import whiter.script.debug.Log;

public class TestService extends Service
{
    @Override
    public IBinder onBind(Intent intent)
    {
        try {
            return onBindTest(intent);
        }catch(Throwable e) {
            Log.w(e);
        }
        return null;
    }

    @Override
    public void onStart(Intent intent, int startId)
    {
        try {
            onStartTest(intent, startId);
        } catch(Throwable e) {
            Log.w(e);
        }
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId)
    {
        try {
            return onStartCommandTest(intent, flags, startId);
        } catch(Throwable e) {
            Log.w(e);
        }
        return 0;
    }

    @Override
    public void onCreate()
    {
        try {
            onCreateTest();
        } catch (Throwable e) {
            Log.w(e);
        }
    }

    @Override
    public boolean onUnbind(Intent intent)
    {
        try {
            return onUnbindTest(intent);
        } catch (Throwable e) {
            Log.w(e);
        }
        return false;
    }

    @Override
    public void onTaskRemoved(Intent rootIntent)
    {
        try {
            onTaskRemovedTest(rootIntent);
        } catch (Throwable e) {
            Log.w(e);
        }
    }

    @Override
    public void onDestroy()
    {
        try {
            onDestroyTest();
        } catch (Throwable e) {
            Log.w(e);
        }
    }
    
    public IBinder onBindTest(Intent p1)
    {
        return null;
    }
    
    public void onStartTest(Intent intent, int startId)
    {
        
    }
    
    public int onStartCommandTest(Intent intent, int flags, int startId)
    {
        return 0;
    }
    
    public void onCreateTest()
    {
        
    }
    
    public boolean onUnbindTest(Intent intent)
    {
        return false;
    }

    public void onTaskRemovedTest(Intent rootIntent)
    {
        
    }
    
    public void onDestroyTest()
    {
        
    }
}
