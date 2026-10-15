package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzng implements zznf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzhy f23807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzhy f23808f;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).b().a();
        f23803a = zzhvVarA.f("measurement.adid_zero.app_instance_id_fix", true);
        f23804b = zzhvVarA.f("measurement.adid_zero.service", true);
        f23805c = zzhvVarA.f("measurement.adid_zero.adid_uid", true);
        f23806d = zzhvVarA.f("measurement.adid_zero.remove_lair_if_adidzero_false", true);
        f23807e = zzhvVarA.f("measurement.adid_zero.remove_lair_if_userid_cleared", true);
        f23808f = zzhvVarA.f("measurement.adid_zero.remove_lair_on_id_value_change_only", true);
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean a() {
        return ((Boolean) f23804b.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean b() {
        return ((Boolean) f23806d.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean c() {
        return ((Boolean) f23807e.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean d() {
        return ((Boolean) f23805c.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean e() {
        return ((Boolean) f23808f.b()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznf
    public final boolean zzb() {
        return ((Boolean) f23803a.b()).booleanValue();
    }
}
