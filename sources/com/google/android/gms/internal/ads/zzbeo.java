package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbeo extends IInterface {
    void N3(Bundle bundle) throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdq a() throws RemoteException;

    zzbdx b() throws RemoteException;

    IObjectWrapper c() throws RemoteException;

    zzbdp d() throws RemoteException;

    IObjectWrapper e() throws RemoteException;

    String f() throws RemoteException;

    String g() throws RemoteException;

    String h() throws RemoteException;

    String i() throws RemoteException;

    boolean i0(Bundle bundle) throws RemoteException;

    String j() throws RemoteException;

    void k() throws RemoteException;

    List l() throws RemoteException;

    void n0(Bundle bundle) throws RemoteException;

    Bundle zzb() throws RemoteException;
}
