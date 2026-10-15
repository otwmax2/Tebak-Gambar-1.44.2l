package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17974a = (String) zzbce.f10518b.e();

    public final String a(Map map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.f17974a).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return builderBuildUpon.build().toString();
    }
}
