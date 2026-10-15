package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbug extends IInterface {
    void B0(IObjectWrapper iObjectWrapper) throws RemoteException;

    void G0(boolean z10) throws RemoteException;

    void V8(com.google.android.gms.ads.internal.client.zzby zzbyVar) throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdn a() throws RemoteException;

    void b() throws RemoteException;

    void b0(String str) throws RemoteException;

    void b4(zzbuk zzbukVar) throws RemoteException;

    void c0(IObjectWrapper iObjectWrapper) throws RemoteException;

    void c1(IObjectWrapper iObjectWrapper) throws RemoteException;

    String d() throws RemoteException;

    void f() throws RemoteException;

    void f4(zzbuj zzbujVar) throws RemoteException;

    void h() throws RemoteException;

    void l6(String str) throws RemoteException;

    void o3(zzbue zzbueVar) throws RemoteException;

    boolean q() throws RemoteException;

    void r() throws RemoteException;

    void u0(IObjectWrapper iObjectWrapper) throws RemoteException;

    boolean x() throws RemoteException;

    Bundle zzb() throws RemoteException;
}
