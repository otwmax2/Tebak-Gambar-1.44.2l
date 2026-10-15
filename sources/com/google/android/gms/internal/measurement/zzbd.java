package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbd implements zzbf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzg f23299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23300b;

    public zzbd(zzg zzgVar, String str) {
        this.f23299a = zzgVar;
        this.f23300b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbf
    public final zzg a(zzap zzapVar) {
        zzg zzgVarA = this.f23299a.a();
        zzgVarA.f(this.f23300b, zzapVar);
        return zzgVarA;
    }
}
