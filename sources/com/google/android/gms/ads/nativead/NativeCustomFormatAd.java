package com.google.android.gms.ads.nativead;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface NativeCustomFormatAd {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface DisplayOpenMeasurement {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface OnCustomClickListener {
        void a(NativeCustomFormatAd nativeCustomFormatAd, String str);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public interface OnCustomFormatAdLoadedListener {
        void a(NativeCustomFormatAd nativeCustomFormatAd);
    }
}
