package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpr implements zzpq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23936b;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).b().a();
        f23935a = zzhvVarA.f("measurement.collection.enable_session_stitching_token.client.dev", false);
        f23936b = zzhvVarA.f("measurement.collection.enable_session_stitching_token.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean a() {
        return ((Boolean) f23936b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpq
    public final boolean zzb() {
        return ((Boolean) f23935a.b()).booleanValue();
    }
}
