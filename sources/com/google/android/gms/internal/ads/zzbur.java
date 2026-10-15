package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbur extends zzasv implements zzbut {
    zzbur(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzbut
    public final int b() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzbut
    public final String c() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }
}
