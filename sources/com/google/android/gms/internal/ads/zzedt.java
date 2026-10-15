package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzedt extends zzbov {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeaw f16352o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzedu f16353p;

    /* synthetic */ zzedt(zzedu zzeduVar, zzeaw zzeawVar, zzeds zzedsVar) {
        this.f16353p = zzeduVar;
        this.f16352o = zzeawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzecq) this.f16352o.f16128c).Y2(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void q5(zzbnu zzbnuVar) throws RemoteException {
        this.f16353p.f16356c = zzbnuVar;
        ((zzecq) this.f16352o.f16128c).m();
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void s(String str) throws RemoteException {
        ((zzecq) this.f16352o.f16128c).C2(0, str);
    }
}
