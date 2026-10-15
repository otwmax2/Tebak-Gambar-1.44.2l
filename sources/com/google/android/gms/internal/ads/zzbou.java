package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbou extends zzasv implements zzbow {
    zzbou(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void q5(zzbnu zzbnuVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbnuVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString("Adapter returned null.");
        t1(2, parcelP0);
    }
}
