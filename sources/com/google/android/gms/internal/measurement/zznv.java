package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zznv implements zznu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23852d;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23849a = zzhvVarA.f("measurement.client.consent_state_v1", true);
        f23850b = zzhvVarA.f("measurement.client.3p_consent_state_v1", true);
        f23851c = zzhvVarA.f("measurement.service.consent_state_v1_W36", true);
        f23852d = zzhvVarA.d("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override // com.google.android.gms.internal.measurement.zznu
    public final long zza() {
        return ((Long) f23852d.b()).longValue();
    }
}
