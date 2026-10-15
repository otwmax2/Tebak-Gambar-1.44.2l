package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzrw implements zzuj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzuj f20579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f20580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzrx f20581c;

    public zzrw(zzrx zzrxVar, zzuj zzujVar) {
        this.f20581c = zzrxVar;
        this.f20579a = zzujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final int W(long j10) {
        if (this.f20581c.l()) {
            return -3;
        }
        return this.f20579a.W(j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    @Override // com.google.android.gms.internal.ads.zzuj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int a(com.google.android.gms.internal.ads.zzjo r11, com.google.android.gms.internal.ads.zzgr r12, int r13) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzrx r0 = r10.f20581c
            boolean r0 = r0.l()
            r1 = -3
            if (r0 == 0) goto La
            return r1
        La:
            boolean r0 = r10.f20580b
            r2 = 4
            r3 = -4
            if (r0 == 0) goto L14
            r12.c(r2)
            return r3
        L14:
            com.google.android.gms.internal.ads.zzuj r0 = r10.f20579a
            int r13 = r0.a(r11, r12, r13)
            r0 = -5
            r4 = -9223372036854775808
            if (r13 != r0) goto L4a
            com.google.android.gms.internal.ads.zzaf r12 = r11.f19944a
            java.util.Objects.requireNonNull(r12)
            int r13 = r12.B
            r1 = 0
            if (r13 != 0) goto L2e
            int r13 = r12.C
            if (r13 == 0) goto L49
            r13 = 0
        L2e:
            com.google.android.gms.internal.ads.zzrx r2 = r10.f20581c
            long r2 = r2.f20586s
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L37
            goto L39
        L37:
            int r1 = r12.C
        L39:
            com.google.android.gms.internal.ads.zzad r12 = r12.b()
            r12.c(r13)
            r12.d(r1)
            com.google.android.gms.internal.ads.zzaf r12 = r12.y()
            r11.f19944a = r12
        L49:
            return r0
        L4a:
            com.google.android.gms.internal.ads.zzrx r11 = r10.f20581c
            long r6 = r11.f20586s
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L72
            if (r13 != r3) goto L5a
            long r8 = r12.f19509e
            int r0 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r0 >= 0) goto L68
        L5a:
            if (r13 != r1) goto L72
            long r0 = r11.zzb()
            int r11 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r11 != 0) goto L72
            boolean r11 = r12.f19508d
            if (r11 != 0) goto L72
        L68:
            r12.b()
            r12.c(r2)
            r11 = 1
            r10.f20580b = r11
            return r3
        L72:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrw.a(com.google.android.gms.internal.ads.zzjo, com.google.android.gms.internal.ads.zzgr, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final boolean b() {
        return !this.f20581c.l() && this.f20579a.b();
    }

    public final void c() {
        this.f20580b = false;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final void d() throws IOException {
        this.f20579a.d();
    }
}
