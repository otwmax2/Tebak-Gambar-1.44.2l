package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzjk f22804a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzjk f22805b = new zzjj();

    static zzjk a() {
        return f22804a;
    }

    static zzjk b() {
        return f22805b;
    }

    private static zzjk c() {
        try {
            return (zzjk) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
