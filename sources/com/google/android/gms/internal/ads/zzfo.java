package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfo implements zzff {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzgi f18490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18491c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f18494f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgc f18489a = new zzgc();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f18492d = 8000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f18493e = 8000;

    public final zzfo a(boolean z10) {
        this.f18494f = true;
        return this;
    }

    public final zzfo b(int i10) {
        this.f18492d = i10;
        return this;
    }

    public final zzfo c(int i10) {
        this.f18493e = i10;
        return this;
    }

    public final zzfo d(zzgi zzgiVar) {
        this.f18490b = zzgiVar;
        return this;
    }

    public final zzfo e(String str) {
        this.f18491c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzff
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final zzft zza() {
        zzft zzftVar = new zzft(this.f18491c, this.f18492d, this.f18493e, this.f18494f, this.f18489a);
        zzgi zzgiVar = this.f18490b;
        if (zzgiVar != null) {
            zzftVar.f(zzgiVar);
        }
        return zzftVar;
    }
}
