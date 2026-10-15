package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoz implements zzoy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23902c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzhy f23904e;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23900a = zzhvVarA.f("measurement.test.boolean_flag", false);
        f23901b = zzhvVarA.c("measurement.test.double_flag", -3.0d);
        f23902c = zzhvVarA.d("measurement.test.int_flag", -2L);
        f23903d = zzhvVarA.d("measurement.test.long_flag", -1L);
        f23904e = zzhvVarA.e("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final long a() {
        return ((Long) f23903d.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final boolean b() {
        return ((Boolean) f23900a.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final String d() {
        return (String) f23904e.b();
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final double zza() {
        return ((Double) f23901b.b()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoy
    public final long zzb() {
        return ((Long) f23902c.b()).longValue();
    }
}
