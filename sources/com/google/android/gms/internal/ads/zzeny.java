package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeny implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f17028a;

    public zzeny(Bundle bundle) {
        this.f17028a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundle2 = this.f17028a;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }
}
