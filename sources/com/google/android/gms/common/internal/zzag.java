package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f7503a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f7504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f7505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7506d;

    public static int a(Context context) {
        b(context);
        return f7506d;
    }

    private static void b(Context context) {
        synchronized (f7503a) {
            if (f7504b) {
                return;
            }
            f7504b = true;
            try {
                Bundle bundle = Wrappers.a(context).c(context.getPackageName(), 128).metaData;
                if (bundle == null) {
                    return;
                }
                f7505c = bundle.getString("com.google.app.id");
                f7506d = bundle.getInt("com.google.android.gms.version");
            } catch (PackageManager.NameNotFoundException e10) {
                Log.wtf("MetadataValueReader", "This should never happen.", e10);
            }
        }
    }
}
