package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepg implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f17135a;

    zzepg(zzevx zzevxVar) {
        this.f17135a = zzevxVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.h(this.f17135a ? new zzepm() { // from class: com.google.android.gms.internal.ads.zzepf
            @Override // com.google.android.gms.internal.ads.zzepm
            public final void a(Object obj) {
                ((Bundle) obj).putBoolean("sdk_prefetch", true);
            }
        } : null);
    }
}
