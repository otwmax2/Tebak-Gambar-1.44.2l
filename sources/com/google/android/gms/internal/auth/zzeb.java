package com.google.android.gms.internal.auth;

import com.vungle.mediation.BuildConfig;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzeb implements Iterable<Byte>, Serializable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzeb f21462p = new zzdz(zzev.f21495c);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Comparator<zzeb> f21463q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzea f21464r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f21465o = 0;

    static {
        int i10 = zzdo.f21449a;
        f21464r = new zzea(null);
        f21463q = new zzdu();
    }

    zzeb() {
    }

    static int n(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i10);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i11 < i10) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i10);
            sb2.append(", ");
            sb2.append(i11);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i11);
        sb3.append(" >= ");
        sb3.append(i12);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static zzeb p(byte[] bArr, int i10, int i11) {
        n(i10, i10 + i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new zzdz(bArr2);
    }

    public static zzeb q(String str) {
        return new zzdz(str.getBytes(zzev.f21493a));
    }

    public abstract byte c(int i10);

    public abstract boolean equals(Object obj);

    abstract byte g(int i10);

    public final int hashCode() {
        int iJ = this.f21465o;
        if (iJ == 0) {
            int i10 = i();
            iJ = j(i10, 0, i10);
            if (iJ == 0) {
                iJ = 1;
            }
            this.f21465o = iJ;
        }
        return iJ;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new zzds(this);
    }

    protected abstract int j(int i10, int i11, int i12);

    public abstract zzeb k(int i10, int i11);

    protected abstract String l(Charset charset);

    public abstract boolean m();

    protected final int o() {
        return this.f21465o;
    }

    public final String r(Charset charset) {
        return i() == 0 ? BuildConfig.FLAVOR : l(charset);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(i());
        objArr[2] = i() <= 50 ? zzgn.a(this) : String.valueOf(zzgn.a(k(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
