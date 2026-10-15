package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbux extends zzasv implements zzbuz {
    zzbux(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void Q8(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void b() throws RemoteException {
        t1(7, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void c() throws RemoteException {
        t1(6, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void e() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void g8(zzbut zzbutVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbutVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void h() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    public final void j0(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(4, parcelP0);
    }
}
