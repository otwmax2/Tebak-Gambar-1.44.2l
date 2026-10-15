package com.google.android.gms.internal.drive;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f22193a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f22194b = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f22195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ByteBuffer f22196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzjo f22197e;

    static {
        byte[] bArr = new byte[0];
        f22195c = bArr;
        f22196d = ByteBuffer.wrap(bArr);
        f22197e = zzjo.a(bArr, 0, bArr.length, false);
    }

    static <T> T a(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        int iC = c(length, bArr, 0, length);
        if (iC == 0) {
            return 1;
        }
        return iC;
    }

    static int c(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    static Object d(Object obj, Object obj2) {
        return ((zzlq) obj).g().X((zzlq) obj2).G2();
    }

    static <T> T e(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static boolean f(byte[] bArr) {
        return zznf.g(bArr);
    }

    public static int g(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f22193a);
    }

    static boolean i(zzlq zzlqVar) {
        return false;
    }

    public static int j(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }
}
