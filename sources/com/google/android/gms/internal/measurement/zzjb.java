package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjb implements Iterable, Serializable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzjb f23589p = new zziy(zzkk.f23666d);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Comparator f23590q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzja f23591r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f23592o = 0;

    static {
        int i10 = zzin.f23575a;
        f23591r = new zzja(null);
        f23590q = new zzit();
    }

    zzjb() {
    }

    static int o(int i10, int i11, int i12) {
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

    public static zzjb q(byte[] bArr, int i10, int i11) {
        o(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new zziy(bArr2);
    }

    public static zzjb r(String str) {
        return new zziy(str.getBytes(zzkk.f23664b));
    }

    public abstract byte c(int i10);

    public abstract boolean equals(Object obj);

    abstract byte g(int i10);

    public final int hashCode() {
        int iJ = this.f23592o;
        if (iJ == 0) {
            int i10 = i();
            iJ = j(i10, 0, i10);
            if (iJ == 0) {
                iJ = 1;
            }
            this.f23592o = iJ;
        }
        return iJ;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzis(this);
    }

    protected abstract int j(int i10, int i11, int i12);

    public abstract zzjb k(int i10, int i11);

    protected abstract String l(Charset charset);

    abstract void m(zzir zzirVar) throws IOException;

    public abstract boolean n();

    protected final int p() {
        return this.f23592o;
    }

    public final String s(Charset charset) {
        return i() == 0 ? BuildConfig.FLAVOR : l(charset);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(i());
        objArr[2] = i() <= 50 ? zzmj.a(this) : zzmj.a(k(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
