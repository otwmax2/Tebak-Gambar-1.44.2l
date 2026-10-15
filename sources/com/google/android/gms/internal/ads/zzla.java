package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.wifi.WifiManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzla {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WifiManager f20106a;

    public zzla(Context context) {
        this.f20106a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }
}
