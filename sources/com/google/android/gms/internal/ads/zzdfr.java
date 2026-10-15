package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdfr extends zzbdt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdgi f14547o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IObjectWrapper f14548p;

    public zzdfr(zzdgi zzdgiVar) {
        this.f14547o = zzdgiVar;
    }

    private static float Sa(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.t1(iObjectWrapper)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final void J7(zzbff zzbffVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P5)).booleanValue() && (this.f14547o.T() instanceof zzcfe)) {
            ((zzcfe) this.f14547o.T()).Ya(zzbffVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final float b() throws RemoteException {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O5)).booleanValue()) {
            return 0.0f;
        }
        if (this.f14547o.L() != 0.0f) {
            return this.f14547o.L();
        }
        if (this.f14547o.T() != null) {
            try {
                return this.f14547o.T().b();
            } catch (RemoteException e10) {
                zzbza.e("Remote exception getting video controller aspect ratio.", e10);
                return 0.0f;
            }
        }
        IObjectWrapper iObjectWrapper = this.f14548p;
        if (iObjectWrapper != null) {
            return Sa(iObjectWrapper);
        }
        zzbdx zzbdxVarW = this.f14547o.W();
        if (zzbdxVarW == null) {
            return 0.0f;
        }
        float fD = (zzbdxVarW.d() == -1 || zzbdxVarW.a() == -1) ? 0.0f : zzbdxVarW.d() / zzbdxVarW.a();
        return fD == 0.0f ? Sa(zzbdxVarW.c()) : fD;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final float c() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P5)).booleanValue() && this.f14547o.T() != null) {
            return this.f14547o.T().c();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final float e() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P5)).booleanValue() && this.f14547o.T() != null) {
            return this.f14547o.T().e();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final void e0(IObjectWrapper iObjectWrapper) {
        this.f14548p = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final com.google.android.gms.ads.internal.client.zzdq f() throws RemoteException {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P5)).booleanValue()) {
            return this.f14547o.T();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final IObjectWrapper g() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.f14548p;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbdx zzbdxVarW = this.f14547o.W();
        if (zzbdxVarW == null) {
            return null;
        }
        return zzbdxVarW.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final boolean i() throws RemoteException {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P5)).booleanValue() && this.f14547o.T() != null;
    }
}
