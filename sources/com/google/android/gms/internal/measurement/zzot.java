package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzot implements zzos {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23893d;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23890a = zzhvVarA.d("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f23891b = zzhvVarA.f("measurement.lifecycle.app_backgrounded_tracking", true);
        f23892c = zzhvVarA.f("measurement.lifecycle.app_in_background_parameter", false);
        f23893d = zzhvVarA.d("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzos
    public final boolean zza() {
        return ((Boolean) f23892c.b()).booleanValue();
    }
}
