package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbew extends zzasv implements zzbey {
    zzbew(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    public final void z1(zzbeo zzbeoVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbeoVar);
        t1(1, parcelP0);
    }
}
