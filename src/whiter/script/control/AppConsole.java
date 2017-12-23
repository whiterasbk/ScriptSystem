package whiter.script.control;

import org.mozilla.javascript.annotations.JSFunction;
import org.whiter.javascript.objects.NativeClass;
import android.content.Context;
import android.widget.Toast;
import android.app.Service;
import android.app.Activity;
import org.whiter.javascript.runner.ScriptRunner;

public class AppConsole extends NativeClass
{
    private Activity ctx;
    private String scriptPath;

    public AppConsole(Activity ctx, String scriptPath)
    {
        this.ctx = ctx;
        this.scriptPath = scriptPath;
    }
    
    @JSFunction
    public void print(final Object msg)
    {
        ctx.runOnUiThread(new Runnable(){

                @Override
                public void run()
                {
                    Toast.makeText(ctx, msg.toString(), Toast.LENGTH_LONG).show();
                }
                
        });
    }
}
