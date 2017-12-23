package whiter.script.view;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;

public class ConsoleLayout extends LinearLayout
{
    private Context ctx = null;
    protected ConsoleView consoleView = new ConsoleView(ctx);
    
    public ConsoleLayout(Context ctx)
    {
        super(ctx);
        this.ctx = ctx;
    }
    
    public ConsoleLayout(Context context, AttributeSet attrs) 
    {
        super(context, attrs);
    }

    public ConsoleLayout(Context context, AttributeSet attrs, int defStyleAttr) 
    {
        super(context, attrs, defStyleAttr);
    }

    public ConsoleLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) 
    {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    public ConsoleView getConsoleView()
    {
        return consoleView;
    }
    
    public void init()
    {
        HorizontalScrollView hs = new HorizontalScrollView(ctx);
        ScrollView s = new ScrollView(ctx);
        addView(hs, new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        hs.addView(s, new HorizontalScrollView.LayoutParams(HorizontalScrollView.LayoutParams.MATCH_PARENT, HorizontalScrollView.LayoutParams.MATCH_PARENT));
        s.addView(consoleView, new ScrollView.LayoutParams(ScrollView.LayoutParams.MATCH_PARENT, ScrollView.LayoutParams.MATCH_PARENT));
    }
}
