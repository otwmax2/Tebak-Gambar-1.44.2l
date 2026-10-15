package androidx.datastore.preferences.protobuf;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class h implements Iterable<Byte>, Serializable {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final h f2704p = new j(a0.f2649c);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final f f2705q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Comparator<h> f2706r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f2707o = 0;

    /* JADX INFO: compiled from: ByteString.java */
    class a extends c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f2708o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final int f2709p;

        a() {
            this.f2709p = h.this.size();
        }

        @Override // androidx.datastore.preferences.protobuf.h.g
        public byte c() {
            int i10 = this.f2708o;
            if (i10 >= this.f2709p) {
                throw new NoSuchElementException();
            }
            this.f2708o = i10 + 1;
            return h.this.o(i10);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2708o < this.f2709p;
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    static class b implements Comparator<h> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(h hVar, h hVar2) {
            g it = hVar.iterator();
            g it2 = hVar2.iterator();
            while (it.hasNext() && it2.hasNext()) {
                int iCompare = Integer.compare(h.y(it.c()), h.y(it2.c()));
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return Integer.compare(hVar.size(), hVar2.size());
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    static abstract class c implements g {
        c() {
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Byte next() {
            return Byte.valueOf(c());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    private static final class d implements f {
        private d() {
        }

        @Override // androidx.datastore.preferences.protobuf.h.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    private static final class e extends j {
        private static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final int f2711t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final int f2712u;

        e(byte[] bArr, int i10, int i11) {
            super(bArr);
            h.j(i10, i10 + i11, bArr.length);
            this.f2711t = i10;
            this.f2712u = i11;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // androidx.datastore.preferences.protobuf.h.j
        protected int J() {
            return this.f2711t;
        }

        @Override // androidx.datastore.preferences.protobuf.h.j, androidx.datastore.preferences.protobuf.h
        public byte g(int i10) {
            h.i(i10, size());
            return this.f2715s[this.f2711t + i10];
        }

        @Override // androidx.datastore.preferences.protobuf.h.j, androidx.datastore.preferences.protobuf.h
        protected void n(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f2715s, J() + i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.h.j, androidx.datastore.preferences.protobuf.h
        byte o(int i10) {
            return this.f2715s[this.f2711t + i10];
        }

        @Override // androidx.datastore.preferences.protobuf.h.j, androidx.datastore.preferences.protobuf.h
        public int size() {
            return this.f2712u;
        }

        Object writeReplace() {
            return h.D(x());
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    private interface f {
        byte[] a(byte[] bArr, int i10, int i11);
    }

    /* JADX INFO: compiled from: ByteString.java */
    public interface g extends Iterator<Byte> {
        byte c();
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ByteString.java */
    static final class C0046h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.datastore.preferences.protobuf.k f2713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f2714b;

        /* synthetic */ C0046h(int i10, a aVar) {
            this(i10);
        }

        public h a() {
            this.f2713a.c();
            return new j(this.f2714b);
        }

        public androidx.datastore.preferences.protobuf.k b() {
            return this.f2713a;
        }

        private C0046h(int i10) {
            byte[] bArr = new byte[i10];
            this.f2714b = bArr;
            this.f2713a = androidx.datastore.preferences.protobuf.k.g0(bArr);
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    static abstract class i extends h {
        i() {
        }

        @Override // androidx.datastore.preferences.protobuf.h, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    private static class j extends i {
        private static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        protected final byte[] f2715s;

        j(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.f2715s = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        protected final String B(Charset charset) {
            return new String(this.f2715s, J(), size(), charset);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        final void H(androidx.datastore.preferences.protobuf.g gVar) throws IOException {
            gVar.a(this.f2715s, J(), size());
        }

        final boolean I(h hVar, int i10, int i11) {
            if (i11 > hVar.size()) {
                throw new IllegalArgumentException("Length too large: " + i11 + size());
            }
            int i12 = i10 + i11;
            if (i12 > hVar.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + hVar.size());
            }
            if (!(hVar instanceof j)) {
                return hVar.v(i10, i12).equals(v(0, i11));
            }
            j jVar = (j) hVar;
            byte[] bArr = this.f2715s;
            byte[] bArr2 = jVar.f2715s;
            int iJ = J() + i11;
            int iJ2 = J();
            int iJ3 = jVar.J() + i10;
            while (iJ2 < iJ) {
                if (bArr[iJ2] != bArr2[iJ3]) {
                    return false;
                }
                iJ2++;
                iJ3++;
            }
            return true;
        }

        protected int J() {
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof h) || size() != ((h) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof j)) {
                return obj.equals(this);
            }
            j jVar = (j) obj;
            int iU = u();
            int iU2 = jVar.u();
            if (iU == 0 || iU2 == 0 || iU == iU2) {
                return I(jVar, 0, size());
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public byte g(int i10) {
            return this.f2715s[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.h
        protected void n(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.f2715s, i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        byte o(int i10) {
            return this.f2715s[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public final boolean p() {
            int iJ = J();
            return s1.n(this.f2715s, iJ, size() + iJ);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public final androidx.datastore.preferences.protobuf.i s() {
            return androidx.datastore.preferences.protobuf.i.j(this.f2715s, J(), size(), true);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public int size() {
            return this.f2715s.length;
        }

        @Override // androidx.datastore.preferences.protobuf.h
        protected final int t(int i10, int i11, int i12) {
            return a0.i(i10, this.f2715s, J() + i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.h
        public final h v(int i10, int i11) {
            int iJ = h.j(i10, i11, size());
            return iJ == 0 ? h.f2704p : new e(this.f2715s, J() + i10, iJ);
        }
    }

    /* JADX INFO: compiled from: ByteString.java */
    private static final class k implements f {
        private k() {
        }

        @Override // androidx.datastore.preferences.protobuf.h.f
        public byte[] a(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }

        /* synthetic */ k(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        f2705q = androidx.datastore.preferences.protobuf.d.c() ? new k(aVar) : new d(aVar);
        f2706r = new b();
    }

    h() {
    }

    static h D(byte[] bArr) {
        return new j(bArr);
    }

    static h E(byte[] bArr, int i10, int i11) {
        return new e(bArr, i10, i11);
    }

    static void i(int i10, int i11) {
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
    }

    static int j(int i10, int i11, int i12) {
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

    public static h k(byte[] bArr) {
        return l(bArr, 0, bArr.length);
    }

    public static h l(byte[] bArr, int i10, int i11) {
        j(i10, i10 + i11, bArr.length);
        return new j(f2705q.a(bArr, i10, i11));
    }

    public static h m(String str) {
        return new j(str.getBytes(a0.f2647a));
    }

    static C0046h r(int i10) {
        return new C0046h(i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int y(byte b10) {
        return b10 & 255;
    }

    public final String A(Charset charset) {
        return size() == 0 ? BuildConfig.FLAVOR : B(charset);
    }

    protected abstract String B(Charset charset);

    public final String C() {
        return A(a0.f2647a);
    }

    abstract void H(androidx.datastore.preferences.protobuf.g gVar) throws IOException;

    public abstract boolean equals(Object obj);

    public abstract byte g(int i10);

    public final int hashCode() {
        int iT = this.f2707o;
        if (iT == 0) {
            int size = size();
            iT = t(size, 0, size);
            if (iT == 0) {
                iT = 1;
            }
            this.f2707o = iT;
        }
        return iT;
    }

    protected abstract void n(byte[] bArr, int i10, int i11, int i12);

    abstract byte o(int i10);

    public abstract boolean p();

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public g iterator() {
        return new a();
    }

    public abstract androidx.datastore.preferences.protobuf.i s();

    public abstract int size();

    protected abstract int t(int i10, int i11, int i12);

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected final int u() {
        return this.f2707o;
    }

    public abstract h v(int i10, int i11);

    public final byte[] x() {
        int size = size();
        if (size == 0) {
            return a0.f2649c;
        }
        byte[] bArr = new byte[size];
        n(bArr, 0, 0, size);
        return bArr;
    }
}
