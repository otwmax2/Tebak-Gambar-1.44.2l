package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemi implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f16955b;

    public zzemi(String str, boolean z10) {
        this.f16954a = str;
        this.f16955b = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("gct", this.f16954a);
        if (this.f16955b) {
            bundle.putString("de", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
    }
}
