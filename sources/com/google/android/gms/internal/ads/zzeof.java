package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeof implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17051b;

    public zzeof(String str, String str2) {
        this.f17050a = str;
        this.f17051b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10429y6)).booleanValue()) {
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f17051b);
        } else {
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f17050a);
        }
    }
}
