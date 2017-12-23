package whiter.script.activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.SimpleAdapter;
import whiter.script.R;
import whiter.script.base.BaseMainActivity;
import whiter.script.util.BackupUtil;
import whiter.script.util.ResourceUtil;
import whiter.script.widget.ScriptDialog;
import whiter.script.service.AppLogService;
import android.content.ServiceConnection;
import android.content.ComponentName;
import android.os.IBinder;
import android.app.Service;
import whiter.script.debug.Debug;

public class MainActivity extends BaseMainActivity
{
    @Override
    public void onCreateTest(Bundle savedInstanceState)
    {
        super.onCreateTest(savedInstanceState);
        BackupUtil.backup();
        showOptionsDialog();
       
        Intent intent = new Intent(MainActivity.this, AppLogService.class);
        bindService(intent, new LogServiceConnection(), BIND_AUTO_CREATE);
        
        //android.R.style.Theme_Material_Light;
    }

    private void showOptionsDialog()
    {
        final String scriptPath = getScriptPathFromIntent();
        if (!"".equals(scriptPath) && scriptPath != null) 
        {
            String[] options = getResources().getStringArray(R.array.dialog_script_project_options);
            int[] icons = ResourceUtil.getIntArrayFromDrawableArray(this, R.array.dialog_script_project_icons, R.drawable.ali_o);

            SimpleAdapter adapter = getSimpleAdapter(icons, options);
            ScriptDialog.Builder builder = new ScriptDialog.Builder(this);
            builder.setIcon(R.drawable.ic_root_js);

            builder.setTitle(R.string.dialog_script_option_title);
            builder.setNeutralButton(R.string.dialog_script_option_neutral_button, null);
            builder.setAdapter(adapter, new DialogInterface.OnClickListener(){

                    @Override
                    public void onClick(DialogInterface dialog, int which)
                    {
                        if (which == 0) //运行这个js
                        {
                            Intent intent = new Intent(MainActivity.this, ConsoleActivity.class);
                            intent.putExtra(SCRIPT_PATH, scriptPath);
                            intent.putExtra(SCRIPT_TYPE, SCRIPT_TYPE_FILE);
                            startActivity(intent);
                        }
                        else if (which == 1) //后台运行这个js
                        {

                        }
                    }

            });
            builder.create().show();
        }
    }
}
