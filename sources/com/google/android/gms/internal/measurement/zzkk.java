package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f23663a = Charset.forName("US-ASCII");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f23664b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Charset f23665c = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f23666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteBuffer f23667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzjf f23668f;

    static {
        byte[] bArr = new byte[0];
        f23666d = bArr;
        f23667e = ByteBuffer.wrap(bArr);
        int i10 = zzjf.f23597a;
        zzjd zzjdVar = new zzjd(bArr, 0, 0, false, null);
        try {
            zzjdVar.c(0);
            f23668f = zzjdVar;
        } catch (zzkm e10) {
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

    static Object e(Object obj) {
        Objects.requireNonNull(obj);
        return obj;
    }

    static Object f(Object obj, String str) {
        Objects.requireNonNull(obj, str);
        return obj;
    }

    static Object g(Object obj, Object obj2) {
        return ((zzlj) obj).f().z0((zzlj) obj2).m3();
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f23664b);
    }

    public static boolean i(byte[] bArr) {
        return zzna.e(bArr);
    }
}
