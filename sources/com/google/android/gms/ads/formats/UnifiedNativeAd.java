package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class UnifiedNativeAd {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Deprecated
    public interface OnUnifiedNativeAdLoadedListener {
        void a(UnifiedNativeAd unifiedNativeAd);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Deprecated
    public interface UnconfirmedClickListener {
        void a(String str);

        void b();
    }

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public abstract NativeAd.Image e();

    public abstract List<NativeAd.Image> f();

    public abstract String g();

    public abstract Double h();

    public abstract String i();

    @Deprecated
    public abstract VideoController j();

    public abstract Object k();
}
