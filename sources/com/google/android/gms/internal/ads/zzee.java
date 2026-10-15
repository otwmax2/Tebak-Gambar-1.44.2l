package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f16371a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzed f16372b = zzed.f16305a;

    @Pure
    public static void a(String str, String str2) {
        synchronized (f16371a) {
            Log.d(str, str2);
        }
    }

    @Pure
    public static void b(String str, String str2) {
        synchronized (f16371a) {
            Log.e(str, str2);
        }
    }

    @Pure
    public static void c(String str, String str2, Throwable th) {
        b(str, g(str2, th));
    }

    @Pure
    public static void d(String str, String str2) {
        synchronized (f16371a) {
            Log.i(str, str2);
        }
    }

    @Pure
    public static void e(String str, String str2) {
        synchronized (f16371a) {
            Log.w(str, str2);
        }
    }

    @Pure
    public static void f(String str, String str2, Throwable th) {
        e(str, g(str2, th));
    }

    @Pure
    private static String g(String str, Throwable th) {
        String strReplace;
        synchronized (f16371a) {
            try {
                if (th != null) {
                    Throwable cause = th;
                    while (true) {
                        if (cause == null) {
                            strReplace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                            break;
                        }
                        if (cause instanceof UnknownHostException) {
                            strReplace = "UnknownHostException (no network)";
                        } else {
                            cause = cause.getCause();
                        }
                    }
                } else {
                    strReplace = null;
                }
            } finally {
            }
        }
        if (TextUtils.isEmpty(strReplace)) {
            return str;
        }
        return str + "\n  " + strReplace.replace("\n", "\n  ") + "\n";
    }
}
