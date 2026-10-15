package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeui extends com.google.android.gms.ads.internal.client.zzbt implements com.google.android.gms.ads.internal.overlay.zzo, zzaus {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcgd f17391o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f17392p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f17394r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzeuc f17395s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzeua f17396t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzbzg f17397u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @GuardedBy("this")
    private zzcns f17399w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @GuardedBy("this")
    protected zzcoe f17400x;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AtomicBoolean f17393q = new AtomicBoolean();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("this")
    private long f17398v = -1;

    public zzeui(zzcgd zzcgdVar, Context context, String str, zzeuc zzeucVar, zzeua zzeuaVar, zzbzg zzbzgVar) {
        this.f17391o = zzcgdVar;
        this.f17392p = context;
        this.f17394r = str;
        this.f17395s = zzeucVar;
        this.f17396t = zzeuaVar;
        this.f17397u = zzbzgVar;
        zzeuaVar.o(this);
    }

    private final synchronized void Ua(int i10) {
        if (this.f17393q.compareAndSet(false, true)) {
            this.f17396t.m();
            zzcns zzcnsVar = this.f17399w;
            if (zzcnsVar != null) {
                com.google.android.gms.ads.internal.zzt.d().e(zzcnsVar);
            }
            if (this.f17400x != null) {
                long jB = -1;
                if (this.f17398v != -1) {
                    jB = com.google.android.gms.ads.internal.zzt.b().b() - this.f17398v;
                }
                this.f17400x.k(jB, i10);
            }
            y();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void A4(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void B() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void D7(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D8(boolean z10) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void Da(boolean z10) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.f17395s.k(zzwVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void F0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            Ua(2);
            return;
        }
        if (i11 == 1) {
            Ua(4);
        } else if (i11 != 2) {
            Ua(6);
        } else {
            Ua(3);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void G6(zzbuj zzbujVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Ha(zzbro zzbroVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void K7(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void M3(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void N() {
        Preconditions.f("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void O1(String str) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean P9(com.google.android.gms.ads.internal.client.zzl r6) throws android.os.RemoteException {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10549d     // Catch: java.lang.Throwable -> L87
            java.lang.Object r0 = r0.e()     // Catch: java.lang.Throwable -> L87
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L87
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L87
            r1 = 0
            if (r0 == 0) goto L24
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10410w9     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L87
            java.lang.Object r0 = r2.b(r0)     // Catch: java.lang.Throwable -> L87
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L87
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L87
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            com.google.android.gms.internal.ads.zzbzg r2 = r5.f17397u     // Catch: java.lang.Throwable -> L87
            int r2 = r2.f11607q     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzbaj r3 = com.google.android.gms.internal.ads.zzbar.f10421x9     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzbap r4 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L87
            java.lang.Object r3 = r4.b(r3)     // Catch: java.lang.Throwable -> L87
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L87
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L87
            if (r2 < r3) goto L3d
            if (r0 != 0) goto L42
        L3d:
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L87
        L42:
            com.google.android.gms.ads.internal.zzt.r()     // Catch: java.lang.Throwable -> L87
            android.content.Context r0 = r5.f17392p     // Catch: java.lang.Throwable -> L87
            boolean r0 = com.google.android.gms.ads.internal.util.zzs.d(r0)     // Catch: java.lang.Throwable -> L87
            if (r0 == 0) goto L64
            com.google.android.gms.ads.internal.client.zzc r0 = r6.G     // Catch: java.lang.Throwable -> L87
            if (r0 == 0) goto L52
            goto L64
        L52:
            java.lang.String r6 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.internal.ads.zzbza.d(r6)     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzeua r6 = r5.f17396t     // Catch: java.lang.Throwable -> L87
            r0 = 4
            r2 = 0
            com.google.android.gms.ads.internal.client.zze r0 = com.google.android.gms.internal.ads.zzezx.d(r0, r2, r2)     // Catch: java.lang.Throwable -> L87
            r6.v(r0)     // Catch: java.lang.Throwable -> L87
            monitor-exit(r5)
            return r1
        L64:
            boolean r0 = r5.n1()     // Catch: java.lang.Throwable -> L87
            if (r0 == 0) goto L6c
            monitor-exit(r5)
            return r1
        L6c:
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean     // Catch: java.lang.Throwable -> L87
            r0.<init>()     // Catch: java.lang.Throwable -> L87
            r5.f17393q = r0     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzeug r0 = new com.google.android.gms.internal.ads.zzeug     // Catch: java.lang.Throwable -> L87
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzeuc r1 = r5.f17395s     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = r5.f17394r     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.internal.ads.zzeuh r3 = new com.google.android.gms.internal.ads.zzeuh     // Catch: java.lang.Throwable -> L87
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L87
            boolean r6 = r1.a(r6, r2, r0, r3)     // Catch: java.lang.Throwable -> L87
            monitor-exit(r5)
            return r6
        L87:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeui.P9(com.google.android.gms.ads.internal.client.zzl):boolean");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void R() {
        Preconditions.f("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean Z9() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void aa(zzavb zzavbVar) {
        this.f17396t.C(zzavbVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void b() {
        zzcoe zzcoeVar = this.f17400x;
        if (zzcoeVar != null) {
            zzcoeVar.k(com.google.android.gms.ads.internal.zzt.b().b() - this.f17398v, 1);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle d() {
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void d6(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzq e() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void e8(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Preconditions.f("setAdSize must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh g() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb h() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdn i() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdq j() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() {
        return null;
    }

    final /* synthetic */ void l() {
        Ua(5);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void l5(zzbbp zzbbpVar) {
    }

    @VisibleForTesting
    public final void m() {
        this.f17391o.b().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeue
            @Override // java.lang.Runnable
            public final void run() {
                this.f17388o.l();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void m3(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean n1() {
        return this.f17395s.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String p() {
        return this.f17394r;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String q() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(com.google.android.gms.ads.internal.client.zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void t6(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void v2(zzbrl zzbrlVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String x() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void y() {
        Preconditions.f("destroy must be called on the main UI thread.");
        zzcoe zzcoeVar = this.f17400x;
        if (zzcoeVar != null) {
            zzcoeVar.a();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y4(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaus
    public final void zza() {
        Ua(3);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzb() {
        if (this.f17400x == null) {
            return;
        }
        this.f17398v = com.google.android.gms.ads.internal.zzt.b().b();
        int iH = this.f17400x.h();
        if (iH <= 0) {
            return;
        }
        zzcns zzcnsVar = new zzcns(this.f17391o.c(), com.google.android.gms.ads.internal.zzt.b());
        this.f17399w = zzcnsVar;
        zzcnsVar.c(iH, new Runnable() { // from class: com.google.android.gms.internal.ads.zzeuf
            @Override // java.lang.Runnable
            public final void run() {
                this.f17389o.m();
            }
        });
    }
}
