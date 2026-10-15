package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeij extends com.google.android.gms.ads.internal.client.zzbt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzq f16711o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f16712p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzewf f16713q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f16714r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzbzg f16715s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzeib f16716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzexf f16717u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzapw f16718v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @GuardedBy("this")
    private zzdcv f16719w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f16720x = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A0)).booleanValue();

    public zzeij(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzewf zzewfVar, zzeib zzeibVar, zzexf zzexfVar, zzbzg zzbzgVar, zzapw zzapwVar) {
        this.f16711o = zzqVar;
        this.f16714r = str;
        this.f16712p = context;
        this.f16713q = zzewfVar;
        this.f16716t = zzeibVar;
        this.f16717u = zzexfVar;
        this.f16715s = zzbzgVar;
        this.f16718v = zzapwVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final synchronized boolean Va() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzdcv r0 = r1.f16719w     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Le
            boolean r0 = r0.h()     // Catch: java.lang.Throwable -> L10
            if (r0 != 0) goto Le
            r0 = 1
        Lc:
            monitor-exit(r1)
            return r0
        Le:
            r0 = 0
            goto Lc
        L10:
            r0 = move-exception
            monitor-exit(r1)
            goto L14
        L13:
            throw r0
        L14:
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeij.Va():boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void A4(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void B() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.f16716t.o(zzbkVar);
        P9(zzlVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D7(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void D8(boolean z10) {
        Preconditions.f("setImmersiveMode must be called on the main UI thread.");
        this.f16720x = z10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Da(boolean z10) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(com.google.android.gms.ads.internal.client.zzw zzwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void F0() {
        Preconditions.f("showInterstitial must be called on the main UI thread.");
        if (this.f16719w == null) {
            zzbza.g("Interstitial can not be shown before loaded.");
            this.f16716t.W0(zzezx.d(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue()) {
                this.f16718v.c().b(new Throwable().getStackTrace());
            }
            this.f16719w.i(this.f16720x, null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void G6(zzbuj zzbujVar) {
        this.f16717u.C(zzbujVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void Ha(zzbro zzbroVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void K7(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.f("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void M3(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void N() {
        Preconditions.f("pause must be called on the main UI thread.");
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar != null) {
            zzdcvVar.d().c1(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void O1(String str) {
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean P9(com.google.android.gms.ads.internal.client.zzl r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10554i     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r0 = r0.e()     // Catch: java.lang.Throwable -> L8c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L8c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L8c
            r1 = 0
            if (r0 == 0) goto L24
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10410w9     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r0 = r2.b(r0)     // Catch: java.lang.Throwable -> L8c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L8c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L8c
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            com.google.android.gms.internal.ads.zzbzg r2 = r5.f16715s     // Catch: java.lang.Throwable -> L8c
            int r2 = r2.f11607q     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzbaj r3 = com.google.android.gms.internal.ads.zzbar.f10421x9     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzbap r4 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r3 = r4.b(r3)     // Catch: java.lang.Throwable -> L8c
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L8c
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L8c
            if (r2 < r3) goto L3d
            if (r0 != 0) goto L42
        L3d:
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L8c
        L42:
            com.google.android.gms.ads.internal.zzt.r()     // Catch: java.lang.Throwable -> L8c
            android.content.Context r0 = r5.f16712p     // Catch: java.lang.Throwable -> L8c
            boolean r0 = com.google.android.gms.ads.internal.util.zzs.d(r0)     // Catch: java.lang.Throwable -> L8c
            r2 = 0
            if (r0 == 0) goto L65
            com.google.android.gms.ads.internal.client.zzc r0 = r6.G     // Catch: java.lang.Throwable -> L8c
            if (r0 != 0) goto L65
            java.lang.String r6 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.internal.ads.zzbza.d(r6)     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzeib r6 = r5.f16716t     // Catch: java.lang.Throwable -> L8c
            if (r6 == 0) goto L63
            r0 = 4
            com.google.android.gms.ads.internal.client.zze r0 = com.google.android.gms.internal.ads.zzezx.d(r0, r2, r2)     // Catch: java.lang.Throwable -> L8c
            r6.v(r0)     // Catch: java.lang.Throwable -> L8c
        L63:
            monitor-exit(r5)
            return r1
        L65:
            boolean r0 = r5.Va()     // Catch: java.lang.Throwable -> L8c
            if (r0 == 0) goto L6d
            monitor-exit(r5)
            return r1
        L6d:
            android.content.Context r0 = r5.f16712p     // Catch: java.lang.Throwable -> L8c
            boolean r1 = r6.f5911t     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzezr.a(r0, r1)     // Catch: java.lang.Throwable -> L8c
            r5.f16719w = r2     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzewf r0 = r5.f16713q     // Catch: java.lang.Throwable -> L8c
            java.lang.String r1 = r5.f16714r     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzevy r2 = new com.google.android.gms.internal.ads.zzevy     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.ads.internal.client.zzq r3 = r5.f16711o     // Catch: java.lang.Throwable -> L8c
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L8c
            com.google.android.gms.internal.ads.zzeii r3 = new com.google.android.gms.internal.ads.zzeii     // Catch: java.lang.Throwable -> L8c
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L8c
            boolean r6 = r0.a(r6, r1, r2, r3)     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r5)
            return r6
        L8c:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeij.P9(com.google.android.gms.ads.internal.client.zzl):boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void R() {
        Preconditions.f("resume must be called on the main UI thread.");
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar != null) {
            zzdcvVar.d().d1(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean Z9() {
        Preconditions.f("isLoaded must be called on the main UI thread.");
        return Va();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void aa(zzavb zzavbVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle d() {
        Preconditions.f("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void d6(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.f("setAppEventListener must be called on the main UI thread.");
        this.f16716t.C(zzcbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzq e() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void e8(com.google.android.gms.ads.internal.client.zzq zzqVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh g() {
        return this.f16716t.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb h() {
        return this.f16716t.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdn i() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue()) {
            return null;
        }
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar == null) {
            return null;
        }
        return zzdcvVar.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzdq j() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void l5(zzbbp zzbbpVar) {
        Preconditions.f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f16713q.h(zzbbpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void m3(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean n1() {
        return this.f16713q.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        Preconditions.f("setAdListener must be called on the main UI thread.");
        this.f16716t.e(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String p() {
        return this.f16714r;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String q() {
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar == null || zzdcvVar.c() == null) {
            return null;
        }
        return zzdcvVar.c().e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(com.google.android.gms.ads.internal.client.zzci zzciVar) {
        this.f16716t.D(zzciVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.f("setPaidEventListener must be called on the main UI thread.");
        this.f16716t.w(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void t6(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void v2(zzbrl zzbrlVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String x() {
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar == null || zzdcvVar.c() == null) {
            return null;
        }
        return zzdcvVar.c().e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void y() {
        Preconditions.f("destroy must be called on the main UI thread.");
        zzdcv zzdcvVar = this.f16719w;
        if (zzdcvVar != null) {
            zzdcvVar.d().Y0(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void y4(IObjectWrapper iObjectWrapper) {
        if (this.f16719w == null) {
            zzbza.g("Interstitial can not be shown before loaded.");
            this.f16716t.W0(zzezx.d(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue()) {
            this.f16718v.c().b(new Throwable().getStackTrace());
        }
        this.f16719w.i(this.f16720x, (Activity) ObjectWrapper.t1(iObjectWrapper));
    }
}
