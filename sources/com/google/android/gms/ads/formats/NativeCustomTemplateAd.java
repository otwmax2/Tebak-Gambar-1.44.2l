package com.google.android.gms.ads.formats;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface NativeCustomTemplateAd {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface DisplayOpenMeasurement {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface OnCustomClickListener {
        void c(NativeCustomTemplateAd nativeCustomTemplateAd, String str);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface OnCustomTemplateAdLoadedListener {
        void b(NativeCustomTemplateAd nativeCustomTemplateAd);
    }

    String a();
}
