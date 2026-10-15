package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbez extends zzasv implements zzbfb {
    zzbez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbfb
    public final void d3(zzber zzberVar, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzberVar);
        parcelP0.writeString(str);
        t1(1, parcelP0);
    }
}
