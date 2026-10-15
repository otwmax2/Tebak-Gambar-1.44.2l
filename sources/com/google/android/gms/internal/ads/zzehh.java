package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzehh extends com.google.android.gms.ads.internal.client.zzbt implements zzcxe {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f16666o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeuo f16667p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f16668q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeib f16669r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzq f16670s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f16671t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzbzg f16672u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("this")
    private zzcok f16673v;

    public zzehh(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, String str, zzeuo zzeuoVar, zzeib zzeibVar, zzbzg zzbzgVar) {
        this.f16666o = context;
        this.f16667p = zzeuoVar;
        this.f16670s = zzqVar;
        this.f16668q = str;
        this.f16669r = zzeibVar;
        this.f16671t = zzeuoVar.h();
        this.f16672u = zzbzgVar;
        zzeuoVar.o(this);
    }

    private final synchronized void Va(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.f16671t.I(zzqVar);
        this.f16671t.N(this.f16670s.B);
    }

    private final synchronized boolean Wa(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        if (Xa()) {
            Preconditions.f("loadAd must be called on the main UI thread.");
        }
        com.google.android.gms.ads.internal.zzt.r();
        if (!com.google.android.gms.ads.internal.util.zzs.d(this.f16666o) || zzlVar.G != null) {
            zzezr.a(this.f16666o, zzlVar.f5911t);
            return this.f16667p.a(zzlVar, this.f16668q, null, new zzehg(this));
        }
        zzbza.d("Failed to load the ad because app ID is missing.");
        zzeib zzeibVar = this.f16669r;
        if (zzeibVar != null) {
            zzeibVar.v(zzezx.d(4, null, null));
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean Xa() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10551f
            java.lang.Object r0 = r0.e()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L24
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10410w9
            com.google.android.gms.internal.ads.zzbap r3 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r0 = r3.b(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            com.google.android.gms.internal.ads.zzbzg r3 = r6.f16672u
            int r3 = r3.f11607q
            com.google.android.gms.internal.ads.zzbaj r4 = com.google.android.gms.internal.ads.zzbar.f10421x9
            com.google.android.gms.internal.ads.zzbap r5 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r4 = r5.b(r4)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            if (r3 < r4) goto L3f
            if (r0 != 0) goto L3e
            goto L3f
        L3e:
            return r2
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehh.Xa():boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void A4(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void B() {
        Preconditions.f("recordManualImpression must be called on the main UI thread.");
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar != null) {
            zzcokVar.m();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D3(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void D7(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        Preconditions.f("setCorrelationIdProvider must be called on the main UI thread");
        this.f16671t.q(zzcfVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void D8(boolean z10) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void Da(boolean z10) {
        if (Xa()) {
            Preconditions.f("setManualImpressionsEnabled must be called from the main thread.");
        }
        this.f16671t.P(z10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void E7(com.google.android.gms.ads.internal.client.zzw zzwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void F0() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void G6(zzbuj zzbujVar) {
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
        if (Xa()) {
            Preconditions.f("setAdListener must be called on the main UI thread.");
        }
        this.f16667p.n(zzbeVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0037 A[Catch: all -> 0x004c, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003c, B:12:0x0040, B:9:0x0037), top: B:20:0x0001 }] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void N() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10552g     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.e()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10388u9     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.b(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbzg r0 = r3.f16672u     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.f11607q     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.f10432y9     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "pause must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcok r0 = r3.f16673v     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzcvn r0 = r0.d()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.c1(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehh.N():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void O1(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean P9(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        Va(this.f16670s);
        return Wa(zzlVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0037 A[Catch: all -> 0x004c, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003c, B:12:0x0040, B:9:0x0037), top: B:20:0x0001 }] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void R() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10553h     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.e()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10366s9     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.b(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbzg r0 = r3.f16672u     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.f11607q     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.f10432y9     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "resume must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcok r0 = r3.f16673v     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzcvn r0 = r0.d()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.d1(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehh.R():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean Z9() {
        return false;
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
        if (Xa()) {
            Preconditions.f("setAppEventListener must be called on the main UI thread.");
        }
        this.f16669r.C(zzcbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzq e() {
        Preconditions.f("getAdSize must be called on the main UI thread.");
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar != null) {
            return zzezb.a(this.f16666o, Collections.singletonList(zzcokVar.k()));
        }
        return this.f16671t.x();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void e8(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Preconditions.f("setAdSize must be called on the main UI thread.");
        this.f16671t.I(zzqVar);
        this.f16670s = zzqVar;
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar != null) {
            zzcokVar.n(this.f16667p.c(), zzqVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh g() {
        return this.f16669r.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb h() {
        return this.f16669r.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdn i() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue()) {
            return null;
        }
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar == null) {
            return null;
        }
        return zzcokVar.c();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdq j() {
        Preconditions.f("getVideoController must be called from the main thread.");
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar == null) {
            return null;
        }
        return zzcokVar.j();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper k() {
        if (Xa()) {
            Preconditions.f("getAdFrame must be called on the main UI thread.");
        }
        return ObjectWrapper.Q4(this.f16667p.c());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void l5(zzbbp zzbbpVar) {
        Preconditions.f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f16667p.p(zzbbpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void m3(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean n1() {
        return this.f16667p.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void o6(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        if (Xa()) {
            Preconditions.f("setAdListener must be called on the main UI thread.");
        }
        this.f16669r.e(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String p() {
        return this.f16668q;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String q() {
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar == null || zzcokVar.c() == null) {
            return null;
        }
        return zzcokVar.c().e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void q2(com.google.android.gms.ads.internal.client.zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void s3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        if (Xa()) {
            Preconditions.f("setPaidEventListener must be called on the main UI thread.");
        }
        this.f16669r.w(zzdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void t6(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
        if (Xa()) {
            Preconditions.f("setVideoOptions must be called on the main UI thread.");
        }
        this.f16671t.f(zzflVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void v2(zzbrl zzbrlVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String x() {
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar == null || zzcokVar.c() == null) {
            return null;
        }
        return zzcokVar.c().e();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0037 A[Catch: all -> 0x0047, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:10:0x003c, B:12:0x0040, B:9:0x0037), top: B:20:0x0001 }] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void y() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbbw r0 = com.google.android.gms.internal.ads.zzbci.f10550e     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r0.e()     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10377t9     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r1.b(r0)     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbzg r0 = r3.f16672u     // Catch: java.lang.Throwable -> L47
            int r0 = r0.f11607q     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.f10432y9     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L47
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L47
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "destroy must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L47
        L3c:
            com.google.android.gms.internal.ads.zzcok r0 = r3.f16673v     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L45
            r0.a()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r3)
            return
        L45:
            monitor-exit(r3)
            return
        L47:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehh.y():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void y4(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzcxe
    public final synchronized void zza() {
        if (!this.f16667p.q()) {
            this.f16667p.m();
            return;
        }
        com.google.android.gms.ads.internal.client.zzq zzqVarX = this.f16671t.x();
        zzcok zzcokVar = this.f16673v;
        if (zzcokVar != null && zzcokVar.l() != null && this.f16671t.o()) {
            zzqVarX = zzezb.a(this.f16666o, Collections.singletonList(this.f16673v.l()));
        }
        Va(zzqVarX);
        try {
            Wa(this.f16671t.v());
        } catch (RemoteException unused) {
            zzbza.g("Failed to refresh the banner ad.");
        }
    }
}
