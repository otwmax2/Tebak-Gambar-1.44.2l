package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahc implements zzzu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzaab f9004d = new zzaab() { // from class: com.google.android.gms.internal.ads.zzahb
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzahc.f9004d;
            return new zzzu[]{new zzahc()};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzahd f9005a = new zzahd(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9006b = new zzen(2786);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9007c;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
    
        if ((r5 - r3) >= 8192) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004c, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
    
        r9.h();
        r5 = r5 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.google.android.gms.internal.ads.zzzv r9) throws java.io.IOException {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzen r0 = new com.google.android.gms.internal.ads.zzen
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.h()
            r5 = r9
            com.google.android.gms.internal.ads.zzzk r5 = (com.google.android.gms.internal.ads.zzzk) r5
            r5.k(r4, r2, r1, r2)
            r0.f(r2)
            int r4 = r0.u()
            r6 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r6) goto L65
            r9.h()
            r4 = r9
            com.google.android.gms.internal.ads.zzzk r4 = (com.google.android.gms.internal.ads.zzzk) r4
            r4.n(r3, r2)
            r5 = r3
        L29:
            r1 = 0
        L2a:
            byte[] r6 = r0.h()
            r7 = 6
            r4.k(r6, r2, r7, r2)
            r0.f(r2)
            int r6 = r0.w()
            r7 = 2935(0xb77, float:4.113E-42)
            if (r6 == r7) goto L4d
            r9.h()
            int r5 = r5 + 1
            int r1 = r5 - r3
            r6 = 8192(0x2000, float:1.148E-41)
            if (r1 >= r6) goto L4c
            r4.n(r5, r2)
            goto L29
        L4c:
            return r2
        L4d:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L53
            return r6
        L53:
            byte[] r6 = r0.h()
            int r6 = com.google.android.gms.internal.ads.zzyv.b(r6)
            r7 = -1
            if (r6 != r7) goto L5f
            return r2
        L5f:
            int r6 = r6 + (-6)
            r4.n(r6, r2)
            goto L2a
        L65:
            r4 = 3
            r0.g(r4)
            int r4 = r0.r()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.n(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahc.a(com.google.android.gms.internal.ads.zzzv):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        int iE = zzzvVar.e(this.f9006b.h(), 0, 2786);
        if (iE == -1) {
            return -1;
        }
        this.f9006b.f(0);
        this.f9006b.e(iE);
        if (!this.f9007c) {
            this.f9005a.e(0L, 4);
            this.f9007c = true;
        }
        this.f9005a.c(this.f9006b);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f9005a.d(zzzxVar, new zzaiz(Integer.MIN_VALUE, 0, 1));
        zzzxVar.f0();
        zzzxVar.e(new zzaaw(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f9007c = false;
        this.f9005a.b();
    }
}
