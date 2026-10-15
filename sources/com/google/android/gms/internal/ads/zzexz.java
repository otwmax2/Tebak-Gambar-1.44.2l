package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzexz extends zzbuf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzexp f17620o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzexf f17621p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeyp f17622q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    private zzdlu f17623r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17624s = false;

    public zzexz(zzexp zzexpVar, zzexf zzexfVar, zzeyp zzeypVar) {
        this.f17620o = zzexpVar;
        this.f17621p = zzexfVar;
        this.f17622q = zzeypVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final synchronized boolean E() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzdlu r0 = r1.f17623r     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Le
            boolean r0 = r0.k()     // Catch: java.lang.Throwable -> L10
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzexz.E():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void B0(IObjectWrapper iObjectWrapper) {
        Preconditions.f("destroy must be called on the main UI thread.");
        Context context = null;
        this.f17621p.b(null);
        if (this.f17623r != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.t1(iObjectWrapper);
            }
            this.f17623r.d().Y0(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void G0(boolean z10) {
        Preconditions.f("setImmersiveMode must be called on the main UI thread.");
        this.f17624s = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void V8(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        Preconditions.f("setAdMetadataListener can only be called from the UI thread.");
        if (zzbyVar == null) {
            this.f17621p.b(null);
        } else {
            this.f17621p.b(new zzexy(this, zzbyVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized com.google.android.gms.ads.internal.client.zzdn a() throws RemoteException {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue()) {
            return null;
        }
        zzdlu zzdluVar = this.f17623r;
        if (zzdluVar == null) {
            return null;
        }
        return zzdluVar.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void b() throws RemoteException {
        B0(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void b0(String str) throws RemoteException {
        Preconditions.f("setUserId must be called on the main UI thread.");
        this.f17622q.f17704a = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031 A[Catch: all -> 0x0063, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0019, B:12:0x0022, B:13:0x002b, B:15:0x0031, B:19:0x0045), top: B:25:0x0001, inners: #1 }] */
    @Override // com.google.android.gms.internal.ads.zzbug
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void b4(com.google.android.gms.internal.ads.zzbuk r5) throws android.os.RemoteException {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.f(r0)     // Catch: java.lang.Throwable -> L63
            java.lang.String r0 = r5.f11355p     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.V4     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L63
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L63
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L63
            if (r1 == 0) goto L2b
            if (r0 != 0) goto L19
            goto L2b
        L19:
            boolean r0 = java.util.regex.Pattern.matches(r1, r0)     // Catch: java.lang.RuntimeException -> L21 java.lang.Throwable -> L63
            if (r0 == 0) goto L2b
            monitor-exit(r4)
            return
        L21:
            r0 = move-exception
            java.lang.String r1 = "NonagonUtil.isPatternMatched"
            com.google.android.gms.internal.ads.zzbyj r2 = com.google.android.gms.ads.internal.zzt.q()     // Catch: java.lang.Throwable -> L63
            r2.u(r0, r1)     // Catch: java.lang.Throwable -> L63
        L2b:
            boolean r0 = r4.E()     // Catch: java.lang.Throwable -> L63
            if (r0 == 0) goto L45
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.X4     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L63
            java.lang.Object r0 = r1.b(r0)     // Catch: java.lang.Throwable -> L63
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L63
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L63
            if (r0 != 0) goto L45
            monitor-exit(r4)
            return
        L45:
            com.google.android.gms.internal.ads.zzexh r0 = new com.google.android.gms.internal.ads.zzexh     // Catch: java.lang.Throwable -> L63
            r1 = 0
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L63
            r4.f17623r = r1     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzexp r1 = r4.f17620o     // Catch: java.lang.Throwable -> L63
            r2 = 1
            r1.i(r2)     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzexp r1 = r4.f17620o     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.ads.internal.client.zzl r2 = r5.f11354o     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = r5.f11355p     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzexx r3 = new com.google.android.gms.internal.ads.zzexx     // Catch: java.lang.Throwable -> L63
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L63
            r1.a(r2, r5, r0, r3)     // Catch: java.lang.Throwable -> L63
            monitor-exit(r4)
            return
        L63:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzexz.b4(com.google.android.gms.internal.ads.zzbuk):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void c0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.f("showAd must be called on the main UI thread.");
        if (this.f17623r != null) {
            Activity activity = null;
            if (iObjectWrapper != null) {
                Object objT1 = ObjectWrapper.t1(iObjectWrapper);
                if (objT1 instanceof Activity) {
                    activity = (Activity) objT1;
                }
            }
            this.f17623r.n(this.f17624s, activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void c1(IObjectWrapper iObjectWrapper) {
        Preconditions.f("resume must be called on the main UI thread.");
        if (this.f17623r != null) {
            this.f17623r.d().d1(iObjectWrapper == null ? null : (Context) ObjectWrapper.t1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized String d() throws RemoteException {
        zzdlu zzdluVar = this.f17623r;
        if (zzdluVar == null || zzdluVar.c() == null) {
            return null;
        }
        return zzdluVar.c().e();
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void f() {
        u0(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void f4(zzbuj zzbujVar) throws RemoteException {
        Preconditions.f("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f17621p.C(zzbujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void h() {
        c1(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void l6(String str) throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.: setCustomData");
        this.f17622q.f17705b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void o3(zzbue zzbueVar) {
        Preconditions.f("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f17621p.D(zzbueVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final boolean q() throws RemoteException {
        Preconditions.f("isLoaded must be called on the main UI thread.");
        return E();
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void r() throws RemoteException {
        c0(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final synchronized void u0(IObjectWrapper iObjectWrapper) {
        Preconditions.f("pause must be called on the main UI thread.");
        if (this.f17623r != null) {
            this.f17623r.d().c1(iObjectWrapper == null ? null : (Context) ObjectWrapper.t1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final boolean x() {
        zzdlu zzdluVar = this.f17623r;
        return zzdluVar != null && zzdluVar.m();
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final Bundle zzb() {
        Preconditions.f("getAdMetadata can only be called from the UI thread.");
        zzdlu zzdluVar = this.f17623r;
        return zzdluVar != null ? zzdluVar.h() : new Bundle();
    }
}
