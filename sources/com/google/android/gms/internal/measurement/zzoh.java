package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoh implements zzog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23870b;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23869a = zzhvVarA.f("measurement.client.consent.suppress_1p_in_ga4f_install", true);
        f23870b = zzhvVarA.f("measurement.client.consent.gmpappid_worker_thread_fix", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzog
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzog
    public final boolean zzb() {
        return ((Boolean) f23870b.b()).booleanValue();
    }
}
