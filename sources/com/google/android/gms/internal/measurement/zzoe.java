package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoe implements zzod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23866a = new zzhv(zzho.a("com.google.android.gms.measurement")).a().f("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzod
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzod
    public final boolean zzb() {
        return ((Boolean) f23866a.b()).booleanValue();
    }
}
