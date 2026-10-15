package com.google.android.gms.internal.firebase_auth;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgv implements Serializable, Iterable<Byte> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzgv f22647p = new zzhf(zzii.f22766c);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzhb f22648q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Comparator<zzgv> f22649r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22650o = 0;

    static {
        zzgu zzguVar = null;
        f22648q = zzgq.b() ? new zzhe(zzguVar) : new zzgz(zzguVar);
        f22649r = new zzgx();
    }

    zzgv() {
    }

    public static zzgv l(String str) {
        return new zzhf(str.getBytes(zzii.f22764a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(byte b10) {
        return b10 & 255;
    }

    static int q(int i10, int i11, int i12) {
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

    static zzhd s(int i10) {
        return new zzhd(i10, null);
    }

    public abstract boolean a();

    public abstract byte c(int i10);

    public abstract boolean equals(Object obj);

    public abstract int g();

    public final int hashCode() {
        int iJ = this.f22650o;
        if (iJ == 0) {
            int iG = g();
            iJ = j(iG, 0, iG);
            if (iJ == 0) {
                iJ = 1;
            }
            this.f22650o = iJ;
        }
        return iJ;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzgu(this);
    }

    protected abstract int j(int i10, int i11, int i12);

    public abstract zzgv k(int i10, int i11);

    protected abstract String m(Charset charset);

    abstract void n(zzgs zzgsVar) throws IOException;

    abstract byte o(int i10);

    public final String r() {
        return g() == 0 ? BuildConfig.FLAVOR : m(zzii.f22764a);
    }

    protected final int t() {
        return this.f22650o;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(g());
        objArr[2] = g() <= 50 ? zzkr.a(this) : String.valueOf(zzkr.a(k(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
