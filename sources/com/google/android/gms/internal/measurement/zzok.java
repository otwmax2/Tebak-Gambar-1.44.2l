package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzok implements zzoj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23876d;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23873a = zzhvVarA.f("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f23874b = zzhvVarA.f("measurement.audience.refresh_event_count_filters_timestamp", false);
        f23875c = zzhvVarA.f("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f23876d = zzhvVarA.f("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzoj
    public final boolean a() {
        return ((Boolean) f23875c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoj
    public final boolean d() {
        return ((Boolean) f23876d.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoj
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoj
    public final boolean zzb() {
        return ((Boolean) f23874b.b()).booleanValue();
    }
}
