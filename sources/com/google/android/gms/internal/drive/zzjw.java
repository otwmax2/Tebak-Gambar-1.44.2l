package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzjw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f22111a = a();

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzjx b() {
        if (f22111a != null) {
            try {
                return c("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return zzjx.f22113c;
    }

    private static final zzjx c(String str) throws Exception {
        return (zzjx) f22111a.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
