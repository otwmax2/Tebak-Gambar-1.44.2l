package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class InstantApps {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f7668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f7669b;

    @KeepForSdk
    public static synchronized boolean a(Context context) {
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f7668a;
        if (context2 != null && (bool = f7669b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f7669b = null;
        if (PlatformVersion.j()) {
            f7669b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f7669b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                f7669b = Boolean.FALSE;
            }
        }
        f7668a = applicationContext;
        return f7669b.booleanValue();
    }
}
