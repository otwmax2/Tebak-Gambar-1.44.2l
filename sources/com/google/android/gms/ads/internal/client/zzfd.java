package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfd extends zzdc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OnAdMetadataChangedListener f5891o;

    @Override // com.google.android.gms.ads.internal.client.zzdd
    public final void b() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f5891o;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.o();
        }
    }
}
