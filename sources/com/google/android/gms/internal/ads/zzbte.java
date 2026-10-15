package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbte extends zzasv implements zzbtg {
    zzbte(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void S0(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, parcelFileDescriptor);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void q1(com.google.android.gms.ads.internal.util.zzaz zzazVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzazVar);
        t1(2, parcelP0);
    }
}
