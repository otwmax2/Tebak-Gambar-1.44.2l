package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezz implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzezy f17784a;

    public zzezz(zzezy zzezyVar) {
        this.f17784a = zzezyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        Clock clockD = DefaultClock.d();
        zzgxg.b(clockD);
        return clockD;
    }
}
