package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhh implements zzjq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzkt f19799o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzhg f19800p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzkn f19801q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzjq f19802r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f19803s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f19804t;

    public zzhh(zzhg zzhgVar, zzdm zzdmVar) {
        this.f19800p = zzhgVar;
        this.f19799o = new zzkt(zzdmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final zzby a() {
        zzjq zzjqVar = this.f19802r;
        return zzjqVar != null ? zzjqVar.a() : this.f19799o.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long b(boolean r6) {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzkn r0 = r5.f19801q
            if (r0 == 0) goto L66
            boolean r0 = r0.Y()
            if (r0 != 0) goto L66
            com.google.android.gms.internal.ads.zzkn r0 = r5.f19801q
            boolean r0 = r0.J()
            if (r0 != 0) goto L1d
            if (r6 != 0) goto L66
            com.google.android.gms.internal.ads.zzkn r6 = r5.f19801q
            boolean r6 = r6.V()
            if (r6 == 0) goto L1d
            goto L66
        L1d:
            com.google.android.gms.internal.ads.zzjq r6 = r5.f19802r
            java.util.Objects.requireNonNull(r6)
            long r0 = r6.zza()
            boolean r2 = r5.f19803s
            if (r2 == 0) goto L46
            com.google.android.gms.internal.ads.zzkt r2 = r5.f19799o
            long r2 = r2.zza()
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L3a
            com.google.android.gms.internal.ads.zzkt r6 = r5.f19799o
            r6.d()
            goto L72
        L3a:
            r2 = 0
            r5.f19803s = r2
            boolean r2 = r5.f19804t
            if (r2 == 0) goto L46
            com.google.android.gms.internal.ads.zzkt r2 = r5.f19799o
            r2.c()
        L46:
            com.google.android.gms.internal.ads.zzkt r2 = r5.f19799o
            r2.b(r0)
            com.google.android.gms.internal.ads.zzby r6 = r6.a()
            com.google.android.gms.internal.ads.zzkt r0 = r5.f19799o
            com.google.android.gms.internal.ads.zzby r0 = r0.a()
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L72
            com.google.android.gms.internal.ads.zzkt r0 = r5.f19799o
            r0.e(r6)
            com.google.android.gms.internal.ads.zzhg r0 = r5.f19800p
            r0.a(r6)
            goto L72
        L66:
            r6 = 1
            r5.f19803s = r6
            boolean r6 = r5.f19804t
            if (r6 == 0) goto L72
            com.google.android.gms.internal.ads.zzkt r6 = r5.f19799o
            r6.c()
        L72:
            boolean r6 = r5.f19803s
            if (r6 == 0) goto L7d
            com.google.android.gms.internal.ads.zzkt r6 = r5.f19799o
            long r0 = r6.zza()
            goto L86
        L7d:
            com.google.android.gms.internal.ads.zzjq r6 = r5.f19802r
            java.util.Objects.requireNonNull(r6)
            long r0 = r6.zza()
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhh.b(boolean):long");
    }

    public final void c(zzkn zzknVar) {
        if (zzknVar == this.f19801q) {
            this.f19802r = null;
            this.f19801q = null;
            this.f19803s = true;
        }
    }

    public final void d(zzkn zzknVar) throws zzhj {
        zzjq zzjqVar;
        zzjq zzjqVarG = zzknVar.g();
        if (zzjqVarG == null || zzjqVarG == (zzjqVar = this.f19802r)) {
            return;
        }
        if (zzjqVar != null) {
            throw zzhj.d(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f19802r = zzjqVarG;
        this.f19801q = zzknVar;
        zzjqVarG.e(this.f19799o.a());
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final void e(zzby zzbyVar) {
        zzjq zzjqVar = this.f19802r;
        if (zzjqVar != null) {
            zzjqVar.e(zzbyVar);
            zzbyVar = this.f19802r.a();
        }
        this.f19799o.e(zzbyVar);
    }

    public final void f(long j10) {
        this.f19799o.b(j10);
    }

    public final void g() {
        this.f19804t = true;
        this.f19799o.c();
    }

    public final void h() {
        this.f19804t = false;
        this.f19799o.d();
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final long zza() {
        throw null;
    }
}
