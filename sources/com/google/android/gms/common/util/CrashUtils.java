package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class CrashUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f7634a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    @KeepForSdk
    public static boolean a(Context context, Throwable th) {
        try {
            Preconditions.k(context);
            Preconditions.k(th);
            return false;
        } catch (Exception e10) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e10);
            return false;
        }
    }
}
