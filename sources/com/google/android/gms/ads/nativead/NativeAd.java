package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.ResponseInfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class NativeAd {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static abstract class AdChoicesInfo {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static abstract class Image {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface OnNativeAdLoadedListener {
        void a(NativeAd nativeAd);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface UnconfirmedClickListener {
        void a(String str);

        void b();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public abstract ResponseInfo d();

    protected abstract Object e();
}
