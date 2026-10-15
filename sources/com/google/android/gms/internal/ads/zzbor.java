package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbor extends zzasv implements zzbot {
    zzbor(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbot
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbot
    public final void e() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbot
    public final void s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString("Adapter returned null.");
        t1(3, parcelP0);
    }
}
