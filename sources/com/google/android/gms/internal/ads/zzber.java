package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzber extends IInterface {
    com.google.android.gms.ads.internal.client.zzdq b() throws RemoteException;

    zzbdu c() throws RemoteException;

    boolean c0(IObjectWrapper iObjectWrapper) throws RemoteException;

    void c6(IObjectWrapper iObjectWrapper) throws RemoteException;

    String c9(String str) throws RemoteException;

    zzbdx d0(String str) throws RemoteException;

    IObjectWrapper f() throws RemoteException;

    String g() throws RemoteException;

    List i() throws RemoteException;

    void j() throws RemoteException;

    void l() throws RemoteException;

    void m() throws RemoteException;

    boolean q() throws RemoteException;

    boolean r() throws RemoteException;

    void s0(String str) throws RemoteException;
}
