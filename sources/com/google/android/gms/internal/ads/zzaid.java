package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaid implements zzaim {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzaf f9234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzeu f9235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzabb f9236c;

    public zzaid(String str) {
        zzad zzadVar = new zzad();
        zzadVar.s(str);
        this.f9234a = zzadVar.y();
    }

    @Override // com.google.android.gms.internal.ads.zzaim
    public final void b(zzeu zzeuVar, zzzx zzzxVar, zzaiz zzaizVar) {
        this.f9235b = zzeuVar;
        zzaizVar.c();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 5);
        this.f9236c = zzabbVarQ;
        zzabbVarQ.e(this.f9234a);
    }

    @Override // com.google.android.gms.internal.ads.zzaim
    public final void c(zzen zzenVar) {
        zzdl.b(this.f9235b);
        int i10 = zzew.f17494a;
        long jD = this.f9235b.d();
        long jE = this.f9235b.e();
        if (jD == -9223372036854775807L || jE == -9223372036854775807L) {
            return;
        }
        zzaf zzafVar = this.f9234a;
        if (jE != zzafVar.f8735p) {
            zzad zzadVarB = zzafVar.b();
            zzadVarB.w(jE);
            zzaf zzafVarY = zzadVarB.y();
            this.f9234a = zzafVarY;
            this.f9236c.e(zzafVarY);
        }
        int i11 = zzenVar.i();
        this.f9236c.d(zzenVar, i11);
        this.f9236c.f(jD, 1, i11, 0, null);
    }
}
