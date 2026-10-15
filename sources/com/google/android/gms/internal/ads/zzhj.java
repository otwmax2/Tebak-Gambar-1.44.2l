package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhj extends zzbw {
    public static final zzn D = new zzn() { // from class: com.google.android.gms.internal.ads.zzhi
    };
    private static final String E = zzew.p(1001);
    private static final String F = zzew.p(1002);
    private static final String G = zzew.p(1003);
    private static final String H = zzew.p(1004);
    private static final String I = zzew.p(1005);
    private static final String J = zzew.p(1006);
    public final int A;
    public final zzbn B;
    final boolean C;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f19806w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f19807x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f19808y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final zzaf f19809z;

    private zzhj(int i10, Throwable th, int i11) {
        this(i10, th, null, i11, null, -1, null, 4, false);
    }

    public static zzhj b(Throwable th, String str, int i10, zzaf zzafVar, int i11, boolean z10, int i12) {
        return new zzhj(1, th, null, i12, str, i10, zzafVar, zzafVar == null ? 4 : i11, z10);
    }

    public static zzhj c(IOException iOException, int i10) {
        return new zzhj(0, iOException, i10);
    }

    public static zzhj d(RuntimeException runtimeException, int i10) {
        return new zzhj(2, runtimeException, i10);
    }

    final zzhj a(zzbn zzbnVar) {
        String message = getMessage();
        int i10 = zzew.f17494a;
        return new zzhj(message, getCause(), this.f11415o, this.f19806w, this.f19807x, this.f19808y, this.f19809z, this.A, zzbnVar, this.f11416p, this.C);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private zzhj(int i10, Throwable th, String str, int i11, String str2, int i12, zzaf zzafVar, int i13, boolean z10) {
        String str3;
        if (i10 == 0) {
            str3 = "Source error";
        } else if (i10 != 1) {
            str3 = "Unexpected runtime error";
        } else {
            str3 = str2 + " error, index=" + i12 + ", format=" + String.valueOf(zzafVar) + ", format_supported=" + zzew.m(i13);
        }
        this(TextUtils.isEmpty(null) ? str3 : str3.concat(": null"), th, i11, i10, str2, i12, zzafVar, i13, null, SystemClock.elapsedRealtime(), z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private zzhj(java.lang.String r9, java.lang.Throwable r10, int r11, int r12, java.lang.String r13, int r14, com.google.android.gms.internal.ads.zzaf r15, int r16, com.google.android.gms.internal.ads.zzbn r17, long r18, boolean r20) {
        /*
            r8 = this;
            r6 = r8
            r7 = r20
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r18
            r0.<init>(r1, r2, r3, r4)
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L17
            r2 = r12
            if (r2 != r1) goto L15
            r2 = 1
            goto L18
        L15:
            r3 = 0
            goto L19
        L17:
            r2 = r12
        L18:
            r3 = 1
        L19:
            com.google.android.gms.internal.ads.zzdl.d(r3)
            if (r10 != 0) goto L1f
            goto L20
        L1f:
            r0 = 1
        L20:
            com.google.android.gms.internal.ads.zzdl.d(r0)
            r6.f19806w = r2
            r0 = r13
            r6.f19807x = r0
            r0 = r14
            r6.f19808y = r0
            r0 = r15
            r6.f19809z = r0
            r0 = r16
            r6.A = r0
            r0 = r17
            r6.B = r0
            r6.C = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhj.<init>(java.lang.String, java.lang.Throwable, int, int, java.lang.String, int, com.google.android.gms.internal.ads.zzaf, int, com.google.android.gms.internal.ads.zzbn, long, boolean):void");
    }
}
