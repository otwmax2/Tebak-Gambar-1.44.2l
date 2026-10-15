package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zbab extends IInterface {
    void e1(Status status, PendingIntent pendingIntent) throws RemoteException;
}
