package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbuh extends zzasv implements zzbuj {
    zzbuh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void O2(zzbud zzbudVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbudVar);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void c() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void f() throws RemoteException {
        t1(6, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void g() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void h() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void i() throws RemoteException {
        t1(8, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void j() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void w(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(7, parcelP0);
    }
}
