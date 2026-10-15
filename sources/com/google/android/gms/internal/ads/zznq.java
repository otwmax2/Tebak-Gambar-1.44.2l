package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zznq {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zznq f20270c = new zznq(new int[]{2}, 8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zznq f20271d = new zznq(new int[]{2, 5, 6}, 8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzfqn f20272e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f20273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f20274b;

    static {
        zzfqm zzfqmVar = new zzfqm();
        zzfqmVar.a(5, 6);
        zzfqmVar.a(17, 6);
        zzfqmVar.a(7, 6);
        zzfqmVar.a(18, 6);
        zzfqmVar.a(6, 8);
        zzfqmVar.a(8, 8);
        zzfqmVar.a(14, 8);
        f20272e = zzfqmVar.c();
    }

    public zznq(int[] iArr, int i10) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        this.f20273a = iArrCopyOf;
        Arrays.sort(iArrCopyOf);
        this.f20274b = 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair a(com.google.android.gms.internal.ads.zzaf r10) {
        /*
            r9 = this;
            java.lang.String r0 = r10.f8731l
            java.util.Objects.requireNonNull(r0)
            java.lang.String r1 = r10.f8728i
            int r0 = com.google.android.gms.internal.ads.zzbt.a(r0, r1)
            com.google.android.gms.internal.ads.zzfqn r1 = com.google.android.gms.internal.ads.zznq.f20272e
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            boolean r2 = r1.containsKey(r2)
            r3 = 0
            if (r2 != 0) goto L19
            return r3
        L19:
            r2 = 7
            r4 = 6
            r5 = 8
            r6 = 18
            if (r0 != r6) goto L2b
            boolean r0 = r9.c(r6)
            if (r0 != 0) goto L29
            r0 = 6
            goto L34
        L29:
            r0 = 18
        L2b:
            if (r0 != r5) goto L34
            boolean r7 = r9.c(r5)
            if (r7 != 0) goto L34
            r0 = 7
        L34:
            boolean r7 = r9.c(r0)
            if (r7 != 0) goto L3b
            return r3
        L3b:
            int r7 = r10.f8744y
            r8 = -1
            if (r7 == r8) goto L46
            if (r0 != r6) goto L43
            goto L46
        L43:
            if (r7 <= r5) goto L6e
            return r3
        L46:
            int r10 = r10.f8745z
            if (r10 != r8) goto L4d
            r10 = 48000(0xbb80, float:6.7262E-41)
        L4d:
            int r6 = com.google.android.gms.internal.ads.zzew.f17494a
            r7 = 29
            if (r6 < r7) goto L58
            int r7 = com.google.android.gms.internal.ads.zznp.a(r0, r10)
            goto L6e
        L58:
            java.lang.Integer r10 = java.lang.Integer.valueOf(r0)
            r6 = 0
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            java.lang.Object r10 = r1.getOrDefault(r10, r6)
            java.lang.Integer r10 = (java.lang.Integer) r10
            java.util.Objects.requireNonNull(r10)
            int r7 = r10.intValue()
        L6e:
            int r10 = com.google.android.gms.internal.ads.zzew.f17494a
            r1 = 28
            if (r10 > r1) goto L83
            if (r7 != r2) goto L79
            r4 = 8
            goto L84
        L79:
            r1 = 3
            if (r7 == r1) goto L84
            r1 = 4
            if (r7 == r1) goto L84
            r1 = 5
            if (r7 != r1) goto L83
            goto L84
        L83:
            r4 = r7
        L84:
            r1 = 26
            if (r10 > r1) goto L96
            java.lang.String r10 = com.google.android.gms.internal.ads.zzew.f17495b
            java.lang.String r1 = "fugu"
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L96
            r10 = 1
            if (r4 != r10) goto L96
            r4 = 2
        L96:
            int r10 = com.google.android.gms.internal.ads.zzew.U(r4)
            if (r10 != 0) goto L9d
            return r3
        L9d:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            android.util.Pair r10 = android.util.Pair.create(r0, r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznq.a(com.google.android.gms.internal.ads.zzaf):android.util.Pair");
    }

    public final boolean c(int i10) {
        return Arrays.binarySearch(this.f20273a, i10) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zznq) && Arrays.equals(this.f20273a, ((zznq) obj).f20273a);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f20273a) * 31) + 8;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=8, supportedEncodings=" + Arrays.toString(this.f20273a) + "]";
    }
}
