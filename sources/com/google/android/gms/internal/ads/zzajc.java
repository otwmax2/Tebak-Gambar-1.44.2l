package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabb[] f9341b;

    public zzajc(List list) {
        this.f9340a = list;
        this.f9341b = new zzabb[list.size()];
    }

    public final void a(long j10, zzen zzenVar) {
        if (zzenVar.i() < 9) {
            return;
        }
        int iM = zzenVar.m();
        int iM2 = zzenVar.m();
        int iS = zzenVar.s();
        if (iM == 434 && iM2 == 1195456820 && iS == 3) {
            zzzh.b(j10, zzenVar, this.f9341b);
        }
    }

    public final void b(zzzx zzzxVar, zzaiz zzaizVar) {
        for (int i10 = 0; i10 < this.f9341b.length; i10++) {
            zzaizVar.c();
            zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 3);
            zzaf zzafVar = (zzaf) this.f9340a.get(i10);
            String str = zzafVar.f8731l;
            boolean z10 = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z10 = false;
            }
            zzdl.e(z10, "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            zzad zzadVar = new zzad();
            zzadVar.h(zzaizVar.b());
            zzadVar.s(str);
            zzadVar.u(zzafVar.f8723d);
            zzadVar.k(zzafVar.f8722c);
            zzadVar.c0(zzafVar.D);
            zzadVar.i(zzafVar.f8733n);
            zzabbVarQ.e(zzadVar.y());
            this.f9341b[i10] = zzabbVarQ;
        }
    }
}
