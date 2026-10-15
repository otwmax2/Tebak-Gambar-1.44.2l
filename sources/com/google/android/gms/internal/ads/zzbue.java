package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbue extends zzasv {
    zzbue(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void A9(zzbud zzbudVar, String str, String str2) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbudVar);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        t1(2, parcelP0);
    }
}
