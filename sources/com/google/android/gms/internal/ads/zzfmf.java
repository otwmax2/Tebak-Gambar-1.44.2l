package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfmf extends zzasv implements zzfmh {
    zzfmf(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzfmh
    public final void M9(String str, Bundle bundle, zzfmj zzfmjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzasx.e(parcelP0, bundle);
        zzasx.g(parcelP0, zzfmjVar);
        Q4(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzfmh
    public final void i8(Bundle bundle, zzfmj zzfmjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, bundle);
        zzasx.g(parcelP0, zzfmjVar);
        Q4(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzfmh
    public final void z5(Bundle bundle, zzfmj zzfmjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, bundle);
        zzasx.g(parcelP0, zzfmjVar);
        Q4(3, parcelP0);
    }
}
