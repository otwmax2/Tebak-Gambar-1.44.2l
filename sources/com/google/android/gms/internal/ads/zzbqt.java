package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqt extends zzasv implements zzbqv {
    zzbqt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void Q2(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        parcelP0.writeString(str2);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void c() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void u1(Intent intent) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, intent);
        t1(1, parcelP0);
    }
}
