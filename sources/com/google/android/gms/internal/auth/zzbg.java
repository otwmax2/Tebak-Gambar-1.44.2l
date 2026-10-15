package com.google.android.gms.internal.auth;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbg extends IInterface {
    void D(String str) throws RemoteException;

    void E1(ProxyResponse proxyResponse) throws RemoteException;
}
