package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzon implements zzom {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23881c;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23879a = zzhvVarA.f("measurement.client.sessions.check_on_reset_and_enable2", true);
        f23880b = zzhvVarA.f("measurement.client.sessions.check_on_startup", true);
        f23881c = zzhvVarA.f("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzom
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzom
    public final boolean zzb() {
        return ((Boolean) f23879a.b()).booleanValue();
    }
}
