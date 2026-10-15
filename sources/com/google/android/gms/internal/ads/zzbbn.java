package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbbn extends zzasv implements zzbbp {
    zzbbn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbbp
    public final void S4(zzbbm zzbbmVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbbmVar);
        t1(1, parcelP0);
    }
}
