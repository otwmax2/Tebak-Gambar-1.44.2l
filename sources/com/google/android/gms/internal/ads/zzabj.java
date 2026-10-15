package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzabj implements zzzu {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f8385p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f8388s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f8391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8395g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f8397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzzx f8398j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzabb f8399k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private zzaax f8400l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f8401m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzaab f8383n = new zzaab() { // from class: com.google.android.gms.internal.ads.zzabi
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzabj.f8383n;
            return new zzzu[]{new zzabj(0)};
        }
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f8384o = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final byte[] f8386q = zzew.C("#!AMR\n");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final byte[] f8387r = zzew.C("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f8385p = iArr;
        f8388s = iArr[8];
    }

    public zzabj() {
        this(0);
    }

    public zzabj(int i10) {
        this.f8389a = new byte[1];
        this.f8395g = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: EOFException -> 0x00b5, TryCatch #0 {EOFException -> 0x00b5, blocks: (B:5:0x0008, B:7:0x001c, B:21:0x003a, B:23:0x0043, B:22:0x003f, B:40:0x0081, B:41:0x009e, B:42:0x009f, B:43:0x00b4), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[Catch: EOFException -> 0x00b5, TryCatch #0 {EOFException -> 0x00b5, blocks: (B:5:0x0008, B:7:0x001c, B:21:0x003a, B:23:0x0043, B:22:0x003f, B:40:0x0081, B:41:0x009e, B:42:0x009f, B:43:0x00b4), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int b(com.google.android.gms.internal.ads.zzzv r12) throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.f8393e
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L8
            goto L55
        L8:
            r12.h()     // Catch: java.io.EOFException -> Lb5
            byte[] r0 = r11.f8389a     // Catch: java.io.EOFException -> Lb5
            r4 = r12
            com.google.android.gms.internal.ads.zzzk r4 = (com.google.android.gms.internal.ads.zzzk) r4     // Catch: java.io.EOFException -> Lb5
            r4.k(r0, r3, r2, r3)     // Catch: java.io.EOFException -> Lb5
            byte[] r0 = r11.f8389a     // Catch: java.io.EOFException -> Lb5
            r0 = r0[r3]     // Catch: java.io.EOFException -> Lb5
            r4 = r0 & 131(0x83, float:1.84E-43)
            r5 = 0
            if (r4 > 0) goto L9f
            int r0 = r0 >> 3
            boolean r4 = r11.f8390b     // Catch: java.io.EOFException -> Lb5
            r0 = r0 & 15
            if (r4 == 0) goto L2d
            r6 = 10
            if (r0 < r6) goto L38
            r6 = 13
            if (r0 <= r6) goto L2d
            goto L38
        L2d:
            if (r4 != 0) goto L7a
            r6 = 12
            if (r0 < r6) goto L38
            r6 = 14
            if (r0 > r6) goto L38
            goto L7a
        L38:
            if (r4 == 0) goto L3f
            int[] r4 = com.google.android.gms.internal.ads.zzabj.f8385p     // Catch: java.io.EOFException -> Lb5
            r0 = r4[r0]     // Catch: java.io.EOFException -> Lb5
            goto L43
        L3f:
            int[] r4 = com.google.android.gms.internal.ads.zzabj.f8384o     // Catch: java.io.EOFException -> Lb5
            r0 = r4[r0]     // Catch: java.io.EOFException -> Lb5
        L43:
            r11.f8392d = r0     // Catch: java.io.EOFException -> Lb5
            r11.f8393e = r0
            int r4 = r11.f8395g
            if (r4 != r1) goto L4e
            r11.f8395g = r0
            r4 = r0
        L4e:
            if (r4 != r0) goto L55
            int r4 = r11.f8396h
            int r4 = r4 + r2
            r11.f8396h = r4
        L55:
            com.google.android.gms.internal.ads.zzabb r4 = r11.f8399k
            int r12 = com.google.android.gms.internal.ads.zzaaz.a(r4, r12, r0, r2)
            if (r12 != r1) goto L5e
            return r1
        L5e:
            int r0 = r11.f8393e
            int r0 = r0 - r12
            r11.f8393e = r0
            if (r0 <= 0) goto L66
            return r3
        L66:
            com.google.android.gms.internal.ads.zzabb r4 = r11.f8399k
            long r5 = r11.f8391c
            r7 = 1
            int r8 = r11.f8392d
            r9 = 0
            r10 = 0
            r4.f(r5, r7, r8, r9, r10)
            long r0 = r11.f8391c
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r4
            r11.f8391c = r0
            return r3
        L7a:
            java.lang.String r12 = "WB"
            java.lang.String r3 = "NB"
            if (r2 == r4) goto L81
            r12 = r3
        L81:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lb5
            r2.<init>()     // Catch: java.io.EOFException -> Lb5
            java.lang.String r3 = "Illegal AMR "
            r2.append(r3)     // Catch: java.io.EOFException -> Lb5
            r2.append(r12)     // Catch: java.io.EOFException -> Lb5
            java.lang.String r12 = " frame type "
            r2.append(r12)     // Catch: java.io.EOFException -> Lb5
            r2.append(r0)     // Catch: java.io.EOFException -> Lb5
            java.lang.String r12 = r2.toString()     // Catch: java.io.EOFException -> Lb5
            com.google.android.gms.internal.ads.zzbu r12 = com.google.android.gms.internal.ads.zzbu.a(r12, r5)     // Catch: java.io.EOFException -> Lb5
            throw r12     // Catch: java.io.EOFException -> Lb5
        L9f:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lb5
            r12.<init>()     // Catch: java.io.EOFException -> Lb5
            java.lang.String r2 = "Invalid padding bits for frame header "
            r12.append(r2)     // Catch: java.io.EOFException -> Lb5
            r12.append(r0)     // Catch: java.io.EOFException -> Lb5
            java.lang.String r12 = r12.toString()     // Catch: java.io.EOFException -> Lb5
            com.google.android.gms.internal.ads.zzbu r12 = com.google.android.gms.internal.ads.zzbu.a(r12, r5)     // Catch: java.io.EOFException -> Lb5
            throw r12     // Catch: java.io.EOFException -> Lb5
        Lb5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabj.b(com.google.android.gms.internal.ads.zzzv):int");
    }

    private static boolean c(zzzv zzzvVar, byte[] bArr) throws IOException {
        zzzvVar.h();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((zzzk) zzzvVar).k(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean d(zzzv zzzvVar) throws IOException {
        byte[] bArr = f8386q;
        if (c(zzzvVar, bArr)) {
            this.f8390b = false;
            ((zzzk) zzzvVar).o(bArr.length, false);
            return true;
        }
        byte[] bArr2 = f8387r;
        if (!c(zzzvVar, bArr2)) {
            return false;
        }
        this.f8390b = true;
        ((zzzk) zzzvVar).o(bArr2.length, false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return d(zzzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws IOException {
        zzdl.b(this.f8399k);
        int i10 = zzew.f17494a;
        if (zzzvVar.c() == 0 && !d(zzzvVar)) {
            throw zzbu.a("Could not find AMR header.", null);
        }
        if (!this.f8401m) {
            this.f8401m = true;
            boolean z10 = this.f8390b;
            String str = true != z10 ? "audio/3gpp" : "audio/amr-wb";
            int i11 = true != z10 ? 8000 : 16000;
            zzabb zzabbVar = this.f8399k;
            zzad zzadVar = new zzad();
            zzadVar.s(str);
            zzadVar.l(f8388s);
            zzadVar.e0(1);
            zzadVar.t(i11);
            zzabbVar.e(zzadVar.y());
        }
        int iB = b(zzzvVar);
        if (this.f8394f) {
            return iB;
        }
        zzaaw zzaawVar = new zzaaw(-9223372036854775807L, 0L);
        this.f8400l = zzaawVar;
        this.f8398j.e(zzaawVar);
        this.f8394f = true;
        return iB;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8398j = zzzxVar;
        this.f8399k = zzzxVar.q(0, 1);
        zzzxVar.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f8391c = 0L;
        this.f8392d = 0;
        this.f8393e = 0;
        this.f8397i = 0L;
    }
}
