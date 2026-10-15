package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoo implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f17081b;

    public zzeoo(String str, Bundle bundle) {
        this.f17080a = str;
        this.f17081b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("rtb", this.f17080a);
        if (this.f17081b.isEmpty()) {
            return;
        }
        bundle.putBundle("adapter_initialization_status", this.f17081b);
    }
}
