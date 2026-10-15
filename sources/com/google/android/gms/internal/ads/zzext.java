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
public final class zzext extends zzbuv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzexp f17601o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzexf f17602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f17603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeyp f17604r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Context f17605s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzbzg f17606t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzapw f17607u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("this")
    private zzdlu f17608v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17609w = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A0)).booleanValue();

    public zzext(String str, zzexp zzexpVar, Context context, zzexf zzexfVar, zzeyp zzeypVar, zzbzg zzbzgVar, zzapw zzapwVar) {
        this.f17603q = str;
        this.f17601o = zzexpVar;
        this.f17602p = zzexfVar;
        this.f17604r = zzeypVar;
        this.f17605s = context;
        this.f17606t = zzbzgVar;
        this.f17607u = zzapwVar;
    }

    private final synchronized void Wa(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar, int i10) throws RemoteException {
        boolean z10 = false;
        if (((Boolean) zzbci.f10557l.e()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10410w9)).booleanValue()) {
                z10 = true;
            }
        }
        if (this.f17606t.f11607q < ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10421x9)).intValue() || !z10) {
            Preconditions.f("#008 Must be called on the main UI thread.");
        }
        this.f17602p.w(zzbvdVar);
        com.google.android.gms.ads.internal.zzt.r();
        if (com.google.android.gms.ads.internal.util.zzs.d(this.f17605s) && zzlVar.G == null) {
            zzbza.d("Failed to load the ad because app ID is missing.");
            this.f17602p.v(zzezx.d(4, null, null));
            return;
        }
        if (this.f17608v != null) {
            return;
        }
        zzexh zzexhVar = new zzexh(null);
        this.f17601o.i(i10);
        this.f17601o.a(zzlVar, this.f17603q, zzexhVar, new zzexs(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void B6(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Wa(zzlVar, zzbvdVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void Ba(zzbvk zzbvkVar) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzeyp zzeypVar = this.f17604r;
        zzeypVar.f17704a = zzbvkVar.f11368o;
        zzeypVar.f17705b = zzbvkVar.f11369p;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void C7(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        if (zzddVar == null) {
            this.f17602p.b(null);
        } else {
            this.f17602p.b(new zzexr(this, zzddVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void Fa(zzbuz zzbuzVar) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        this.f17602p.f(zzbuzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void R3(zzbve zzbveVar) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        this.f17602p.G(zzbveVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void Z0(boolean z10) {
        Preconditions.f("setImmersiveMode must be called on the main UI thread.");
        this.f17609w = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final com.google.android.gms.ads.internal.client.zzdn a() {
        zzdlu zzdluVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue() && (zzdluVar = this.f17608v) != null) {
            return zzdluVar.c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized String b() throws RemoteException {
        zzdlu zzdluVar = this.f17608v;
        if (zzdluVar == null || zzdluVar.c() == null) {
            return null;
        }
        return zzdluVar.c().e();
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final zzbut d() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzdlu zzdluVar = this.f17608v;
        if (zzdluVar != null) {
            return zzdluVar.i();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void e5(IObjectWrapper iObjectWrapper, boolean z10) throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.");
        if (this.f17608v == null) {
            zzbza.g("Rewarded can not be shown before loaded");
            this.f17602p.W0(zzezx.d(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10304n2)).booleanValue()) {
            this.f17607u.c().b(new Throwable().getStackTrace());
        }
        this.f17608v.n(z10, (Activity) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void f5(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Wa(zzlVar, zzbvdVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void g3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.f("setOnPaidEventListener must be called on the main UI thread.");
        this.f17602p.e(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final synchronized void l1(IObjectWrapper iObjectWrapper) throws RemoteException {
        e5(iObjectWrapper, this.f17609w);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final boolean m() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzdlu zzdluVar = this.f17608v;
        return (zzdluVar == null || zzdluVar.l()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final Bundle zzb() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzdlu zzdluVar = this.f17608v;
        return zzdluVar != null ? zzdluVar.h() : new Bundle();
    }
}
