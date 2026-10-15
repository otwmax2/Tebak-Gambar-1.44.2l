package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeme implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f16949a;

    public zzeme(Bundle bundle) {
        this.f16949a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((Bundle) obj).putBundle("content_info", this.f16949a);
    }
}
