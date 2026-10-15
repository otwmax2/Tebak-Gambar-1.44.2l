package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzp extends zza {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.data.IGoogleAuthService");
    }

    public final void A9(zzo zzoVar, Account account, String str, Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzoVar);
        zzc.c(parcelP0, account);
        parcelP0.writeString(str);
        zzc.c(parcelP0, bundle);
        X0(1, parcelP0);
    }

    public final void Q4(zzm zzmVar, AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzmVar);
        zzc.c(parcelP0, accountChangeEventsRequest);
        X0(4, parcelP0);
    }

    public final void Ra(zzk zzkVar, Account account) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzkVar);
        zzc.c(parcelP0, account);
        X0(6, parcelP0);
    }

    public final void Sa(zzk zzkVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzkVar);
        parcelP0.writeString(str);
        X0(3, parcelP0);
    }

    public final void t1(IStatusCallback iStatusCallback, zzbw zzbwVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, iStatusCallback);
        zzc.c(parcelP0, zzbwVar);
        X0(2, parcelP0);
    }
}
