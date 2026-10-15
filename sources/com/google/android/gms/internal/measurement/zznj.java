package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zznj implements zzni {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23812b;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23811a = zzhvVarA.f("measurement.androidId.delete_feature", true);
        f23812b = zzhvVarA.f("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzni
    public final boolean zza() {
        return ((Boolean) f23811a.b()).booleanValue();
    }
}
