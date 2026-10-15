package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbp extends zzbm implements zzbr {
    zzbp(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbr
    public final Bundle X(Bundle bundle) throws RemoteException {
        Parcel parcelP0 = P0();
        zzbo.e(parcelP0, bundle);
        Parcel parcelX0 = X0(1, parcelP0);
        Bundle bundle2 = (Bundle) zzbo.a(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle2;
    }
}
