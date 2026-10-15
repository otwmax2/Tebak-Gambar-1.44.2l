package com.google.android.gms.internal.drive;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjc implements Serializable, Iterable<Byte> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzjc f22078p = new zzjm(zzkm.f22195c);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzji f22079q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Comparator<zzjc> f22080r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22081o = 0;

    static {
        zzjd zzjdVar = null;
        f22079q = zzix.a() ? new zzjn(zzjdVar) : new zzjg(zzjdVar);
        f22080r = new zzje();
    }

    zzjc() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(byte b10) {
        return b10 & 255;
    }

    static int m(int i10, int i11, int i12) {
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

    public static zzjc q(String str) {
        return new zzjm(str.getBytes(zzkm.f22193a));
    }

    static zzjk t(int i10) {
        return new zzjk(i10, null);
    }

    public abstract boolean equals(Object obj);

    protected abstract int g(int i10, int i11, int i12);

    public final int hashCode() {
        int iG = this.f22081o;
        if (iG == 0) {
            int size = size();
            iG = g(size, 0, size);
            if (iG == 0) {
                iG = 1;
            }
            this.f22081o = iG;
        }
        return iG;
    }

    public abstract zzjc i(int i10, int i11);

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzjd(this);
    }

    protected abstract String j(Charset charset);

    abstract void k(zzjb zzjbVar) throws IOException;

    public final String n() {
        return size() == 0 ? BuildConfig.FLAVOR : j(zzkm.f22193a);
    }

    public abstract boolean o();

    protected final int p() {
        return this.f22081o;
    }

    public abstract byte r(int i10);

    abstract byte s(int i10);

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
