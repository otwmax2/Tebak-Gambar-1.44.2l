package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbg implements zzbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzg f23303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23304b;

    public zzbg(zzg zzgVar, String str) {
        this.f23303a = zzgVar;
        this.f23304b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbf
    public final zzg a(zzap zzapVar) {
        this.f23303a.e(this.f23304b, zzapVar);
        return this.f23303a;
    }
}
