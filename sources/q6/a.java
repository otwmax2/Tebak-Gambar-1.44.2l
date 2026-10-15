package q6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import h6.c;

/* JADX INFO: compiled from: DataCollectionConfigStorage.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f34060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f34061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34062d;

    public a(Context context, String str, c cVar) {
        Context contextA = a(context);
        this.f34059a = contextA;
        this.f34060b = contextA.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f34061c = cVar;
        this.f34062d = c();
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : androidx.core.content.a.b(context);
    }

    private boolean c() {
        return this.f34060b.contains("firebase_data_collection_default_enabled") ? this.f34060b.getBoolean("firebase_data_collection_default_enabled", true) : d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f34059a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f34059a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean b() {
        return this.f34062d;
    }
}
