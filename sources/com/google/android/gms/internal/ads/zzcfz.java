package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzcfz extends IInterface {
    void L7(String str, String str2, Bundle bundle) throws RemoteException;

    void N1(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException;

    void U9(String str, String str2, Bundle bundle) throws RemoteException;

    Bundle X(Bundle bundle) throws RemoteException;

    long a() throws RemoteException;

    String b() throws RemoteException;

    String c() throws RemoteException;

    String e() throws RemoteException;

    List e7(String str, String str2) throws RemoteException;

    String f() throws RemoteException;

    String g() throws RemoteException;

    void g7(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException;

    void h1(Bundle bundle) throws RemoteException;

    void i0(Bundle bundle) throws RemoteException;

    void m0(String str) throws RemoteException;

    void n0(Bundle bundle) throws RemoteException;

    Map n9(String str, String str2, boolean z10) throws RemoteException;

    void s0(String str) throws RemoteException;

    int u(String str) throws RemoteException;
}
