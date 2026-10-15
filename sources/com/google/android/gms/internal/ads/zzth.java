package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzth implements zzuj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzuj f20680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f20681b;

    public zzth(zzuj zzujVar, long j10) {
        this.f20680a = zzujVar;
        this.f20681b = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final int W(long j10) {
        return this.f20680a.W(j10 - this.f20681b);
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final int a(zzjo zzjoVar, zzgr zzgrVar, int i10) {
        int iA = this.f20680a.a(zzjoVar, zzgrVar, i10);
        if (iA != -4) {
            return iA;
        }
        zzgrVar.f19509e = Math.max(0L, zzgrVar.f19509e + this.f20681b);
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final boolean b() {
        return this.f20680a.b();
    }

    public final zzuj c() {
        return this.f20680a;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final void d() throws IOException {
        this.f20680a.d();
    }
}
