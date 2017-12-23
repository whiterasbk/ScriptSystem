package whiter.script.service;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import whiter.script.R;
import whiter.script.base.BaseService;
import whiter.script.debug.Log;

public class AppLogService extends BaseService
{
    @Override
    public IBinder onBindTest(Intent p1)
    {
        return new LogServiceIBinder();
    }

    @Override
    public int onStartCommandTest(Intent intent, int flags, int startId)
    {
        return super.onStartCommandTest(intent, flags, startId);
    }

    public class LogServiceIBinder extends Binder
    {
        public void Alert(String title, String message, int icon)
        {
            AlertDialog.Builder builder = new AlertDialog.Builder(AppLogService.this);
            builder.setTitle(title);
            builder.setIcon(icon);
            builder.setMessage(message);
            builder.setNegativeButton("Yes", null);
            builder.create().show();
        }
    }
}
