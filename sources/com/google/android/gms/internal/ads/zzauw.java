package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzauw extends zzasv implements zzauy {
    zzauw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final com.google.android.gms.ads.internal.client.zzdn c() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        com.google.android.gms.ads.internal.client.zzdn zzdnVarSa = com.google.android.gms.ads.internal.client.zzdm.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzdnVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final void ca(IObjectWrapper iObjectWrapper, zzavf zzavfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzavfVar);
        t1(4, parcelP0);
    }
}
