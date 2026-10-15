package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeau implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final zzeat f16124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfnj f16125b;

    public zzeau(zzeat zzeatVar, zzfnj zzfnjVar) {
        this.f16124a = zzeatVar;
        this.f16125b = zzfnjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        return this.f16124a.a(zzeyoVar, zzeycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(zzeyo zzeyoVar, zzeyc zzeycVar) {
        return zzfuj.l(this.f16124a.b(zzeyoVar, zzeycVar), this.f16125b, zzbzn.f11614a);
    }
}
