package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbsx extends zzasv implements zzbsz {
    zzbsx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void I2(zzbtn zzbtnVar, zzbtj zzbtjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbtnVar);
        zzasx.g(parcelP0, zzbtjVar);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void J2(String str, zzbtj zzbtjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbtjVar);
        t1(7, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void L4(zzbtn zzbtnVar, zzbtj zzbtjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbtnVar);
        zzasx.g(parcelP0, zzbtjVar);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void k6(zzbtn zzbtnVar, zzbtj zzbtjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbtnVar);
        zzasx.g(parcelP0, zzbtjVar);
        t1(5, parcelP0);
    }
}
