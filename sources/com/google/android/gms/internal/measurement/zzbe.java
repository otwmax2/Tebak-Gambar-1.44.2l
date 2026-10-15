package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbe implements zzbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzg f23301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23302b;

    public zzbe(zzg zzgVar, String str) {
        this.f23301a = zzgVar;
        this.f23302b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbf
    public final zzg a(zzap zzapVar) {
        zzg zzgVarA = this.f23301a.a();
        zzgVarA.e(this.f23302b, zzapVar);
        return zzgVarA;
    }
}
