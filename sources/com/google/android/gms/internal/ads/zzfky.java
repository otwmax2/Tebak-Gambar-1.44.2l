package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfky extends zzfsx {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    Object f18367v;

    zzfky(Object obj) {
        this.f18367v = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    public final String d() {
        Object obj = this.f18367v;
        return obj == null ? BuildConfig.FLAVOR : obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        this.f18367v = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    public final boolean h(Object obj) {
        return super.h(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    public final boolean i(Throwable th) {
        return super.i(th);
    }
}
