package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzny implements zznx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23858d;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).b().a();
        f23855a = zzhvVarA.f("measurement.enhanced_campaign.client", true);
        f23856b = zzhvVarA.f("measurement.enhanced_campaign.service", true);
        f23857c = zzhvVarA.f("measurement.enhanced_campaign.srsltid.client", false);
        f23858d = zzhvVarA.f("measurement.enhanced_campaign.srsltid.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean a() {
        return ((Boolean) f23856b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean b() {
        return ((Boolean) f23858d.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean d() {
        return ((Boolean) f23857c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb() {
        return ((Boolean) f23855a.b()).booleanValue();
    }
}
