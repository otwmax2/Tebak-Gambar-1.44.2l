package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziy implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzyp, zzoc, zzuu, zzrs, zzgy, zzgu, zzku, zzhk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzjc f19872o;

    /* synthetic */ zziy(zzjc zzjcVar, zzix zzixVar) {
        this.f19872o = zzjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void C0(final boolean z10) {
        zzjc zzjcVar = this.f19872o;
        if (zzjcVar.W == z10) {
            return;
        }
        zzjcVar.W = z10;
        zzeb zzebVar = this.f19872o.f19893k;
        zzebVar.d(23, new zzdy() { // from class: com.google.android.gms.internal.ads.zziv
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzcd) obj).R0(z10);
            }
        });
        zzebVar.c();
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void E0(final zzda zzdaVar) {
        this.f19872o.f19878b0 = zzdaVar;
        zzeb zzebVar = this.f19872o.f19893k;
        zzebVar.d(25, new zzdy() { // from class: com.google.android.gms.internal.ads.zziw
            @Override // com.google.android.gms.internal.ads.zzdy
            public final void a(Object obj) {
                ((zzcd) obj).E0(zzdaVar);
            }
        });
        zzebVar.c();
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void O(String str) {
        this.f19872o.f19899q.t0(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhk
    public final void S(boolean z10) {
        this.f19872o.u0();
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void a(zzaf zzafVar, zzhc zzhcVar) {
        this.f19872o.L = zzafVar;
        this.f19872o.f19899q.c(zzafVar, zzhcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void b(zzhb zzhbVar) {
        this.f19872o.S = zzhbVar;
        this.f19872o.f19899q.t(zzhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void b0(String str) {
        this.f19872o.f19899q.h(str);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void c(int i10, long j10) {
        this.f19872o.f19899q.a(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void d(long j10, int i10) {
        this.f19872o.f19899q.j(j10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void e(zzhb zzhbVar) {
        this.f19872o.R = zzhbVar;
        this.f19872o.f19899q.e(zzhbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void f(Exception exc) {
        this.f19872o.f19899q.m(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void g(zzhb zzhbVar) {
        this.f19872o.f19899q.g(zzhbVar);
        this.f19872o.K = null;
        this.f19872o.R = null;
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void h(String str, long j10, long j11) {
        this.f19872o.f19899q.r(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void i(Exception exc) {
        this.f19872o.f19899q.l(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void j(int i10, long j10, long j11) {
        this.f19872o.f19899q.o(i10, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void k(zzaf zzafVar, zzhc zzhcVar) {
        this.f19872o.K = zzafVar;
        this.f19872o.f19899q.C(zzafVar, zzhcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void l(zzhb zzhbVar) {
        this.f19872o.f19899q.A(zzhbVar);
        this.f19872o.L = null;
        this.f19872o.S = null;
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void m(Exception exc) {
        this.f19872o.f19899q.d(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void n(String str, long j10, long j11) {
        this.f19872o.f19899q.f(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void o(long j10) {
        this.f19872o.f19899q.x(j10);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        zzjc.V(this.f19872o, surfaceTexture);
        this.f19872o.n0(i10, i11);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f19872o.q0(null);
        this.f19872o.n0(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.f19872o.n0(i10, i11);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final void p(Object obj, long j10) {
        this.f19872o.f19899q.z(obj, j10);
        zzjc zzjcVar = this.f19872o;
        if (zzjcVar.N == obj) {
            zzeb zzebVar = zzjcVar.f19893k;
            zzebVar.d(26, new zzdy() { // from class: com.google.android.gms.internal.ads.zzis
                @Override // com.google.android.gms.internal.ads.zzdy
                public final void a(Object obj2) {
                }
            });
            zzebVar.c();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        this.f19872o.n0(i11, i12);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f19872o.n0(0, 0);
    }
}
