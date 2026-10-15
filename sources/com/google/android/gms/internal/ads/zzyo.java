package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f21126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzyp f21127b;

    public zzyo(Handler handler, zzyp zzypVar) {
        this.f21126a = zzypVar == null ? null : handler;
        this.f21127b = zzypVar;
    }

    public final void a(final String str, final long j10, final long j11) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21115o.g(str, j10, j11);
                }
            });
        }
    }

    public final void b(final String str) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyn
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21124o.h(str);
                }
            });
        }
    }

    public final void c(final zzhb zzhbVar) {
        zzhbVar.a();
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyj
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21113o.i(zzhbVar);
                }
            });
        }
    }

    public final void d(final int i10, final long j10) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzye
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21100o.j(i10, j10);
                }
            });
        }
    }

    public final void e(final zzhb zzhbVar) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyi
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21111o.k(zzhbVar);
                }
            });
        }
    }

    public final void f(final zzaf zzafVar, final zzhc zzhcVar) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyl
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21119o.l(zzafVar, zzhcVar);
                }
            });
        }
    }

    final /* synthetic */ void g(String str, long j10, long j11) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.n(str, j10, j11);
    }

    final /* synthetic */ void h(String str) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.b0(str);
    }

    final /* synthetic */ void i(zzhb zzhbVar) {
        zzhbVar.a();
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.g(zzhbVar);
    }

    final /* synthetic */ void j(int i10, long j10) {
        zzyp zzypVar = this.f21127b;
        int i11 = zzew.f17494a;
        zzypVar.c(i10, j10);
    }

    final /* synthetic */ void k(zzhb zzhbVar) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.e(zzhbVar);
    }

    final /* synthetic */ void l(zzaf zzafVar, zzhc zzhcVar) {
        int i10 = zzew.f17494a;
        this.f21127b.k(zzafVar, zzhcVar);
    }

    final /* synthetic */ void m(Object obj, long j10) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.p(obj, j10);
    }

    final /* synthetic */ void n(long j10, int i10) {
        zzyp zzypVar = this.f21127b;
        int i11 = zzew.f17494a;
        zzypVar.d(j10, i10);
    }

    final /* synthetic */ void o(Exception exc) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.m(exc);
    }

    final /* synthetic */ void p(zzda zzdaVar) {
        zzyp zzypVar = this.f21127b;
        int i10 = zzew.f17494a;
        zzypVar.E0(zzdaVar);
    }

    public final void q(final Object obj) {
        if (this.f21126a != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.f21126a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyf
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21103o.m(obj, jElapsedRealtime);
                }
            });
        }
    }

    public final void r(final long j10, final int i10) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyh
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21108o.n(j10, i10);
                }
            });
        }
    }

    public final void s(final Exception exc) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyg
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21106o.o(exc);
                }
            });
        }
    }

    public final void t(final zzda zzdaVar) {
        Handler handler = this.f21126a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzym
                @Override // java.lang.Runnable
                public final void run() {
                    this.f21122o.p(zzdaVar);
                }
            });
        }
    }
}
