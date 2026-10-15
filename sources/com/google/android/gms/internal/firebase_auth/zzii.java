package com.google.android.gms.internal.firebase_auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzii {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f22764a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f22765b = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f22766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ByteBuffer f22767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final zzhh f22768e;

    static {
        byte[] bArr = new byte[0];
        f22766c = bArr;
        f22767d = ByteBuffer.wrap(bArr);
        f22768e = zzhh.a(bArr, 0, bArr.length, false);
    }

    static int a(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int c(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    static <T> T d(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    static Object e(Object obj, Object obj2) {
        return ((zzjn) obj).R().q1((zzjn) obj2).c();
    }

    static <T> T f(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    static boolean g(zzjn zzjnVar) {
        if (!(zzjnVar instanceof zzgp)) {
            return false;
        }
        return false;
    }

    public static boolean h(byte[] bArr) {
        return zzlh.f(bArr);
    }

    public static String i(byte[] bArr) {
        return new String(bArr, f22764a);
    }

    public static int j(byte[] bArr) {
        int length = bArr.length;
        int iA = a(length, bArr, 0, length);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }
}
