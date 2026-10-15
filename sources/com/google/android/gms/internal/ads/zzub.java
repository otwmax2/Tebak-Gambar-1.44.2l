package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzub implements zzwn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f20759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f20760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzwm f20761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public zzub f20762d;

    public zzub(long j10, int i10) {
        e(j10, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    public final zzwm a() {
        zzwm zzwmVar = this.f20761c;
        Objects.requireNonNull(zzwmVar);
        return zzwmVar;
    }

    public final int b(long j10) {
        long j11 = j10 - this.f20759a;
        int i10 = this.f20761c.f20956b;
        return (int) j11;
    }

    public final zzub c() {
        this.f20761c = null;
        zzub zzubVar = this.f20762d;
        this.f20762d = null;
        return zzubVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    public final zzwn d() {
        zzub zzubVar = this.f20762d;
        if (zzubVar == null || zzubVar.f20761c == null) {
            return null;
        }
        return zzubVar;
    }

    public final void e(long j10, int i10) {
        zzdl.f(this.f20761c == null);
        this.f20759a = j10;
        this.f20760b = j10 + 65536;
    }
}
