package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzauy extends IInterface {
    com.google.android.gms.ads.internal.client.zzbu b() throws RemoteException;

    com.google.android.gms.ads.internal.client.zzdn c() throws RemoteException;

    void ca(IObjectWrapper iObjectWrapper, zzavf zzavfVar) throws RemoteException;

    void h5(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException;

    void ia(boolean z10) throws RemoteException;
}
