package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfp extends zzasv implements zzbfr {
    zzbfp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final void I(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final void b() throws RemoteException {
        t1(2, P0());
    }
}
