package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbl extends zzasv implements zzbn {
    zzbl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final boolean g() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void i5(zzl zzlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void ra(zzl zzlVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzlVar);
        parcelP0.writeInt(i10);
        t1(5, parcelP0);
    }
}
