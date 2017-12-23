package whiter.script.debug;
import android.app.*;
import android.widget.Toast;
import whiter.script.R;
import android.content.ComponentName;
import java.io.PrintStream;

public class Log 
{
    public static String EXTRA_DIALOG_TITLE = "DialogTitle";
    public static String EXTRA_DIALOG_MESSAGE = "DialogMessage";
    public static String EXTRA_DIALOG_ICON = "DialogIcon";
    private static Activity activity;
    private static Service service;
    private static int ctx = 1;
    private static int CTX_SERVICE = 0;
    private static int CTX_ACTIVITY = 1;

    public static void setService(Service context)
    {
        service = context;
        ctx = CTX_SERVICE;
    }

    public static void setActivity(Activity context)
    {
        activity = context;
        ctx = CTX_ACTIVITY;
    }

    public static void i(Object obj)
    {
        AlertDialog("Information", obj.toString(), R.drawable.top_surprise_thumb);
    }

    public static void n(Object obj)
    {
        Notify("Notify", obj.toString(), "New Log-n", R.drawable.sideco_doubt_thumb);
    }

    public static void dn(Object obj)
    {
        Notify("Notify-Done", obj.toString(), "New Log-dn", R.drawable.loading_return);
    }

    public static void e(Object obj)
    {
        AlertDialog("Exception/Error", obj.toString(), R.drawable.sign_fail_cd08fc);
    }

    public static void d(Object obj)
    {
        Toast("Done", obj.toString());
    }

    public static void w(Object obj)
    {
        AlertDialog("Wornning!", obj.toString(), R.drawable.sign_fail_cd08fc);
    }

    public static void Toast(final String title, final Object message)
    {
        Toast(title, message, Toast.LENGTH_LONG);
    }

    public static void Toast(final String title, final Object message, final int time)
    {
        try
        {
            if (ctx == CTX_ACTIVITY)
            {
                activity.runOnUiThread(new Runnable(){

                        @Override
                        public void run()
                        {
                            Toast.makeText(activity, "<" + title + "> " + message, time).show();
                        }

                    });
            }
            else if (ctx == CTX_SERVICE)
            {
                Toast.makeText(service, "<" + title + "> " + message, time).show();
            }
        }
        catch (Throwable e)
        {
            Log.mE(e);
        }
    }

    public static void AlertDialog(final String title, final Object message, final int icon)
    {
        try
        {
            String currentThreadName = Thread.currentThread().getName();
            String componentName = activity.getClass().getName();
            String errorMessage = "";
            if (message instanceof Throwable)
                errorMessage = "<ErrorMessage:>" + ((Throwable) message).toString() + "\n";

            final StringBuilder sb = new StringBuilder();
            sb.append("<Message:>\n");
            sb.append("<From:>" + componentName + "\n");
            sb.append("<Current:>" + currentThreadName + "\n");
            sb.append(errorMessage);
            sb.append("<Content:>" + message.toString());
            
            if (ctx == CTX_ACTIVITY)
            {
                activity.runOnUiThread(new Runnable(){

                        @Override
                        public void run()
                        {
                            
                            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                            builder.setTitle(title);
                            builder.setIcon(icon);
                            builder.setMessage(sb.toString());
                            builder.setNegativeButton("Yes", null);
                            builder.create().show();
                        }

                    });
            }
            else if (ctx == CTX_SERVICE)
            {
                AlertDialog.Builder builder = new AlertDialog.Builder(service);
                builder.setTitle(title);
                builder.setIcon(icon);
                builder.setMessage(sb.toString());
                builder.setNegativeButton("Yes", null);
                builder.create().show();
            }
        }
        catch (Throwable e)
        {
            Log.mE(e);
        }
    }

    public static int NotifyDialog(final String title, final String message, final int icon)
    {
        try
        {
            final int round = (int) Math.round(Math.random() * 100);
            if (ctx == CTX_ACTIVITY)
            {
                activity.runOnUiThread(new Runnable(){

                        @Override
                        public void run()
                        {
                            AlertDialog(title, message, icon);
                        }

                    });
            }
            else if (ctx == CTX_SERVICE)
            {
                AlertDialog(title, message, icon);
            }

            return round;
        }
        catch (Throwable e)
        {
            Log.mE(e);
        }
        return 0;
    }

    public static int Notify(final String title, final String message, final String tick, final int icon)
    {
        try
        {
            final int round = (int) Math.round(Math.random() * 100);
            if (ctx == CTX_ACTIVITY)
            {
                activity.runOnUiThread(new Runnable(){

                        @Override
                        public void run()
                        {
                            NotificationManager manager = (NotificationManager) activity.getSystemService(activity.NOTIFICATION_SERVICE);
                            Notification.Builder builder = new Notification.Builder(activity);
                            builder.setTicker(tick);
                            builder.setContentText(message);
                            builder.setContentTitle(title);
                            builder.setSmallIcon(icon);
                            builder.setAutoCancel(true);
                            builder.setWhen(System.currentTimeMillis());

                            manager.notify(round, builder.build());
                        }

                    });
            }
            else if (ctx == CTX_SERVICE)
            {
                NotificationManager manager = (NotificationManager) service.getSystemService(service.NOTIFICATION_SERVICE);
                Notification.Builder builder = new Notification.Builder(service);
                builder.setTicker(tick);
                builder.setContentText(message);
                builder.setContentTitle(title);
                builder.setSmallIcon(icon);
                builder.setAutoCancel(true);
                builder.setWhen(System.currentTimeMillis());

                manager.notify(round, builder.build());
            }
            return round;
        }
        catch (Throwable e)
        {
            Log.mE(e);
        }
        return 0;
    }

    private static void mE(Throwable e)
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("Inner Exception");
        builder.setIcon(R.drawable.sign_fail_cd08fc);
        builder.setMessage(e.toString());
        builder.setNegativeButton("Yes", null);
        builder.create().show();
    }

}
