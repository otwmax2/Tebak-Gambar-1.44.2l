package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabl implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f8402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzabo f8403b;

    public zzabl(zzabo zzaboVar, long j10) {
        this.f8403b = zzaboVar;
        this.f8402a = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8402a;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        zzaav zzaavVarA = this.f8403b.f8413g[0].a(j10);
        int i10 = 1;
        while (true) {
            zzabo zzaboVar = this.f8403b;
            if (i10 >= zzaboVar.f8413g.length) {
                return zzaavVarA;
            }
            zzaav zzaavVarA2 = zzaboVar.f8413g[i10].a(j10);
            if (zzaavVarA2.f8349a.f8355b < zzaavVarA.f8349a.f8355b) {
                zzaavVarA = zzaavVarA2;
            }
            i10++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }
}
