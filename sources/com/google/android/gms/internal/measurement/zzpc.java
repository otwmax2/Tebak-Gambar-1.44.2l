package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpc implements zzpb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23908b;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23907a = zzhvVarA.f("measurement.module.pixie.ees", true);
        f23908b = zzhvVarA.f("measurement.module.pixie.fix_array", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzpb
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpb
    public final boolean zzb() {
        return ((Boolean) f23908b.b()).booleanValue();
    }
}
