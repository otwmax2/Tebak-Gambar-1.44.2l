package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoq implements zzop {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23887d;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23884a = zzhvVarA.f("measurement.sdk.collection.enable_extend_user_property_size", true);
        f23885b = zzhvVarA.f("measurement.sdk.collection.last_deep_link_referrer2", true);
        f23886c = zzhvVarA.f("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f23887d = zzhvVarA.d("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzop
    public final boolean zza() {
        return ((Boolean) f23886c.b()).booleanValue();
    }
}
