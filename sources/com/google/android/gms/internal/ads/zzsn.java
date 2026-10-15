package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzsn extends zzut {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f20629l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcm f20630m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzck f20631n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzsl f20632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzsk f20633p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f20634q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f20635r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f20636s;

    public zzsn(zzsu zzsuVar, boolean z10) {
        boolean z11;
        super(zzsuVar);
        if (z10) {
            zzsuVar.v();
            z11 = true;
        } else {
            z11 = false;
        }
        this.f20629l = z11;
        this.f20630m = new zzcm();
        this.f20631n = new zzck();
        zzsuVar.q0();
        this.f20632o = zzsl.q(zzsuVar.T());
    }

    private final Object I(Object obj) {
        return (this.f20632o.f20627h == null || !obj.equals(zzsl.f20625i)) ? obj : this.f20632o.f20627h;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private final void J(long j10) {
        zzsk zzskVar = this.f20633p;
        int iA = this.f20632o.a(zzskVar.f20618o.f11010a);
        if (iA == -1) {
            return;
        }
        zzsl zzslVar = this.f20632o;
        zzck zzckVar = this.f20631n;
        zzslVar.d(iA, zzckVar, false);
        long j11 = zzckVar.f13167d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        zzskVar.q(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    protected final zzss C(zzss zzssVar) {
        Object obj = zzssVar.f11010a;
        if (this.f20632o.f20627h != null && this.f20632o.f20627h.equals(obj)) {
            obj = zzsl.f20625i;
        }
        return zzssVar.c(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    @Override // com.google.android.gms.internal.ads.zzut
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void D(com.google.android.gms.internal.ads.zzcn r15) {
        /*
            r14 = this;
            boolean r0 = r14.f20635r
            r1 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzsl r0 = r14.f20632o
            com.google.android.gms.internal.ads.zzsl r15 = r0.p(r15)
            r14.f20632o = r15
            com.google.android.gms.internal.ads.zzsk r15 = r14.f20633p
            if (r15 == 0) goto L9b
            long r2 = r15.k()
            r14.J(r2)
            goto L9b
        L1a:
            boolean r0 = r15.o()
            if (r0 == 0) goto L36
            boolean r0 = r14.f20636s
            if (r0 == 0) goto L2b
            com.google.android.gms.internal.ads.zzsl r0 = r14.f20632o
            com.google.android.gms.internal.ads.zzsl r15 = r0.p(r15)
            goto L33
        L2b:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzcm.f13450o
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzsl.f20625i
            com.google.android.gms.internal.ads.zzsl r15 = com.google.android.gms.internal.ads.zzsl.r(r15, r0, r2)
        L33:
            r14.f20632o = r15
            goto L9b
        L36:
            com.google.android.gms.internal.ads.zzcm r0 = r14.f20630m
            r2 = 0
            r3 = 0
            r15.e(r2, r0, r3)
            com.google.android.gms.internal.ads.zzcm r0 = r14.f20630m
            java.lang.Object r0 = r0.f13462a
            com.google.android.gms.internal.ads.zzsk r5 = r14.f20633p
            if (r5 == 0) goto L62
            long r6 = r5.l()
            com.google.android.gms.internal.ads.zzsl r8 = r14.f20632o
            com.google.android.gms.internal.ads.zzss r5 = r5.f20618o
            java.lang.Object r5 = r5.f11010a
            com.google.android.gms.internal.ads.zzck r9 = r14.f20631n
            r8.n(r5, r9)
            com.google.android.gms.internal.ads.zzsl r5 = r14.f20632o
            com.google.android.gms.internal.ads.zzcm r8 = r14.f20630m
            r5.e(r2, r8, r3)
            int r2 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r2 == 0) goto L62
            r12 = r6
            goto L63
        L62:
            r12 = r3
        L63:
            com.google.android.gms.internal.ads.zzcm r9 = r14.f20630m
            com.google.android.gms.internal.ads.zzck r10 = r14.f20631n
            r11 = 0
            r8 = r15
            android.util.Pair r2 = r8.l(r9, r10, r11, r12)
            java.lang.Object r3 = r2.first
            java.lang.Object r2 = r2.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r4 = r2.longValue()
            boolean r2 = r14.f20636s
            if (r2 == 0) goto L82
            com.google.android.gms.internal.ads.zzsl r0 = r14.f20632o
            com.google.android.gms.internal.ads.zzsl r15 = r0.p(r15)
            goto L86
        L82:
            com.google.android.gms.internal.ads.zzsl r15 = com.google.android.gms.internal.ads.zzsl.r(r15, r0, r3)
        L86:
            r14.f20632o = r15
            com.google.android.gms.internal.ads.zzsk r15 = r14.f20633p
            if (r15 == 0) goto L9b
            r14.J(r4)
            com.google.android.gms.internal.ads.zzss r15 = r15.f20618o
            java.lang.Object r0 = r15.f11010a
            java.lang.Object r0 = r14.I(r0)
            com.google.android.gms.internal.ads.zzss r1 = r15.c(r0)
        L9b:
            r15 = 1
            r14.f20636s = r15
            r14.f20635r = r15
            com.google.android.gms.internal.ads.zzsl r15 = r14.f20632o
            r14.t(r15)
            if (r1 == 0) goto Laf
            com.google.android.gms.internal.ads.zzsk r15 = r14.f20633p
            java.util.Objects.requireNonNull(r15)
            r15.p(r1)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.D(com.google.android.gms.internal.ads.zzcn):void");
    }

    @Override // com.google.android.gms.internal.ads.zzsb, com.google.android.gms.internal.ads.zzsu
    public final void E() {
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void F() {
        if (this.f20629l) {
            return;
        }
        this.f20634q = true;
        x(null, this.f20823k);
    }

    public final zzcn G() {
        return this.f20632o;
    }

    @Override // com.google.android.gms.internal.ads.zzut, com.google.android.gms.internal.ads.zzsu
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public final zzsk i(zzss zzssVar, zzwt zzwtVar, long j10) {
        zzsk zzskVar = new zzsk(zzssVar, zzwtVar, j10, null);
        zzskVar.s(this.f20823k);
        if (this.f20635r) {
            zzskVar.p(zzssVar.c(I(zzssVar.f11010a)));
        } else {
            this.f20633p = zzskVar;
            if (!this.f20634q) {
                this.f20634q = true;
                x(null, this.f20823k);
            }
        }
        return zzskVar;
    }

    @Override // com.google.android.gms.internal.ads.zzut, com.google.android.gms.internal.ads.zzsu
    public final void a(zzsq zzsqVar) {
        ((zzsk) zzsqVar).r();
        if (zzsqVar == this.f20633p) {
            this.f20633p = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsb, com.google.android.gms.internal.ads.zzrt
    public final void u() {
        this.f20635r = false;
        this.f20634q = false;
        super.u();
    }
}
