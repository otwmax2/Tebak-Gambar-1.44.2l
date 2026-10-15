package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class NativeAd {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Deprecated
    public static abstract class AdChoicesInfo {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Deprecated
    public static abstract class Image {
        public abstract Drawable a();

        public abstract double b();

        public abstract Uri c();

        public int d() {
            return -1;
        }

        public int e() {
            return -1;
        }
    }
}
