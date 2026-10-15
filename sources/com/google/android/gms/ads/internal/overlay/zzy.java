package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbrb;
import com.google.android.gms.internal.ads.zzdcc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzy extends zzbrb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AdOverlayInfoParcel f6031o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Activity f6032p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f6033q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f6034r = false;

    public zzy(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f6031o = adOverlayInfoParcel;
        this.f6032p = activity;
    }

    private final synchronized void zzb() {
        if (this.f6034r) {
            return;
        }
        zzo zzoVar = this.f6031o.f5971q;
        if (zzoVar != null) {
            zzoVar.G(4);
        }
        this.f6034r = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final boolean H() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void V7(Bundle bundle) {
        zzo zzoVar;
        if (((Boolean) zzba.c().b(zzbar.f10200d8)).booleanValue()) {
            this.f6032p.requestWindowFeature(1);
        }
        boolean z10 = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z10 = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6031o;
        if (adOverlayInfoParcel == null) {
            this.f6032p.finish();
            return;
        }
        if (z10) {
            this.f6032p.finish();
            return;
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.f5970p;
            if (zzaVar != null) {
                zzaVar.w0();
            }
            zzdcc zzdccVar = this.f6031o.M;
            if (zzdccVar != null) {
                zzdccVar.p();
            }
            if (this.f6032p.getIntent() != null && this.f6032p.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzoVar = this.f6031o.f5971q) != null) {
                zzoVar.zzb();
            }
        }
        com.google.android.gms.ads.internal.zzt.j();
        Activity activity = this.f6032p;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f6031o;
        zzc zzcVar = adOverlayInfoParcel2.f5969o;
        if (zza.b(activity, zzcVar, adOverlayInfoParcel2.f5977w, zzcVar.f5994w)) {
            return;
        }
        this.f6032p.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void e0(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void f() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void i0(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f6033q);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void j() throws RemoteException {
        if (this.f6032p.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void k() throws RemoteException {
        zzo zzoVar = this.f6031o.f5971q;
        if (zzoVar != null) {
            zzoVar.X0();
        }
        if (this.f6032p.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m5(int i10, int i11, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void n() throws RemoteException {
        if (this.f6033q) {
            this.f6032p.finish();
            return;
        }
        this.f6033q = true;
        zzo zzoVar = this.f6031o.f5971q;
        if (zzoVar != null) {
            zzoVar.Q4();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void p() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void q() throws RemoteException {
        if (this.f6032p.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void t() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void x() throws RemoteException {
        zzo zzoVar = this.f6031o.f5971q;
        if (zzoVar != null) {
            zzoVar.b();
        }
    }
}
