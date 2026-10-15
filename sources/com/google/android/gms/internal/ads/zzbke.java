package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbke extends zzasv implements zzbkg {
    zzbke(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void A7(zzbka zzbkaVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbkaVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void F(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(2, parcelP0);
    }
}
