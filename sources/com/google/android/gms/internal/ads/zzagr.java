package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzags f8962a = new zzags();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f8963b = new zzen(new byte[65025], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8964c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8966e;

    zzagr() {
    }

    private final int f(int i10) {
        int i11;
        int i12 = 0;
        this.f8965d = 0;
        do {
            int i13 = this.f8965d;
            int i14 = i10 + i13;
            zzags zzagsVar = this.f8962a;
            if (i14 >= zzagsVar.f8969c) {
                break;
            }
            int[] iArr = zzagsVar.f8972f;
            this.f8965d = i13 + 1;
            i11 = iArr[i14];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public final zzen a() {
        return this.f8963b;
    }

    public final zzags b() {
        return this.f8962a;
    }

    public final void c() {
        this.f8962a.a();
        this.f8963b.c(0);
        this.f8964c = -1;
        this.f8966e = false;
    }

    public final void d() {
        zzen zzenVar = this.f8963b;
        if (zzenVar.h().length == 65025) {
            return;
        }
        zzenVar.d(Arrays.copyOf(zzenVar.h(), Math.max(65025, zzenVar.l())), this.f8963b.l());
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean e(com.google.android.gms.internal.ads.zzzv r7) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r6.f8966e
            r1 = 0
            if (r0 != 0) goto L6
            goto Ld
        L6:
            r6.f8966e = r1
            com.google.android.gms.internal.ads.zzen r0 = r6.f8963b
            r0.c(r1)
        Ld:
            boolean r0 = r6.f8966e
            r2 = 1
            if (r0 != 0) goto L99
            int r0 = r6.f8964c
            if (r0 >= 0) goto L4e
            com.google.android.gms.internal.ads.zzags r0 = r6.f8962a
            r3 = -1
            boolean r0 = r0.c(r7, r3)
            if (r0 == 0) goto L4d
            com.google.android.gms.internal.ads.zzags r0 = r6.f8962a
            boolean r0 = r0.b(r7, r2)
            if (r0 != 0) goto L29
            goto L4d
        L29:
            com.google.android.gms.internal.ads.zzags r0 = r6.f8962a
            int r3 = r0.f8970d
            int r0 = r0.f8967a
            r0 = r0 & r2
            if (r0 != r2) goto L42
            com.google.android.gms.internal.ads.zzen r0 = r6.f8963b
            int r0 = r0.l()
            if (r0 != 0) goto L42
            int r0 = r6.f(r1)
            int r3 = r3 + r0
            int r0 = r6.f8965d
            goto L43
        L42:
            r0 = 0
        L43:
            boolean r3 = com.google.android.gms.internal.ads.zzzy.e(r7, r3)
            if (r3 != 0) goto L4a
            return r1
        L4a:
            r6.f8964c = r0
            goto L4e
        L4d:
            return r1
        L4e:
            int r0 = r6.f(r0)
            int r3 = r6.f8964c
            int r4 = r6.f8965d
            int r3 = r3 + r4
            if (r0 <= 0) goto L8e
            com.google.android.gms.internal.ads.zzen r4 = r6.f8963b
            int r5 = r4.l()
            int r5 = r5 + r0
            r4.H(r5)
            com.google.android.gms.internal.ads.zzen r4 = r6.f8963b
            byte[] r5 = r4.h()
            int r4 = r4.l()
            boolean r4 = com.google.android.gms.internal.ads.zzzy.d(r7, r5, r4, r0)
            if (r4 != 0) goto L74
            return r1
        L74:
            com.google.android.gms.internal.ads.zzen r4 = r6.f8963b
            int r5 = r4.l()
            int r5 = r5 + r0
            r4.e(r5)
            com.google.android.gms.internal.ads.zzags r0 = r6.f8962a
            int[] r0 = r0.f8972f
            int r4 = r3 + (-1)
            r0 = r0[r4]
            r4 = 255(0xff, float:3.57E-43)
            if (r0 == r4) goto L8b
            goto L8c
        L8b:
            r2 = 0
        L8c:
            r6.f8966e = r2
        L8e:
            com.google.android.gms.internal.ads.zzags r0 = r6.f8962a
            int r0 = r0.f8969c
            if (r3 != r0) goto L95
            r3 = -1
        L95:
            r6.f8964c = r3
            goto Ld
        L99:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagr.e(com.google.android.gms.internal.ads.zzzv):boolean");
    }
}
