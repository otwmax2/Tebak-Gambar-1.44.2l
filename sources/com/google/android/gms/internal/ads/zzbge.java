package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbge extends zzbfh {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final OnAdManagerAdViewLoadedListener f10696o;

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final void S1(com.google.android.gms.ads.internal.client.zzbu zzbuVar, IObjectWrapper iObjectWrapper) {
        if (zzbuVar == null || iObjectWrapper == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.t1(iObjectWrapper));
        try {
            if (zzbuVar.g() instanceof com.google.android.gms.ads.internal.client.zzg) {
                com.google.android.gms.ads.internal.client.zzg zzgVar = (com.google.android.gms.ads.internal.client.zzg) zzbuVar.g();
                adManagerAdView.setAdListener(zzgVar != null ? zzgVar.Sa() : null);
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        try {
            if (zzbuVar.h() instanceof zzatt) {
                zzatt zzattVar = (zzatt) zzbuVar.h();
                adManagerAdView.setAppEventListener(zzattVar != null ? zzattVar.Ta() : null);
            }
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
        zzbyt.f11579b.post(new zzbgd(this, adManagerAdView, zzbuVar));
    }
}
