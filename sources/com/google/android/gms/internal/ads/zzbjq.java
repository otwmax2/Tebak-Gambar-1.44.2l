package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjq extends zzasv implements zzbjs {
    zzbjq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbjs
    public final void n8(List list) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeTypedList(list);
        t1(1, parcelP0);
    }
}
