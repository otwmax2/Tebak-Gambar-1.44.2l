package androidx.appcompat.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.IBinder;

/* JADX INFO: compiled from: AppLocalesMetadataHolderService.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends Service {

    /* JADX INFO: compiled from: AppLocalesMetadataHolderService.java */
    private static class a {
        static int a() {
            return 512;
        }
    }

    public static ServiceInfo a(Context context) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) m.class), Build.VERSION.SDK_INT >= 24 ? a.a() | 128 : 640);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }
}
