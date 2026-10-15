package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: Internal.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Charset f2647a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Charset f2648b = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f2649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ByteBuffer f2650d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final androidx.datastore.preferences.protobuf.i f2651e;

    /* JADX INFO: compiled from: Internal.java */
    public interface a extends i<Boolean> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface b extends i<Double> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface c {
        int h();
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface d<T extends c> {
        T a(int i10);
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface e {
        boolean a(int i10);
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface f extends i<Float> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface g extends i<Integer> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface h extends i<Long> {
    }

    /* JADX INFO: compiled from: Internal.java */
    public interface i<E> extends List<E>, RandomAccess {
        i<E> B0(int i10);

        boolean O3();

        void p0();
    }

    static {
        byte[] bArr = new byte[0];
        f2649c = bArr;
        f2650d = ByteBuffer.wrap(bArr);
        f2651e = androidx.datastore.preferences.protobuf.i.h(bArr);
    }

    static <T> T a(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    static <T> T b(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static int c(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    static int e(byte[] bArr, int i10, int i11) {
        int i12 = i(i11, bArr, i10, i11);
        if (i12 == 0) {
            return 1;
        }
        return i12;
    }

    public static int f(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean g(byte[] bArr) {
        return s1.m(bArr);
    }

    static Object h(Object obj, Object obj2) {
        return ((r0) obj).b().l0((r0) obj2).A2();
    }

    static int i(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static String j(byte[] bArr) {
        return new String(bArr, f2647a);
    }
}
