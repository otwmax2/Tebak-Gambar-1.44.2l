package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzc extends com.google.android.gms.internal.auth.zza implements zze {
    zzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.IWorkAccountService");
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void d9(zzb zzbVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.auth.zzc.d(parcelP0, zzbVar);
        parcelP0.writeString(str);
        X0(2, parcelP0);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void m9(zzb zzbVar, Account account) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.auth.zzc.d(parcelP0, zzbVar);
        com.google.android.gms.internal.auth.zzc.c(parcelP0, account);
        X0(3, parcelP0);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void y0(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.auth.zzc.b(parcelP0, z10);
        X0(1, parcelP0);
    }
}
