package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbz extends zba {
    zbz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService");
    }

    public final void Q4(zbah zbahVar, SavePasswordRequest savePasswordRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbahVar);
        zbc.c(parcelP0, savePasswordRequest);
        X0(2, parcelP0);
    }

    public final void t1(zbaf zbafVar, SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbafVar);
        zbc.c(parcelP0, saveAccountLinkingTokenRequest);
        X0(1, parcelP0);
    }
}
