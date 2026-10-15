package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbs extends com.google.android.gms.internal.p000authapi.zba {
    zbs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void A9(zbr zbrVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.p000authapi.zbc.d(parcelP0, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.c(parcelP0, googleSignInOptions);
        X0(101, parcelP0);
    }

    public final void Q4(zbr zbrVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.p000authapi.zbc.d(parcelP0, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.c(parcelP0, googleSignInOptions);
        X0(102, parcelP0);
    }

    public final void t1(zbr zbrVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.p000authapi.zbc.d(parcelP0, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.c(parcelP0, googleSignInOptions);
        X0(103, parcelP0);
    }
}
