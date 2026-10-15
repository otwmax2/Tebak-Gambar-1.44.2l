package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzow implements zzov {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23897b;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23896a = zzhvVarA.f("measurement.validation.internal_limits_internal_event_params", true);
        f23897b = zzhvVarA.d("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final boolean zza() {
        return ((Boolean) f23896a.b()).booleanValue();
    }
}
