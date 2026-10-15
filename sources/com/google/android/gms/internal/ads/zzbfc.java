package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfc extends zzasv implements zzbfe {
    zzbfc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbfe
    public final void q9(zzber zzberVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzberVar);
        t1(1, parcelP0);
    }
}
