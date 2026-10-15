package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzbka extends IInterface {
    void N8(IObjectWrapper iObjectWrapper, zzbkd zzbkdVar) throws RemoteException;

    zzbdu a() throws RemoteException;

    void d() throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdq zzb() throws RemoteException;

    void zze(IObjectWrapper iObjectWrapper) throws RemoteException;
}
