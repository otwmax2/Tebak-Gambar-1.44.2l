package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbes implements NativeCustomTemplateAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzber f10664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaView f10665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final VideoController f10666c = new VideoController();

    @VisibleForTesting
    public zzbes(zzber zzberVar) {
        Context context;
        this.f10664a = zzberVar;
        MediaView mediaView = null;
        try {
            context = (Context) ObjectWrapper.t1(zzberVar.f());
        } catch (RemoteException | NullPointerException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (true == this.f10664a.c0(ObjectWrapper.Q4(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e11) {
                zzbza.e(BuildConfig.FLAVOR, e11);
            }
        }
        this.f10665b = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String a() {
        try {
            return this.f10664a.g();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    public final zzber b() {
        return this.f10664a;
    }
}
