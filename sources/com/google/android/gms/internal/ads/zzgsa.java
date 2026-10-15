package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsa implements zzgsp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgrw f19564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgtg f19565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f19566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgpz f19567d;

    private zzgsa(zzgtg zzgtgVar, zzgpz zzgpzVar, zzgrw zzgrwVar) {
        this.f19565b = zzgtgVar;
        this.f19566c = zzgpzVar.h(zzgrwVar);
        this.f19567d = zzgpzVar;
        this.f19564a = zzgrwVar;
    }

    static zzgsa k(zzgtg zzgtgVar, zzgpz zzgpzVar, zzgrw zzgrwVar) {
        return new zzgsa(zzgtgVar, zzgpzVar, zzgrwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final int a(Object obj) {
        zzgtg zzgtgVar = this.f19565b;
        int iB = zzgtgVar.b(zzgtgVar.d(obj));
        if (!this.f19566c) {
            return iB;
        }
        this.f19567d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final Object b() {
        zzgrw zzgrwVar = this.f19564a;
        return zzgrwVar instanceof zzgqm ? ((zzgqm) zzgrwVar).k() : zzgrwVar.a().f1();
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final int c(Object obj) {
        int iHashCode = this.f19565b.d(obj).hashCode();
        if (!this.f19566c) {
            return iHashCode;
        }
        this.f19567d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final boolean d(Object obj) {
        this.f19567d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void e(Object obj) {
        this.f19565b.m(obj);
        this.f19567d.e(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void f(Object obj, Object obj2) {
        zzgsr.f(this.f19565b, obj, obj2);
        if (this.f19566c) {
            zzgsr.e(this.f19567d, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final boolean g(Object obj, Object obj2) {
        if (!this.f19565b.d(obj).equals(this.f19565b.d(obj2))) {
            return false;
        }
        if (!this.f19566c) {
            return true;
        }
        this.f19567d.a(obj);
        this.f19567d.a(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void h(Object obj, byte[] bArr, int i10, int i11, zzgoq zzgoqVar) throws IOException {
        zzgqm zzgqmVar = (zzgqm) obj;
        if (zzgqmVar.zzc == zzgth.c()) {
            zzgqmVar.zzc = zzgth.f();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void i(Object obj, zzgsh zzgshVar, zzgpy zzgpyVar) throws IOException {
        boolean zM;
        zzgtg zzgtgVar = this.f19565b;
        zzgpz zzgpzVar = this.f19567d;
        Object objC = zzgtgVar.c(obj);
        zzgqd zzgqdVarB = zzgpzVar.b(obj);
        while (zzgshVar.a() != Integer.MAX_VALUE) {
            try {
                int iD = zzgshVar.d();
                if (iD != 11) {
                    if ((iD & 7) == 2) {
                        Object objC2 = zzgpzVar.c(zzgpyVar, this.f19564a, iD >>> 3);
                        if (objC2 != null) {
                            zzgpzVar.f(zzgshVar, objC2, zzgpyVar, zzgqdVarB);
                        } else {
                            zM = zzgtgVar.p(objC, zzgshVar);
                        }
                    } else {
                        zM = zzgshVar.M();
                    }
                    if (!zM) {
                        return;
                    }
                } else {
                    int iH = 0;
                    Object objC3 = null;
                    zzgpe zzgpeVarN = null;
                    while (zzgshVar.a() != Integer.MAX_VALUE) {
                        int iD2 = zzgshVar.d();
                        if (iD2 == 16) {
                            iH = zzgshVar.h();
                            objC3 = zzgpzVar.c(zzgpyVar, this.f19564a, iH);
                        } else if (iD2 == 26) {
                            if (objC3 != null) {
                                zzgpzVar.f(zzgshVar, objC3, zzgpyVar, zzgqdVarB);
                            } else {
                                zzgpeVarN = zzgshVar.n();
                            }
                        } else if (!zzgshVar.M()) {
                            break;
                        }
                    }
                    if (zzgshVar.d() != 12) {
                        throw zzgqy.b();
                    }
                    if (zzgpeVarN != null) {
                        if (objC3 != null) {
                            zzgpzVar.g(zzgpeVarN, objC3, zzgpyVar, zzgqdVarB);
                        } else {
                            zzgtgVar.k(objC, iH, zzgpeVarN);
                        }
                    }
                }
            } finally {
                zzgtgVar.n(obj, objC);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgsp
    public final void j(Object obj, zzgpu zzgpuVar) throws IOException {
        this.f19567d.a(obj);
        throw null;
    }
}
