package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzavs extends zzasv {
    zzavs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long A9(zzavq zzavqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzavqVar);
        Parcel parcelX0 = X0(3, parcelP0);
        long j10 = parcelX0.readLong();
        parcelX0.recycle();
        return j10;
    }

    public final zzavn Ra(zzavq zzavqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzavqVar);
        Parcel parcelX0 = X0(1, parcelP0);
        zzavn zzavnVar = (zzavn) zzasx.a(parcelX0, zzavn.CREATOR);
        parcelX0.recycle();
        return zzavnVar;
    }

    public final zzavn Sa(zzavq zzavqVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzavqVar);
        Parcel parcelX0 = X0(2, parcelP0);
        zzavn zzavnVar = (zzavn) zzasx.a(parcelX0, zzavn.CREATOR);
        parcelX0.recycle();
        return zzavnVar;
    }
}
