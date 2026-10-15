package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbuu extends zzasv implements zzbuw {
    zzbuu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void B6(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, zzbvdVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void Fa(zzbuz zzbuzVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbuzVar);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final com.google.android.gms.ads.internal.client.zzdn a() throws RemoteException {
        Parcel parcelX0 = X0(12, P0());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarSa = com.google.android.gms.ads.internal.client.zzdm.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdnVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void f5(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        zzasx.g(parcelP0, zzbvdVar);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void l1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(5, parcelP0);
    }
}
