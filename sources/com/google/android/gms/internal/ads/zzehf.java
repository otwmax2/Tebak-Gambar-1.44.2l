package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzehf extends com.google.android.gms.ads.internal.client.zzbm {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeim f16664o;

    public zzehf(Context context, zzcgd zzcgdVar, zzeyv zzeyvVar, zzdgt zzdgtVar, com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        zzeio zzeioVar = new zzeio(zzdgtVar, zzcgdVar.A());
        zzeioVar.e(zzbhVar);
        this.f16664o = new zzeim(new zzeiy(zzcgdVar, context, zzeioVar, zzeyvVar), zzeyvVar.i());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized String b() {
        return this.f16664o.a();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized String c() {
        return this.f16664o.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized boolean g() throws RemoteException {
        return this.f16664o.e();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void i5(com.google.android.gms.ads.internal.client.zzl zzlVar) throws RemoteException {
        this.f16664o.d(zzlVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final synchronized void ra(com.google.android.gms.ads.internal.client.zzl zzlVar, int i10) throws RemoteException {
        this.f16664o.d(zzlVar, i10);
    }
}
