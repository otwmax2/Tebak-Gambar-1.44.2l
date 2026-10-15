package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzix {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f22067a = c("libcore.io.Memory");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f22068b;

    static {
        f22068b = c("org.robolectric.Robolectric") != null;
    }

    static boolean a() {
        return (f22067a == null || f22068b) ? false : true;
    }

    static Class<?> b() {
        return f22067a;
    }

    private static <T> Class<T> c(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
