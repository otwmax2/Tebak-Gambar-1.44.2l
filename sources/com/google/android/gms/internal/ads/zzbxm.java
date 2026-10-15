package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbxm extends zzasv implements zzbxo {
    zzbxm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbxo
    public final void E3(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzasx.e(parcelP0, bundle);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbxo
    public final void u(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(2, parcelP0);
    }
}
