package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbuw extends IInterface {
    void B6(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException;

    void Ba(zzbvk zzbvkVar) throws RemoteException;

    void C7(com.google.android.gms.ads.internal.client.zzdd zzddVar) throws RemoteException;

    void Fa(zzbuz zzbuzVar) throws RemoteException;

    void R3(zzbve zzbveVar) throws RemoteException;

    void Z0(boolean z10) throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdn a() throws RemoteException;

    String b() throws RemoteException;

    zzbut d() throws RemoteException;

    void e5(IObjectWrapper iObjectWrapper, boolean z10) throws RemoteException;

    void f5(com.google.android.gms.ads.internal.client.zzl zzlVar, zzbvd zzbvdVar) throws RemoteException;

    void g3(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException;

    void l1(IObjectWrapper iObjectWrapper) throws RemoteException;

    boolean m() throws RemoteException;

    Bundle zzb() throws RemoteException;
}
