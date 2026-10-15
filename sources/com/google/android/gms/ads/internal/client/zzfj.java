package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfn;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfj extends zzbfn {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ShouldDelayBannerRenderingListener f5896o;

    @Override // com.google.android.gms.internal.ads.zzbfo
    public final boolean U0(IObjectWrapper iObjectWrapper) throws RemoteException {
        return this.f5896o.shouldDelayBannerRendering((Runnable) ObjectWrapper.t1(iObjectWrapper));
    }
}
