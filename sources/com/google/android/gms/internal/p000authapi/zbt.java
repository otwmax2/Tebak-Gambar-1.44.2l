package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbt extends zba {
    zbt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    public final void A9(zbs zbsVar, zbu zbuVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbsVar);
        zbc.c(parcelP0, zbuVar);
        X0(2, parcelP0);
    }

    public final void Q4(zbs zbsVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbsVar);
        zbc.c(parcelP0, credentialRequest);
        X0(1, parcelP0);
    }

    public final void Ra(zbs zbsVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbsVar);
        X0(4, parcelP0);
    }

    public final void t1(zbs zbsVar, zbp zbpVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbsVar);
        zbc.c(parcelP0, zbpVar);
        X0(3, parcelP0);
    }
}
