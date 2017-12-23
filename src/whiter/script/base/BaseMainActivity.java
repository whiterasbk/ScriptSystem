package whiter.script.base;
import android.app.ActionBar;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.whiter.javascript.objects.Properties;
import org.whiter.javascript.objects.ScriptObject;
import org.whiter.javascript.params.RunParams;
import org.whiter.javascript.runner.ScriptRunner;
import whiter.script.R;
import whiter.script.control.AppConsole;
import whiter.script.debug.Debug;
import whiter.script.service.AppLogService;
import whiter.script.util.ResourceUtil;
import whiter.script.view.SlidingMenu;

public class BaseMainActivity extends BaseActivity
{
    public AppLogService.LogServiceIBinder logBinder = null;
    public static WeakReference<Activity> currentActivity = null;
    protected final String ACTION_EDIT_SCRIPT = "com.googlecode.android_scripting.action.EDIT_SCRIPT";
    protected final String EXTRA_SCRIPT_CONTENT = "com.googlecode.android_scripting.extra.SCRIPT_CONTENT";
    protected final String EXTRA_SCRIPT_PATH = "com.googlecode.android_scripting.extra.SCRIPT_PATH";
    
    protected SlidingMenu mLeftMenu = null; 
    protected ListView menuListView = null;
    protected ImageView topIcon = null;
    protected GridView mainGridView = null;
    protected ActionBar actionBar = null;
    
    @Override
    public void onCreateTest(Bundle savedInstanceState)
    {
        super.onCreateTest(savedInstanceState);
        currentActivity = new WeakReference<Activity>(this);
        //requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.main);
        //parseIntent();
        
        initViews();
        
        actionBar.setCustomView(R.layout.action_view);
        actionBar.setTitle("ttttt");
        actionBar.show();
        actionBar.setCustomView(new Button(this));
    }

    protected void initViews()
    {
        mLeftMenu = (SlidingMenu) findViewById(R.id.main_menu);
        menuListView = (ListView) findViewById(R.id.main_menu_listview);
        topIcon = (ImageView) findViewById(R.id.main_top_icon);
        mainGridView = (GridView) findViewById(R.id.main_content_layout_gridview);
        actionBar = getActionBar();
        
        mLeftMenu.setRightPadding(80);
        mLeftMenu.toggle();
       
        int[] icons = ResourceUtil.getIntArrayFromDrawableArray(this, R.array.menu_icons, R.drawable.ali_wonder);
        String[] texts = getResources().getStringArray(R.array.menu_texts);
        SimpleAdapter adapter = getSimpleAdapter(icons, texts);
        menuListView.setAdapter(adapter);
        
        //mainGridView.setAdapter();
    }

    protected SimpleAdapter getSimpleAdapter(int[] icons, String[] texts)
    {
        List<Map<String, Object>> items = new ArrayList<Map<String, Object>> ();
        for (int i = 0; i < texts.length; i++)
        {
            Map<String, Object> item = new HashMap<String, Object>();
            item.put("icon", icons[i]);
            item.put("text", texts[i]);
            items.add(item);
        }
        SimpleAdapter adapter = new SimpleAdapter(this, items, R.layout.main_listview_item, new String[]{"icon", "text"}, new int[]{R.id.main_listview_item_icon, R.id.main_listview_item_text});
        
        return adapter;
    }

    public void toggleMenu(View view)
    {
        mLeftMenu.toggle();
    }

    protected String getScriptPathFromIntent()
    {
        Intent intent = getIntent();
        if (intent.getData() == null || intent.getScheme() == null)
            return null;
            
        if (intent.getScheme().equals("file"))
        {
            Uri uri = intent.getData();
            String path = (uri != null ? uri.getPath() : "");
            if (! "".equals(path) && path != null)
            {
                return path;
            }
        }
        return null;
    }
    
    protected ScriptRunner.ScriptState executeScriptFile()
    {
        ScriptRunner runner = null;
        try
        {
            RunParams params = new RunParams();
            params.addClasses(ScriptObject.class);
            params.addProperties("Properties", Properties.class);
            params.setConsole(new AppConsole(this, getScriptPathFromIntent()));
            runner = new ScriptRunner(getScriptPathFromIntent(), params);
        }
        catch (FileNotFoundException e)
        {
            Debug.e(e);
        }
        return null;//runner.load();
    }
    
    public void parseIntent()
    {
        Intent i = getIntent();
        String s = "<Action>" + i.getAction() + "\n<Categories>" + i.getCategories() + "\n<DataString>" + i.getDataString() + "\n<Scheme>" + i.getScheme() + "\n<Type>" + i.getType() + "\n<Package>" + i.getPackage() + "\n<Data>" + i.getData() + "\n<Extras>" + i.getExtras();
        Debug.i(s);
    }

    protected void onServiceUnBind(ComponentName name)
    {
        // TODO: Implement this method
    }

    protected void onServiceBind(ComponentName name)
    {
        // TODO: Implement this method
    }
    
    public class LogServiceConnection implements ServiceConnection
    {
        @Override
        public void onServiceConnected(ComponentName name, IBinder binder)
        {
            logBinder = (AppLogService.LogServiceIBinder) binder;
            onServiceBind(name);
        }

        @Override
        public void onServiceDisconnected(ComponentName name)
        {
            onServiceUnBind(name);
        }
    }
}
