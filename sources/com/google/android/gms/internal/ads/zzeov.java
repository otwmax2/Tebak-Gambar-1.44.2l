package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeov implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17101a;

    public zzeov(String str) {
        this.f17101a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (TextUtils.isEmpty(this.f17101a)) {
            return;
        }
        bundle.putString("query_info", this.f17101a);
    }
}
