package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzboo extends zzasv implements zzboq {
    zzboo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void A(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzeVar);
        t1(3, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void G5(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        t1(1, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void c2(zzbno zzbnoVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbnoVar);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString("Adapter returned null.");
        t1(2, parcelP0);
    }
}
