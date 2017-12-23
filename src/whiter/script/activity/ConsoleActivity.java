package whiter.script.activity;
import android.os.Bundle;
import org.whiter.javascript.objects.Properties;
import org.whiter.javascript.objects.ScriptObject;
import org.whiter.javascript.params.RunParams;
import org.whiter.javascript.runner.ScriptRunner;
import whiter.script.R;
import whiter.script.base.BaseActivity;
import whiter.script.control.ScriptConsole;
import whiter.script.debug.Debug;
import whiter.script.view.ConsoleLayout;
import whiter.script.view.ConsoleView;
import org.whiter.javascript.run.Whiter;

public class ConsoleActivity extends BaseActivity
{
    protected ConsoleLayout layout = null;
    protected ConsoleView view = null;
    protected ScriptRunner runner = null;
    protected RunParams runParams = null;
    
    @Override
    public void onCreateTest(Bundle savedInstanceState)
    {
        super.onCreateTest(savedInstanceState);
        
        setContentView(R.layout.console_layout);
        view = (ConsoleView) findViewById(R.id.console_layout_consoleview);
        loadScriptByConsole();
    }

    protected void loadScriptByConsole()
    { 
        try
        {
            Whiter.setObject(this);
            runParams = new RunParams();
            runParams.addClasses(ScriptObject.class);
            runParams.addProperties("Properties", Properties.class);
            runParams.setConsole(new ScriptConsole(this, getScriptPath()));
            runner = new ScriptRunner(getScriptPath(), runParams);
            runner.load();
            runner.setThreadListener(view);
            runner.executeWithThread();
            view.setScriptRunner(runner);
        }
        catch (Throwable e)
        {
            Debug.e(e);
        }
    }
    
    protected String getScriptPath()
    {
        return getIntent().getStringExtra(SCRIPT_PATH);
    }
    
    protected String getScriptType()
    {
        return getIntent().getStringExtra(SCRIPT_TYPE);
    }
}
