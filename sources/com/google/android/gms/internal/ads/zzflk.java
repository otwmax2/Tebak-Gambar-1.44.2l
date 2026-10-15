package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflk extends zzfmd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18402b;

    zzflk() {
    }

    @Override // com.google.android.gms.internal.ads.zzfmd
    public final zzfmd a(String str) {
        this.f18402b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmd
    public final zzfmd b(String str) {
        this.f18401a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmd
    public final zzfme c() {
        return new zzflm(this.f18401a, this.f18402b, null);
    }
}
