package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbum extends zzasv implements zzbuo {
    zzbum(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void B0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void K2(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void Q3(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(11, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void T0(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeInt(i10);
        t1(9, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void e0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void ja(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void t7(IObjectWrapper iObjectWrapper, zzbup zzbupVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzbupVar);
        t1(7, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void u0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(8, parcelP0);
    }
}
