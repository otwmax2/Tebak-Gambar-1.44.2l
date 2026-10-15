package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzjw f22829a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzjw f22830b = new zzjv();

    static zzjw a() {
        return f22829a;
    }

    static zzjw b() {
        return f22830b;
    }

    private static zzjw c() {
        try {
            return (zzjw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
