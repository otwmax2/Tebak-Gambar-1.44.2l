package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbrp extends zzasv implements zzbrr {
    zzbrp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void q3(List list) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeTypedList(list);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(2, parcelP0);
    }
}
