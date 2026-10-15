package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzly f22268a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzly f22269b = new zzlz();

    static zzly a() {
        return f22268a;
    }

    static zzly b() {
        return f22269b;
    }

    private static zzly c() {
        try {
            return (zzly) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
