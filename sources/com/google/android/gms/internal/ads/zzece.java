package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzece extends zzbop {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeaw f16225o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzecf f16226p;

    /* synthetic */ zzece(zzecf zzecfVar, zzeaw zzeawVar, zzecd zzecdVar) {
        this.f16226p = zzecfVar;
        this.f16225o = zzeawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzecq) this.f16225o.f16128c).Y2(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void G5(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.f16226p.f16229c = (View) ObjectWrapper.t1(iObjectWrapper);
        ((zzecq) this.f16225o.f16128c).m();
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void c2(zzbno zzbnoVar) throws RemoteException {
        this.f16226p.f16230d = zzbnoVar;
        ((zzecq) this.f16225o.f16128c).m();
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void s(String str) throws RemoteException {
        ((zzecq) this.f16225o.f16128c).C2(0, str);
    }
}
