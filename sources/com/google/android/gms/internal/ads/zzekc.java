package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekc implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f16820a;

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.f16820a.isEmpty()) {
            return;
        }
        bundle.putBundle("installed_adapter_data", this.f16820a);
    }
}
