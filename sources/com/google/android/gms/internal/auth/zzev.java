package com.google.android.gms.internal.auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzev {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f21493a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f21494b = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f21495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ByteBuffer f21496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzee f21497e;

    static {
        byte[] bArr = new byte[0];
        f21495c = bArr;
        f21496d = ByteBuffer.wrap(bArr);
        int i10 = zzee.f21470a;
        zzed zzedVar = new zzed(bArr, 0, 0, false, null);
        try {
            zzedVar.c(0);
            f21497e = zzedVar;
        } catch (zzew e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        int iD = d(length, bArr, 0, length);
        if (iD == 0) {
            return 1;
        }
        return iD;
    }

    public static int c(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    static int d(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    static <T> T e(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    static <T> T f(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    static Object g(Object obj, Object obj2) {
        return ((zzfq) obj).b().F2((zzfq) obj2).e();
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f21493a);
    }

    public static boolean i(byte[] bArr) {
        return zzhd.c(bArr);
    }
}
