package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahf implements zzzu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzaab f9021d = new zzaab() { // from class: com.google.android.gms.internal.ads.zzahe
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzahf.f9021d;
            return new zzzu[]{new zzahf()};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzahg f9022a = new zzahg(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9023b = new zzen(16384);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9024c;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
    
        r16.h();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004f, code lost:
    
        if ((r5 - r3) >= 8192) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0055, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.google.android.gms.internal.ads.zzzv r16) throws java.io.IOException {
        /*
            r15 = this;
            com.google.android.gms.internal.ads.zzen r0 = new com.google.android.gms.internal.ads.zzen
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.h()
            r5 = r16
            com.google.android.gms.internal.ads.zzzk r5 = (com.google.android.gms.internal.ads.zzzk) r5
            r5.k(r4, r2, r1, r2)
            r0.f(r2)
            int r4 = r0.u()
            r6 = 4801587(0x494433, float:6.728456E-39)
            r7 = 3
            if (r4 == r6) goto L9e
            r16.h()
            r4 = r16
            com.google.android.gms.internal.ads.zzzk r4 = (com.google.android.gms.internal.ads.zzzk) r4
            r4.n(r3, r2)
            r5 = r3
        L2c:
            r1 = 0
        L2d:
            byte[] r6 = r0.h()
            r8 = 7
            r4.k(r6, r2, r8, r2)
            r0.f(r2)
            int r6 = r0.w()
            r9 = 44096(0xac40, float:6.1792E-41)
            r10 = 44097(0xac41, float:6.1793E-41)
            if (r6 == r9) goto L56
            if (r6 == r10) goto L56
            r16.h()
            int r5 = r5 + 1
            int r1 = r5 - r3
            r6 = 8192(0x2000, float:1.148E-41)
            if (r1 >= r6) goto L55
            r4.n(r5, r2)
            goto L2c
        L55:
            return r2
        L56:
            r9 = 1
            int r1 = r1 + r9
            r11 = 4
            if (r1 < r11) goto L5c
            return r9
        L5c:
            byte[] r9 = r0.h()
            int r12 = com.google.android.gms.internal.ads.zzyy.f21151b
            int r12 = r9.length
            r13 = -1
            if (r12 >= r8) goto L68
            r12 = -1
            goto L95
        L68:
            r12 = 2
            r12 = r9[r12]
            r12 = r12 & 255(0xff, float:3.57E-43)
            r14 = r9[r7]
            int r12 = r12 << 8
            r14 = r14 & 255(0xff, float:3.57E-43)
            r12 = r12 | r14
            r14 = 65535(0xffff, float:9.1834E-41)
            if (r12 != r14) goto L8f
            r11 = r9[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            r12 = 5
            r12 = r9[r12]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r11 = r11 << 16
            int r12 = r12 << 8
            r14 = 6
            r9 = r9[r14]
            r9 = r9 & 255(0xff, float:3.57E-43)
            r11 = r11 | r12
            r12 = r11 | r9
            goto L90
        L8f:
            r8 = 4
        L90:
            if (r6 != r10) goto L94
            int r8 = r8 + 2
        L94:
            int r12 = r12 + r8
        L95:
            if (r12 != r13) goto L98
            return r2
        L98:
            int r12 = r12 + (-7)
            r4.n(r12, r2)
            goto L2d
        L9e:
            r0.g(r7)
            int r4 = r0.r()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.n(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahf.a(com.google.android.gms.internal.ads.zzzv):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        int iE = zzzvVar.e(this.f9023b.h(), 0, 16384);
        if (iE == -1) {
            return -1;
        }
        this.f9023b.f(0);
        this.f9023b.e(iE);
        if (!this.f9024c) {
            this.f9022a.e(0L, 4);
            this.f9024c = true;
        }
        this.f9022a.c(this.f9023b);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f9022a.d(zzzxVar, new zzaiz(Integer.MIN_VALUE, 0, 1));
        zzzxVar.f0();
        zzzxVar.e(new zzaaw(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f9024c = false;
        this.f9022a.b();
    }
}
