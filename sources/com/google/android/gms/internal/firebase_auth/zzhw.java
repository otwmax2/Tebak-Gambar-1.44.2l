package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzhu<?> f22692a = new zzht();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzhu<?> f22693b = c();

    static zzhu<?> a() {
        return f22692a;
    }

    static zzhu<?> b() {
        zzhu<?> zzhuVar = f22693b;
        if (zzhuVar != null) {
            return zzhuVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzhu<?> c() {
        try {
            return (zzhu) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
