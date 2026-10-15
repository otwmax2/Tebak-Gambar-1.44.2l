package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zbq extends com.google.android.gms.internal.p000authapi.zbb implements zbr {
    public zbq() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // com.google.android.gms.internal.p000authapi.zbb
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 101:
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.internal.p000authapi.zbc.a(parcel, GoogleSignInAccount.CREATOR);
                Status status = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                i6(googleSignInAccount, status);
                break;
            case 102:
                Status status2 = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                a1(status2);
                break;
            case 103:
                Status status3 = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.b(parcel);
                U5(status3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
