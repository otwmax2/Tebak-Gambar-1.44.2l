package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdcg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f14346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfff f14347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f14348c;

    public zzdcg(zzeyc zzeycVar, zzfff zzfffVar) {
        this.f14346a = zzeycVar.f17664q;
        this.f14347b = zzfffVar;
    }

    public final void a() {
        if (this.f14348c) {
            return;
        }
        this.f14347b.d(this.f14346a);
        this.f14348c = true;
    }
}
