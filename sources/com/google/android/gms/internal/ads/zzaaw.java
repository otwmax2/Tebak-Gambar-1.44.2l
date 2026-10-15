package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzaaw implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f8351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaav f8352b;

    public zzaaw(long j10, long j11) {
        this.f8351a = j10;
        zzaay zzaayVar = j11 == 0 ? zzaay.f8353c : new zzaay(0L, j11);
        this.f8352b = new zzaav(zzaayVar, zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8351a;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        return this.f8352b;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return false;
    }
}
