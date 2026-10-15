package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzej {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzeh<?> f21477a = new zzei();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzeh<?> f21478b;

    static {
        zzeh<?> zzehVar;
        try {
            zzehVar = (zzeh) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzehVar = null;
        }
        f21478b = zzehVar;
    }

    static zzeh<?> a() {
        zzeh<?> zzehVar = f21478b;
        if (zzehVar != null) {
            return zzehVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zzeh<?> b() {
        return f21477a;
    }
}
