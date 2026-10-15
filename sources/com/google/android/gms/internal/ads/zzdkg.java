package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkg extends zzbjz implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbdi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f14985o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzdq f14986p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzdgd f14987q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f14988r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f14989s = false;

    public zzdkg(zzdgd zzdgdVar, zzdgi zzdgiVar) {
        this.f14985o = zzdgiVar.P();
        this.f14986p = zzdgiVar.T();
        this.f14987q = zzdgdVar;
        if (zzdgiVar.b0() != null) {
            zzdgiVar.b0().y0(this);
        }
    }

    private static final void Sa(zzbkd zzbkdVar, int i10) {
        try {
            zzbkdVar.F(i10);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    private final void e() {
        View view;
        zzdgd zzdgdVar = this.f14987q;
        if (zzdgdVar == null || (view = this.f14985o) == null) {
            return;
        }
        zzdgdVar.h(view, Collections.emptyMap(), Collections.emptyMap(), zzdgd.D(this.f14985o));
    }

    private final void f() {
        View view = this.f14985o;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f14985o);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbka
    public final void N8(IObjectWrapper iObjectWrapper, zzbkd zzbkdVar) throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.");
        if (this.f14988r) {
            zzbza.d("Instream ad can not be shown after destroy().");
            Sa(zzbkdVar, 2);
            return;
        }
        View view = this.f14985o;
        if (view == null || this.f14986p == null) {
            zzbza.d("Instream internal error: ".concat(view == null ? "can not get video view." : "can not get video controller."));
            Sa(zzbkdVar, 0);
            return;
        }
        if (this.f14989s) {
            zzbza.d("Instream ad should not be used again.");
            Sa(zzbkdVar, 1);
            return;
        }
        this.f14989s = true;
        f();
        ((ViewGroup) ObjectWrapper.t1(iObjectWrapper)).addView(this.f14985o, new ViewGroup.LayoutParams(-1, -1));
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.a(this.f14985o, this);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.b(this.f14985o, this);
        e();
        try {
            zzbkdVar.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbka
    public final zzbdu a() {
        Preconditions.f("#008 Must be called on the main UI thread.");
        if (this.f14988r) {
            zzbza.d("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzdgd zzdgdVar = this.f14987q;
        if (zzdgdVar == null || zzdgdVar.N() == null) {
            return null;
        }
        return zzdgdVar.N().a();
    }

    @Override // com.google.android.gms.internal.ads.zzbka
    public final void d() throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.");
        f();
        zzdgd zzdgdVar = this.f14987q;
        if (zzdgdVar != null) {
            zzdgdVar.a();
        }
        this.f14987q = null;
        this.f14985o = null;
        this.f14986p = null;
        this.f14988r = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        e();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        e();
    }

    @Override // com.google.android.gms.internal.ads.zzbka
    public final com.google.android.gms.ads.internal.client.zzdq zzb() throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.");
        if (!this.f14988r) {
            return this.f14986p;
        }
        zzbza.d("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbka
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.f("#008 Must be called on the main UI thread.");
        N8(iObjectWrapper, new zzdkf(this));
    }
}
