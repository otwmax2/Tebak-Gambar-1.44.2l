package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public interface IGmsCallbacks extends IInterface {
    void N6(int i10, IBinder iBinder, zzj zzjVar) throws RemoteException;

    void m6(int i10, IBinder iBinder, Bundle bundle) throws RemoteException;

    void p0(int i10, Bundle bundle) throws RemoteException;
}
