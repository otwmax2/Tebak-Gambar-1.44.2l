package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzclu implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f13444a;

    public zzclu(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f13444a = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        this.f13444a.M0(Boolean.parseBoolean((String) map.get("content_url_opted_out")));
    }
}
