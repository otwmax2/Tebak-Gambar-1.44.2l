package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdn extends zzasv implements zzbdp {
    zzbdn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbdp
    public final String e() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.zzbdp
    public final List f() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        ArrayList arrayListB = zzasx.b(parcelX0);
        parcelX0.recycle();
        return arrayListB;
    }
}
