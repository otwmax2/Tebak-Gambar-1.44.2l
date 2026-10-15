package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzka {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzjy<?> f22117a = new zzjz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzjy<?> f22118b = a();

    private static zzjy<?> a() {
        try {
            return (zzjy) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static zzjy<?> b() {
        return f22117a;
    }

    static zzjy<?> c() {
        zzjy<?> zzjyVar = f22118b;
        if (zzjyVar != null) {
            return zzjyVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
