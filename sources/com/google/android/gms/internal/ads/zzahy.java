package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzahy implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaio f9176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzabb f9178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzahx f9179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9180e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f9187l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean[] f9181f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaic f9182g = new zzaic(32, 128);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzaic f9183h = new zzaic(33, 128);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzaic f9184i = new zzaic(34, 128);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzaic f9185j = new zzaic(39, 128);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzaic f9186k = new zzaic(40, 128);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f9188m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzen f9189n = new zzen();

    public zzahy(zzaio zzaioVar) {
        this.f9176a = zzaioVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void f(byte[] bArr, int i10, int i11) {
        this.f9179d.b(bArr, i10, i11);
        if (!this.f9180e) {
            this.f9182g.a(bArr, i10, i11);
            this.f9183h.a(bArr, i10, i11);
            this.f9184i.a(bArr, i10, i11);
        }
        this.f9185j.a(bArr, i10, i11);
        this.f9186k.a(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9187l = 0L;
        this.f9188m = -9223372036854775807L;
        zzaar.e(this.f9181f);
        this.f9182g.b();
        this.f9183h.b();
        this.f9184i.b();
        this.f9185j.b();
        this.f9186k.b();
        zzahx zzahxVar = this.f9179d;
        if (zzahxVar != null) {
            zzahxVar.c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165  */
    @Override // com.google.android.gms.internal.ads.zzahn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(com.google.android.gms.internal.ads.zzen r38) {
        /*
            Method dump skipped, instruction units count: 972
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahy.c(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9177b = zzaizVar.b();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 2);
        this.f9178c = zzabbVarQ;
        this.f9179d = new zzahx(zzabbVarQ);
        this.f9176a.b(zzzxVar, zzaizVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9188m = j10;
        }
    }
}
