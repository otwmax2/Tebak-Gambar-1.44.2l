package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezr {
    public static void a(Context context, boolean z10) {
        if (z10) {
            zzbza.f("This request is sent from a test device.");
            return;
        }
        com.google.android.gms.ads.internal.client.zzay.b();
        zzbza.f("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + zzbyt.E(context) + "\")) to get test ads on this device.");
    }

    public static void b(int i10, Throwable th, String str) {
        zzbza.f("Ad failed to load : " + i10);
        com.google.android.gms.ads.internal.util.zze.l(str, th);
        if (i10 == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.q().t(th, str);
    }
}
