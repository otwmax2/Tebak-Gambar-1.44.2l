package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzej;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class MobileAds {
    private MobileAds() {
    }

    public static void a(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzej.e().j(context, null, onInitializationCompleteListener);
    }

    @KeepForSdk
    private static void setPlugin(String str) {
        zzej.e().m(str);
    }
}
