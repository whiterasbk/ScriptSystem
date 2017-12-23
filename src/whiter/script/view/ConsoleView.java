package whiter.script.view;
import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.whiter.javascript.interfaces.Runner;
import org.whiter.javascript.runner.ScriptRunner;
import whiter.script.debug.Debug;

public class ConsoleView extends EditText implements ScriptRunner.OnScriptThreadListener
{
    protected Context context = null;
    protected List<String> textBuffer = new ArrayList<String>();
    protected int maxLogLines = 200;
    protected int maxLogColmus = 100;
    protected ScriptRunner runner = null;
    
    public ConsoleView(Context context)
    {
        super(context);
        this.context = context;
        
    }

    public ConsoleView(Context context, AttributeSet attrs) 
    {
        super(context, attrs);
        this.context = context;
    }

    public ConsoleView(Context context, AttributeSet attrs, int defStyleAttr) 
    {
        super(context, attrs, defStyleAttr);
        this.context = context;
    }

    public ConsoleView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) 
    {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.context = context;
    }

    public void setScriptRunner(ScriptRunner runner)
    {
        this.runner = runner;
    }

    public ScriptRunner getScriptRunner()
    {
        return runner;
    }
    
    public void addLog(String head, String log)
    {
        addText("<" + head + "> : " + log);
    }
    
    public void addText(String str)
    {
        addTextToBuffer(str);
        StringBuffer buffer = new StringBuffer();
        Iterator<String> iterator = textBuffer.iterator();
        while(iterator.hasNext())
        {
            buffer.append(iterator.next() + "\n");
        }
        Editable text = getText();
        //if (text.delete(""))
        getText().append(str + "\n");
        
        //text.append(buffer.toString());
    }

    protected void addTextToBuffer(String str)
    {
        textBuffer.add(str);
        if (textBuffer.size() > maxLogLines)
        {
            textBuffer.remove(0);
        }
        if (str.length() > maxLogColmus)
        {
            addText(str.substring(0, maxLogColmus));
        }
        textBuffer.add(str);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        if (keyCode == KeyEvent.KEYCODE_ENTER)
        {
            try
            {
                runner.callScriptMethod("onConsoleLine", event.getCharacters());
            }
            catch(Exception e)
            {
                Debug.e("KeyException:" + e.toString());
            }
        }
        return super.onKeyDown(keyCode, event);
    }
    
    @Override
    public void onRun(org.mozilla.javascript.Context current, Runner.ScriptState state, ScriptRunner runner)
    {
        this.runner = runner;
    }

    @Override
    public void onException(Throwable e)
    {
        Debug.e(e);
    }
    
    public void setMaxLogLines(int maxLogLines)
    {
        this.maxLogLines = maxLogLines;
    }

    public int getMaxLogLines()
    {
        return maxLogLines;
    }

    public void setMaxLogColmus(int maxLogColmus)
    {
        this.maxLogColmus = maxLogColmus;
    }

    public int getMaxLogColmus()
    {
        return maxLogColmus;
    }
}
