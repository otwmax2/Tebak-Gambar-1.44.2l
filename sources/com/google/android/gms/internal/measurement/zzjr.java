package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzjp f23614a = new zzjq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzjp f23615b;

    static {
        zzjp zzjpVar;
        try {
            zzjpVar = (zzjp) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzjpVar = null;
        }
        f23615b = zzjpVar;
    }

    static zzjp a() {
        zzjp zzjpVar = f23615b;
        if (zzjpVar != null) {
            return zzjpVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zzjp b() {
        return f23614a;
    }
}
