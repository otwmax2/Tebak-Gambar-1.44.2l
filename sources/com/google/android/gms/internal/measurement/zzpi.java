package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpi implements zzph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzhy f23918e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzhy f23919f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzhy f23920g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzhy f23921h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzhy f23922i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzhy f23923j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzhy f23924k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzhy f23925l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzhy f23926m;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).b().a();
        f23914a = zzhvVarA.f("measurement.redaction.app_instance_id", true);
        f23915b = zzhvVarA.f("measurement.redaction.client_ephemeral_aiid_generation", true);
        f23916c = zzhvVarA.f("measurement.redaction.config_redacted_fields", true);
        f23917d = zzhvVarA.f("measurement.redaction.device_info", true);
        f23918e = zzhvVarA.f("measurement.redaction.e_tag", true);
        f23919f = zzhvVarA.f("measurement.redaction.enhanced_uid", true);
        f23920g = zzhvVarA.f("measurement.redaction.populate_ephemeral_app_instance_id", true);
        f23921h = zzhvVarA.f("measurement.redaction.google_signals", true);
        f23922i = zzhvVarA.f("measurement.redaction.no_aiid_in_config_request", true);
        f23923j = zzhvVarA.f("measurement.redaction.upload_redacted_fields", true);
        f23924k = zzhvVarA.f("measurement.redaction.upload_subdomain_override", true);
        f23925l = zzhvVarA.f("measurement.redaction.user_id", true);
        f23926m = zzhvVarA.d("measurement.id.redaction", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean a() {
        return ((Boolean) f23915b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean b() {
        return ((Boolean) f23917d.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean c() {
        return ((Boolean) f23918e.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean d() {
        return ((Boolean) f23916c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean e() {
        return ((Boolean) f23919f.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean f() {
        return ((Boolean) f23920g.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean g() {
        return ((Boolean) f23921h.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean h() {
        return ((Boolean) f23922i.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean i() {
        return ((Boolean) f23923j.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean j() {
        return ((Boolean) f23924k.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean l() {
        return ((Boolean) f23925l.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzph
    public final boolean zzb() {
        return ((Boolean) f23914a.b()).booleanValue();
    }
}
