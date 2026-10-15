package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzflh extends zzfma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f18396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte f18398c;

    zzflh() {
    }

    @Override // com.google.android.gms.internal.ads.zzfma
    public final zzfma a(String str) {
        this.f18397b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfma
    public final zzfma b(int i10) {
        this.f18396a = i10;
        this.f18398c = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfma
    public final zzfmb c() {
        if (this.f18398c == 1) {
            return new zzflj(this.f18396a, this.f18397b, null);
        }
        throw new IllegalStateException("Missing required properties: statusCode");
    }
}
