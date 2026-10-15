package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbje extends zzasv {
    zzbje(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void A9(zzbiy zzbiyVar, zzbjd zzbjdVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbiyVar);
        zzasx.g(parcelP0, zzbjdVar);
        Q4(2, parcelP0);
    }
}
