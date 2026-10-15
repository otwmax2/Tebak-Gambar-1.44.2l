package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public interface zze extends IInterface {
    void d9(zzb zzbVar, String str) throws RemoteException;

    void m9(zzb zzbVar, Account account) throws RemoteException;

    void y0(boolean z10) throws RemoteException;
}
