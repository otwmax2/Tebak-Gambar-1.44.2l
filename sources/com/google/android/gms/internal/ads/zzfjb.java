package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjb extends zzasv {
    zzfjb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfiz A9(zzfix zzfixVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzfixVar);
        Parcel parcelX0 = X0(1, parcelP0);
        zzfiz zzfizVar = (zzfiz) zzasx.a(parcelX0, zzfiz.CREATOR);
        parcelX0.recycle();
        return zzfizVar;
    }

    public final zzfji Ra(zzfjg zzfjgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzfjgVar);
        Parcel parcelX0 = X0(3, parcelP0);
        zzfji zzfjiVar = (zzfji) zzasx.a(parcelX0, zzfji.CREATOR);
        parcelX0.recycle();
        return zzfjiVar;
    }

    public final void Sa(zzfiu zzfiuVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzfiuVar);
        t1(2, parcelP0);
    }
}
