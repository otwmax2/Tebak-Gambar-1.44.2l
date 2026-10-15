package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahm implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabb[] f9083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9087f = -9223372036854775807L;

    public zzahm(List list) {
        this.f9082a = list;
        this.f9083b = new zzabb[list.size()];
    }

    private final boolean f(zzen zzenVar, int i10) {
        if (zzenVar.i() == 0) {
            return false;
        }
        if (zzenVar.s() != i10) {
            this.f9084c = false;
        }
        this.f9085d--;
        return this.f9084c;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
        if (this.f9084c) {
            if (this.f9087f != -9223372036854775807L) {
                for (zzabb zzabbVar : this.f9083b) {
                    zzabbVar.f(this.f9087f, 1, this.f9086e, 0, null);
                }
            }
            this.f9084c = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9084c = false;
        this.f9087f = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        if (this.f9084c) {
            if (this.f9085d != 2 || f(zzenVar, 32)) {
                if (this.f9085d != 1 || f(zzenVar, 0)) {
                    int iK = zzenVar.k();
                    int i10 = zzenVar.i();
                    for (zzabb zzabbVar : this.f9083b) {
                        zzenVar.f(iK);
                        zzabbVar.d(zzenVar, i10);
                    }
                    this.f9086e += i10;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        for (int i10 = 0; i10 < this.f9083b.length; i10++) {
            zzaiw zzaiwVar = (zzaiw) this.f9082a.get(i10);
            zzaizVar.c();
            zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 3);
            zzad zzadVar = new zzad();
            zzadVar.h(zzaizVar.b());
            zzadVar.s("application/dvbsubs");
            zzadVar.i(Collections.singletonList(zzaiwVar.f9322b));
            zzadVar.k(zzaiwVar.f9321a);
            zzabbVarQ.e(zzadVar.y());
            this.f9083b[i10] = zzabbVarQ;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f9084c = true;
        if (j10 != -9223372036854775807L) {
            this.f9087f = j10;
        }
        this.f9086e = 0;
        this.f9085d = 2;
    }
}
