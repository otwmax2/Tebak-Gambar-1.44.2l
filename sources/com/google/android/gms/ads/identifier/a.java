package com.google.android.gms.ads.identifier;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class a extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Map f5689o;

    a(AdvertisingIdClient advertisingIdClient, Map map) {
        this.f5689o = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Map map = this.f5689o;
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        zzc.a(builderBuildUpon.build().toString());
    }
}
