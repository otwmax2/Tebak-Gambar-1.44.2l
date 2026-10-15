package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeoz implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f17116e;

    public zzeoz(String str, String str2, String str3, String str4, Long l10) {
        this.f17112a = str;
        this.f17113b = str2;
        this.f17114c = str3;
        this.f17115d = str4;
        this.f17116e = l10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzezi.c(bundle, "gmp_app_id", this.f17112a);
        zzezi.c(bundle, "fbs_aiid", this.f17113b);
        zzezi.c(bundle, "fbs_aeid", this.f17114c);
        zzezi.c(bundle, "apm_id_origin", this.f17115d);
        Long l10 = this.f17116e;
        if (l10 != null) {
            bundle.putLong("sai_timeout", l10.longValue());
        }
    }
}
