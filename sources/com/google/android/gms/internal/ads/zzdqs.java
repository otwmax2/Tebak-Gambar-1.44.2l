package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdqs extends com.google.android.gms.ads.internal.client.zzbg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzdqm f15410o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzdqt f15411p;

    zzdqs(zzdqt zzdqtVar, zzdqm zzdqmVar) {
        this.f15411p = zzdqtVar;
        this.f15410o = zzdqmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        this.f15410o.d(this.f15411p.f15412a, zzeVar.f5841o);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void F(int i10) throws RemoteException {
        this.f15410o.d(this.f15411p.f15412a, i10);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void a() throws RemoteException {
        this.f15410o.b(this.f15411p.f15412a);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void d() throws RemoteException {
        this.f15410o.c(this.f15411p.f15412a);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void e() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void f() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void g() throws RemoteException {
        this.f15410o.e(this.f15411p.f15412a);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void h() throws RemoteException {
        this.f15410o.g(this.f15411p.f15412a);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbh
    public final void i() {
    }
}
