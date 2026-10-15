package q0;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;

/* JADX INFO: compiled from: WakefulBroadcastReceiver.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f33743o = new SparseArray<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f33744p = 1;

    public static boolean b(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = f33743o;
        synchronized (sparseArray) {
            PowerManager.WakeLock wakeLock = sparseArray.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }

    public static ComponentName c(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = f33743o;
        synchronized (sparseArray) {
            int i10 = f33744p;
            int i11 = i10 + 1;
            f33744p = i11;
            if (i11 <= 0) {
                f33744p = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i10);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(60000L);
            sparseArray.put(i10, wakeLockNewWakeLock);
            return componentNameStartService;
        }
    }
}
