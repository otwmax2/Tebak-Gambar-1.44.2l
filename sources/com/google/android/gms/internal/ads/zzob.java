package com.google.android.gms.internal.ads;

import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f20305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzoc f20306b;

    public zzob(Handler handler, zzoc zzocVar) {
        this.f20305a = zzocVar == null ? null : handler;
        this.f20306b = zzocVar;
    }

    public final void a(final Exception exc) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznr
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20275o.h(exc);
                }
            });
        }
    }

    public final void b(final Exception exc) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznx
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20289o.i(exc);
                }
            });
        }
    }

    public final void c(final String str, final long j10, final long j11) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20285o.j(str, j10, j11);
                }
            });
        }
    }

    public final void d(final String str) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzny
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20291o.k(str);
                }
            });
        }
    }

    public final void e(final zzhb zzhbVar) {
        zzhbVar.a();
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzns
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20277o.l(zzhbVar);
                }
            });
        }
    }

    public final void f(final zzhb zzhbVar) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznt
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20279o.m(zzhbVar);
                }
            });
        }
    }

    public final void g(final zzaf zzafVar, final zzhc zzhcVar) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznz
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20293o.n(zzafVar, zzhcVar);
                }
            });
        }
    }

    final /* synthetic */ void h(Exception exc) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.f(exc);
    }

    final /* synthetic */ void i(Exception exc) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.i(exc);
    }

    final /* synthetic */ void j(String str, long j10, long j11) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.h(str, j10, j11);
    }

    final /* synthetic */ void k(String str) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.O(str);
    }

    final /* synthetic */ void l(zzhb zzhbVar) {
        zzhbVar.a();
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.l(zzhbVar);
    }

    final /* synthetic */ void m(zzhb zzhbVar) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.b(zzhbVar);
    }

    final /* synthetic */ void n(zzaf zzafVar, zzhc zzhcVar) {
        int i10 = zzew.f17494a;
        this.f20306b.a(zzafVar, zzhcVar);
    }

    final /* synthetic */ void o(long j10) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.o(j10);
    }

    final /* synthetic */ void p(boolean z10) {
        zzoc zzocVar = this.f20306b;
        int i10 = zzew.f17494a;
        zzocVar.C0(z10);
    }

    final /* synthetic */ void q(int i10, long j10, long j11) {
        zzoc zzocVar = this.f20306b;
        int i11 = zzew.f17494a;
        zzocVar.j(i10, j10, j11);
    }

    public final void r(final long j10) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznu
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20281o.o(j10);
                }
            });
        }
    }

    public final void s(final boolean z10) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznv
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20283o.p(z10);
                }
            });
        }
    }

    public final void t(final int i10, final long j10, final long j11) {
        Handler handler = this.f20305a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzoa
                @Override // java.lang.Runnable
                public final void run() {
                    this.f20301o.q(i10, j10, j11);
                }
            });
        }
    }
}
