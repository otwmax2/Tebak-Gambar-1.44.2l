package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcof extends zzaux {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcoe f13633o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzbu f13634p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeua f13635q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f13636r = false;

    public zzcof(zzcoe zzcoeVar, com.google.android.gms.ads.internal.client.zzbu zzbuVar, zzeua zzeuaVar) {
        this.f13633o = zzcoeVar;
        this.f13634p = zzbuVar;
        this.f13635q = zzeuaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final com.google.android.gms.ads.internal.client.zzbu b() {
        return this.f13634p;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final com.google.android.gms.ads.internal.client.zzdn c() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10330p6)).booleanValue()) {
            return this.f13633o.c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void ca(IObjectWrapper iObjectWrapper, zzavf zzavfVar) {
        try {
            this.f13635q.D(zzavfVar);
            this.f13633o.j((Activity) ObjectWrapper.t1(iObjectWrapper), zzavfVar, this.f13636r);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void h5(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.f("setOnPaidEventListener must be called on the main UI thread.");
        zzeua zzeuaVar = this.f13635q;
        if (zzeuaVar != null) {
            zzeuaVar.w(zzdgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void ia(boolean z10) {
        this.f13636r = z10;
    }
}
