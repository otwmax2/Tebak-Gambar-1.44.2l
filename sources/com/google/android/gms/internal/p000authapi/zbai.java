package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbai extends zba {
    zbai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    public final void A9(zbad zbadVar, GetSignInIntentRequest getSignInIntentRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbadVar);
        zbc.c(parcelP0, getSignInIntentRequest);
        X0(3, parcelP0);
    }

    public final void Q4(zbab zbabVar, GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbabVar);
        zbc.c(parcelP0, getPhoneNumberHintIntentRequest);
        parcelP0.writeString(str);
        X0(4, parcelP0);
    }

    public final void Ra(IStatusCallback iStatusCallback, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, iStatusCallback);
        parcelP0.writeString(str);
        X0(2, parcelP0);
    }

    public final void t1(zby zbyVar, BeginSignInRequest beginSignInRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zbc.d(parcelP0, zbyVar);
        zbc.c(parcelP0, beginSignInRequest);
        X0(1, parcelP0);
    }
}
