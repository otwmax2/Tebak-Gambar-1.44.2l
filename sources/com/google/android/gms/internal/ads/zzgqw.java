package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgqw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f19489a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f19490b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Charset f19491c = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f19492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteBuffer f19493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzgpm f19494f;

    static {
        byte[] bArr = new byte[0];
        f19492d = bArr;
        f19493e = ByteBuffer.wrap(bArr);
        int i10 = zzgpm.f19410e;
        f19494f = zzgpm.h(bArr, 0, 0, false);
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
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    static Object e(Object obj) {
        Objects.requireNonNull(obj);
        return obj;
    }

    static Object f(Object obj, String str) {
        Objects.requireNonNull(obj, str);
        return obj;
    }

    public static String g(byte[] bArr) {
        return new String(bArr, f19490b);
    }

    public static boolean h(byte[] bArr) {
        return zzgtv.i(bArr);
    }
}
