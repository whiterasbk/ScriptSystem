package whiter.script.activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import java.util.Timer;
import java.util.TimerTask;
import whiter.script.R;
import whiter.script.base.BaseActivity;
import whiter.script.debug.Debug;

public class LogoActivity extends BaseActivity
{
    public static String LOGO_ACTIVITY_SING = "whiter:///whiter/script/activity/LogoActivity/LOGO_ACTIVITY_SING";
    private ImageView icon = null;
    private int duration = 5 * 1000;
    private Timer timer = null; 
    private TimerTask task = null; 

    @Override
    public void onCreateTest(Bundle savedInstanceState)
    {
        //requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.logo);
        
        timer = new Timer();
        task = new TimerTask(){
            @Override
            public void run()
            {
                try
                {
                    Intent intent = new Intent();
                    intent.setClass(LogoActivity.this, MainActivity.class);
                    startActivity(intent);
                    LogoActivity.this.finish();
                }
                catch (Throwable e)
                {
                    Debug.e(e);
                }
            }
        };
        timer.schedule(task, duration);
        
        icon = (ImageView) findViewById(R.id.logo_icon);
        icon.startAnimation(AnimationUtils.loadAnimation(this, R.anim.logo_anim));
    }
}
