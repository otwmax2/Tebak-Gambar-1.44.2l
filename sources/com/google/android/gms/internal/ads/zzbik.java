package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbik extends zzasv implements zzbim {
    zzbik(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbim
    public final void u(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(1, parcelP0);
    }
}
