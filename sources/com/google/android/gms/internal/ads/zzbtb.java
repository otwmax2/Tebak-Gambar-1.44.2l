package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbtb extends zzasv implements zzbtd {
    zzbtb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzbtd
    public final void X9(zzbsr zzbsrVar, zzbtg zzbtgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbsrVar);
        zzasx.g(parcelP0, zzbtgVar);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbtd
    public final void w2(zzbsv zzbsvVar, zzbtg zzbtgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbsvVar);
        zzasx.g(parcelP0, zzbtgVar);
        t1(3, parcelP0);
    }
}
