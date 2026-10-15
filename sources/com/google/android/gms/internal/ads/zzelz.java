package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzelz implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f16937c;

    /* synthetic */ zzelz(String str, String str2, Bundle bundle, zzely zzelyVar) {
        this.f16935a = str;
        this.f16936b = str2;
        this.f16937c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("consent_string", this.f16935a);
        bundle.putString("fc_consent", this.f16936b);
        bundle.putBundle("iab_consent_info", this.f16937c);
    }
}
