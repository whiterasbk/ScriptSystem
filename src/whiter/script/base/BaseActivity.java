package whiter.script.base;
import android.app.Activity;
import android.os.Bundle;
import whiter.script.util.BackupUtil;
import whiter.script.R;
import whiter.script.debug.Debug;
import whiter.script.test.TestActivity;

public class BaseActivity extends TestActivity
{
    public final String SCRIPT_TYPE_FILE = "JAVASCRIPT";
    public final String SCRIPT_TYPE_PACKAGE = "JAVASCRIPT_PACKAGE";
    public final String SCRIPT_PATH = "JAVASCRIPT_PATH";
    public final String SCRIPT_TYPE = "JAVASCRIPT_TYPE";
    
    @Override
    public void onCreateTest(Bundle savedInstanceState)
    {
        super.onCreateTest(savedInstanceState);
    }
}
