package com.google.android.gms.internal.ads;

import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgpe implements Iterable, Serializable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzgpe f19379p = new zzgpa(zzgqw.f19492d);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Comparator f19380q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgpd f19381r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19382o = 0;

    static {
        int i10 = zzgop.f19359a;
        f19381r = new zzgpd(null);
        f19380q = new zzgov();
    }

    zzgpe() {
    }

    static int C(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    public static zzgpb H() {
        return new zzgpb(128);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgpe I(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = iterable.size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? f19379p : n(iterable.iterator(), size);
    }

    public static zzgpe J(byte[] bArr) {
        return L(bArr, 0, bArr.length);
    }

    public static zzgpe L(byte[] bArr, int i10, int i11) {
        C(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new zzgpa(bArr2);
    }

    public static zzgpe M(String str) {
        return new zzgpa(str.getBytes(zzgqw.f19490b));
    }

    public static zzgpe N(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        int iMin = 256;
        while (true) {
            byte[] bArr = new byte[iMin];
            int i10 = 0;
            while (i10 < iMin) {
                int i11 = inputStream.read(bArr, i10, iMin - i10);
                if (i11 == -1) {
                    break;
                }
                i10 += i11;
            }
            zzgpe zzgpeVarL = i10 == 0 ? null : L(bArr, 0, i10);
            if (zzgpeVarL == null) {
                return I(arrayList);
            }
            arrayList.add(zzgpeVarL);
            iMin = Math.min(iMin + iMin, Utility.DEFAULT_STREAM_BUFFER_SIZE);
        }
    }

    static zzgpe O(byte[] bArr) {
        return new zzgpa(bArr);
    }

    static void g(int i10, int i11) {
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
    }

    private static zzgpe n(Iterator it, int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i10)));
        }
        if (i10 == 1) {
            return (zzgpe) it.next();
        }
        int i11 = i10 >>> 1;
        zzgpe zzgpeVarN = n(it, i11);
        zzgpe zzgpeVarN2 = n(it, i10 - i11);
        if (Integer.MAX_VALUE - zzgpeVarN.o() >= zzgpeVarN2.o()) {
            return zzgso.Q(zzgpeVarN, zzgpeVarN2);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + zzgpeVarN.o() + "+" + zzgpeVarN2.o());
    }

    abstract void A(zzgot zzgotVar) throws IOException;

    public abstract boolean B();

    protected final int D() {
        return this.f19382o;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public zzgoy iterator() {
        return new zzgou(this);
    }

    public final String c(Charset charset) {
        return o() == 0 ? BuildConfig.FLAVOR : x(charset);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iS = this.f19382o;
        if (iS == 0) {
            int iO = o();
            iS = s(iO, 0, iO);
            if (iS == 0) {
                iS = 1;
            }
            this.f19382o = iS;
        }
        return iS;
    }

    @Deprecated
    public final void i(byte[] bArr, int i10, int i11, int i12) {
        C(0, i12, o());
        C(i11, i11 + i12, bArr.length);
        if (i12 > 0) {
            p(bArr, 0, i11, i12);
        }
    }

    public final boolean j() {
        return o() == 0;
    }

    public final byte[] k() {
        int iO = o();
        if (iO == 0) {
            return zzgqw.f19492d;
        }
        byte[] bArr = new byte[iO];
        p(bArr, 0, 0, iO);
        return bArr;
    }

    public abstract byte l(int i10);

    abstract byte m(int i10);

    public abstract int o();

    protected abstract void p(byte[] bArr, int i10, int i11, int i12);

    protected abstract int q();

    protected abstract boolean r();

    protected abstract int s(int i10, int i11, int i12);

    protected abstract int t(int i10, int i11, int i12);

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(o());
        objArr[2] = o() <= 50 ? zzgte.a(this) : zzgte.a(u(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract zzgpe u(int i10, int i11);

    public abstract zzgpm v();

    protected abstract String x(Charset charset);

    public abstract ByteBuffer y();
}
