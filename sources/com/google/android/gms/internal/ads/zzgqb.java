package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgqb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgpz f19440a = new zzgqa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgpz f19441b;

    static {
        zzgpz zzgpzVar;
        try {
            zzgpzVar = (zzgpz) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzgpzVar = null;
        }
        f19441b = zzgpzVar;
    }

    static zzgpz a() {
        zzgpz zzgpzVar = f19441b;
        if (zzgpzVar != null) {
            return zzgpzVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zzgpz b() {
        return f19440a;
    }
}
