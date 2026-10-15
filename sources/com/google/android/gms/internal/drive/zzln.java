package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzln {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzll f22233a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzll f22234b = new zzlm();

    static zzll a() {
        return f22233a;
    }

    static zzll b() {
        return f22234b;
    }

    private static zzll c() {
        try {
            return (zzll) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
