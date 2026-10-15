package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.IAccountAccessor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zaf extends com.google.android.gms.internal.base.zaa {
    zaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void A9(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(7, parcelP0);
    }

    public final void Ra(IAccountAccessor iAccountAccessor, int i10, boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.base.zac.d(parcelP0, iAccountAccessor);
        parcelP0.writeInt(i10);
        com.google.android.gms.internal.base.zac.b(parcelP0, z10);
        t1(9, parcelP0);
    }

    public final void Sa(zai zaiVar, zae zaeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.base.zac.c(parcelP0, zaiVar);
        com.google.android.gms.internal.base.zac.d(parcelP0, zaeVar);
        t1(12, parcelP0);
    }
}
