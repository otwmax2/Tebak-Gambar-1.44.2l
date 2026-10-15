package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzelk implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f16908a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Clock f16909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzepn f16910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f16911d;

    public zzelk(zzepn zzepnVar, long j10, Clock clock) {
        this.f16909b = clock;
        this.f16910c = zzepnVar;
        this.f16911d = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 16;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        zzelj zzeljVar = (zzelj) this.f16908a.get();
        if (zzeljVar == null || zzeljVar.a()) {
            zzeljVar = new zzelj(this.f16910c.zzb(), this.f16911d, this.f16909b);
            this.f16908a.set(zzeljVar);
        }
        return zzeljVar.f16905a;
    }
}
