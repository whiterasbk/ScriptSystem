package whiter.script.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipOutputStream;
import whiter.script.debug.Debug;
import whiter.script.R;
import android.os.Environment;

public class BackupUtil
{
    public static String data_dir = "";
    private static ZipOutputStream zos = null;
    static int count = 0;
    
    public static void backup()
    {
        data_dir = Environment.getExternalStorageDirectory().toString() + "/AppProjects/AndroidForJavaScript/ScriptSystem/";
        new Thread(new Runnable(){

                @Override
                public void run()
                {
                    Debug.n("Start backup:--> ScriptSystem");
                    
                    try
                    {
                        String o = data_dir + "src";
                        String n = data_dir + ".backups/backup-src.zip";
                        if (!new File(n).exists())
                            new File(n).createNewFile();
                        if (new File(n).canRead())
                            zip(o, n);
                            
                        o = data_dir + "res";
                        n = data_dir + ".backups/backup-res.zip";
                        if (!new File(n).exists())
                            new File(n).createNewFile();
                        if (new File(n).canRead())
                            zip(o, n);
                            
                        o = data_dir + "AndroidManifest.xml";
                        n = data_dir + ".backups/backup-manifest.zip";
                        if (!new File(n).exists())
                            new File(n).createNewFile();
                        if (new File(n).canRead())
                        {
                            zos = new ZipOutputStream(new FileOutputStream(n));
                            
                            FileInputStream fis = new FileInputStream(o);
                            zos.putNextEntry(new java.util.zip.ZipEntry("AndroidManifest.xml"));
                            int l = 0;
                            byte[] buf = new byte[1024 * 200];
                            while ((l = fis.read(buf)) != -1)
                            {
                                zos.write(buf, 0, l);
                            }
                            
                            zos.finish();
                            zos.close();
                            count ++;
                        }

                        Debug.dn("Finish backup--> File Count:\n" + count + " items");
                    }
                    catch (IOException e)
                    {
                        Debug.e(e);
                    }
                }
            }).start();
    }

    public static void zip(String f, String n)
    {
        try
        {
            zos = new ZipOutputStream(new FileOutputStream(n));
            zipping(f, new java.io.File(f), "drawable-mdpi");
            zos.finish();
            zos.close();
        }
        catch (IOException e)
        {
            Debug.e(e);
        }
    }

    private static void zipping(String name, File file, String except)
    {
        if (file.isDirectory())
        {
            if (file.getName().equals(except))
                return;
              
            for (File f : file.listFiles())
            {
                zipping(name, f, except);     
            }
        }
        else
        {
            put(file.getAbsolutePath().substring(name.length() + 1), file.getPath());
        }
    }

    private static void put(String name, String path)
    {
        try
        {
            FileInputStream fis = new FileInputStream(path);
            zos.putNextEntry(new java.util.zip.ZipEntry(name));
            int l = 0;
            byte[] buf = new byte[1024 * 200];
            while ((l = fis.read(buf)) != -1)
            {
                zos.write(buf, 0, l);
            }

            count ++;
        }
        catch (IOException e)
        {
            Debug.e(e);
        }
    }
}
