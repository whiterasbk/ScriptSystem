package whiter.script.control;
import android.app.Activity;
import android.widget.Toast;
import java.io.File;
import org.mozilla.javascript.annotations.JSFunction;
import org.whiter.javascript.objects.NativeClass;
import android.widget.EditText;
import whiter.script.view.ConsoleView;
import whiter.script.R;
import org.mozilla.javascript.ImporterTopLevel;

public class ScriptConsole extends ImporterTopLevel
{
    private Activity ctx;
    private String scriptPath;
    private String scriptName;
    private ConsoleView consoleView;
    
    public ScriptConsole(Activity ctx, String scriptPath)
    {
        this.ctx = ctx;
        this.scriptPath = scriptPath;
        scriptName = new File(scriptPath).getName();
        consoleView = (ConsoleView) ctx.findViewById(R.id.console_layout_consoleview);
    }

    @JSFunction
    public Activity getContext()
    {
        return ctx;
    }

    @JSFunction
    public void print(final Object msg)
    {
        ctx.runOnUiThread(new Runnable(){

                @Override
                public void run()
                {
                    Toast.makeText(ctx, R.string.script_console_print_head_string + msg.toString(), Toast.LENGTH_LONG).show();
                    //consoleView.addLog(scriptName, msg.toString());
                }

            });
    }
    
    @JSFunction
    public void clientMessage(final Object msg)
    {
        ctx.runOnUiThread(new Runnable(){

                @Override
                public void run()
                {
                    //Toast.makeText(ctx, "Script:" + msg.toString(), Toast.LENGTH_LONG).show();
                    consoleView.addLog(scriptName, msg.toString());
                }

            });
    }
    
    
}
