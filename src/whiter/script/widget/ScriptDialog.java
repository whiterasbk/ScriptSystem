package whiter.script.widget;
import android.app.AlertDialog;
import android.content.Context;

public class ScriptDialog extends AlertDialog
{
    private Context ctx = null;

    public ScriptDialog(Context ctx)
    {
        super(ctx);
        this.ctx = ctx;
    }
    
    
}
