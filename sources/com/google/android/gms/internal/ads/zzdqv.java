package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdqv extends zzbvc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzdqx f15414o;

    zzdqv(zzdqx zzdqxVar) {
        this.f15414o = zzdqxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdqx zzdqxVar = this.f15414o;
        zzdqxVar.f15417b.m(zzdqxVar.f15416a, zzeVar.f5841o);
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void F(int i10) throws RemoteException {
        zzdqx zzdqxVar = this.f15414o;
        zzdqxVar.f15417b.m(zzdqxVar.f15416a, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void e() throws RemoteException {
        zzdqx zzdqxVar = this.f15414o;
        zzdqxVar.f15417b.p(zzdqxVar.f15416a);
    }
}
