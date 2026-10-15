package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcg extends zzbm implements zzci {
    zzcg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final void L1(String str, String str2, Bundle bundle, long j10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        zzbo.e(parcelP0, bundle);
        parcelP0.writeLong(j10);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.measurement.zzci
    public final int d() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }
}
