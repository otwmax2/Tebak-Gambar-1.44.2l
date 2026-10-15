package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzclw implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f13446a;

    public zzclw(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f13446a = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        this.f13446a.u0(Boolean.parseBoolean((String) map.get("content_vertical_opted_out")));
    }
}
