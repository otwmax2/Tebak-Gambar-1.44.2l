package com.google.android.gms.internal.auth;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzat extends IInterface {
    void B1(Status status, com.google.android.gms.auth.api.accounttransfer.zzn zznVar) throws RemoteException;

    void R1(Status status) throws RemoteException;

    void R5(Status status) throws RemoteException;

    void a0(byte[] bArr) throws RemoteException;

    void b() throws RemoteException;

    void b3(Status status, com.google.android.gms.auth.api.accounttransfer.zzv zzvVar) throws RemoteException;

    void m2(DeviceMetaData deviceMetaData) throws RemoteException;
}
