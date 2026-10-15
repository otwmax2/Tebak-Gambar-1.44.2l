package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjn extends zzasv implements zzbjp {
    zzbjn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void c() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(3, parcelP0);
    }
}
