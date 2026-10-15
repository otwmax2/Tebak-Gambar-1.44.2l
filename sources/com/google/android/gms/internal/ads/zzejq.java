package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejq implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfut f16789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f16790b;

    public zzejq(zzfut zzfutVar, Executor executor) {
        this.f16789a = zzfutVar;
        this.f16790b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.m(this.f16789a, new zzftq() { // from class: com.google.android.gms.internal.ads.zzejp
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                final String str = (String) obj;
                return zzfuj.h(new zzepm() { // from class: com.google.android.gms.internal.ads.zzejo
                    @Override // com.google.android.gms.internal.ads.zzepm
                    public final void a(Object obj2) {
                        ((Bundle) obj2).putString("ms", str);
                    }
                });
            }
        }, this.f16790b);
    }
}
