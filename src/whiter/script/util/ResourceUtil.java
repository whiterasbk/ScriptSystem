package whiter.script.util;
import whiter.script.activity.MainActivity;
import android.content.res.Resources;
import org.mozilla.javascript.Context;
import android.app.Activity;
import android.content.res.TypedArray;
import whiter.script.R;
import java.lang.reflect.Field;

public class ResourceUtil
{
    public static int[] getIntArrayFromDrawableArray(Activity ctx, int drawable_array, int defindValue)
    {
        Resources res = ctx.getResources();
        TypedArray typedArray = res.obtainTypedArray(drawable_array);
        int[] array = new int[typedArray.length()];
        
        for(int i = 0; i < typedArray.length(); i++)
        {
             array[i] = typedArray.getResourceId(i, defindValue);
        }
        
        return array;
    }
}
