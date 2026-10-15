package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zbs extends IInterface {
    void P8(Status status, String str) throws RemoteException;

    void a1(Status status) throws RemoteException;

    void g9(Status status, Credential credential) throws RemoteException;
}
