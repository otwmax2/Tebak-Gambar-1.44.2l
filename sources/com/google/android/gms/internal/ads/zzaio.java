package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabb[] f9284b;

    public zzaio(List list) {
        this.f9283a = list;
        this.f9284b = new zzabb[list.size()];
    }

    public final void a(long j10, zzen zzenVar) {
        zzzh.a(j10, zzenVar, this.f9284b);
    }

    public final void b(zzzx zzzxVar, zzaiz zzaizVar) {
        for (int i10 = 0; i10 < this.f9284b.length; i10++) {
            zzaizVar.c();
            zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 3);
            zzaf zzafVar = (zzaf) this.f9283a.get(i10);
            String str = zzafVar.f8731l;
            boolean z10 = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z10 = false;
            }
            zzdl.e(z10, "Invalid closed caption mime type provided: ".concat(String.valueOf(str)));
            String strB = zzafVar.f8720a;
            if (strB == null) {
                strB = zzaizVar.b();
            }
            zzad zzadVar = new zzad();
            zzadVar.h(strB);
            zzadVar.s(str);
            zzadVar.u(zzafVar.f8723d);
            zzadVar.k(zzafVar.f8722c);
            zzadVar.c0(zzafVar.D);
            zzadVar.i(zzafVar.f8733n);
            zzabbVarQ.e(zzadVar.y());
            this.f9284b[i10] = zzabbVarQ;
        }
    }
}
