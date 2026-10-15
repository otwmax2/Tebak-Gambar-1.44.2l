package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflb extends zzfln {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18380b;

    zzflb() {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final zzfln a(String str) {
        this.f18380b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final zzfln b(String str) {
        this.f18379a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final zzflo c() {
        return new zzfld(this.f18379a, this.f18380b, null);
    }
}
