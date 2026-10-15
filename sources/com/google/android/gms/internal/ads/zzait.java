package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzait implements zzaim {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzem f9297a = new zzem(new byte[4], 4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzaiv f9298b;

    public zzait(zzaiv zzaivVar) {
        this.f9298b = zzaivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaim
    public final void b(zzeu zzeuVar, zzzx zzzxVar, zzaiz zzaizVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaim
    public final void c(zzen zzenVar) {
        if (zzenVar.s() == 0 && (zzenVar.s() & 128) != 0) {
            zzenVar.g(6);
            int i10 = zzenVar.i() / 4;
            for (int i11 = 0; i11 < i10; i11++) {
                zzenVar.a(this.f9297a, 4);
                int iD = this.f9297a.d(16);
                this.f9297a.l(3);
                if (iD == 0) {
                    this.f9297a.l(13);
                } else {
                    int iD2 = this.f9297a.d(13);
                    if (this.f9298b.f9309e.get(iD2) == null) {
                        zzaiv zzaivVar = this.f9298b;
                        zzaivVar.f9309e.put(iD2, new zzain(new zzaiu(zzaivVar, iD2)));
                        this.f9298b.f9315k++;
                    }
                }
            }
            this.f9298b.f9309e.remove(0);
        }
    }
}
