package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzob implements zzoa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23863c;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).b().a();
        f23861a = zzhvVarA.f("measurement.collection.event_safelist", true);
        f23862b = zzhvVarA.f("measurement.service.store_null_safelist", true);
        f23863c = zzhvVarA.f("measurement.service.store_safelist", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean a() {
        return ((Boolean) f23863c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoa
    public final boolean zzb() {
        return ((Boolean) f23862b.b()).booleanValue();
    }
}
