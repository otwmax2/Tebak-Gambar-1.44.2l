package d7;

import com.google.gson.o;
import com.google.gson.r;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: JsonTreeReader.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends h7.a {
    private static final Reader H = new a();
    private static final Object I = new Object();
    private Object[] D;
    private int E;
    private String[] F;
    private int[] G;

    /* JADX INFO: compiled from: JsonTreeReader.java */
    class a extends Reader {
        a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            throw new AssertionError();
        }
    }

    public e(com.google.gson.l lVar) {
        super(H);
        this.D = new Object[32];
        this.E = 0;
        this.F = new String[32];
        this.G = new int[32];
        P(lVar);
    }

    private void L(h7.b bVar) throws IOException {
        if (x() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + x() + m());
    }

    private Object M() {
        return this.D[this.E - 1];
    }

    private Object N() {
        Object[] objArr = this.D;
        int i10 = this.E - 1;
        this.E = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    private void P(Object obj) {
        int i10 = this.E;
        Object[] objArr = this.D;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.D = Arrays.copyOf(objArr, i11);
            this.G = Arrays.copyOf(this.G, i11);
            this.F = (String[]) Arrays.copyOf(this.F, i11);
        }
        Object[] objArr2 = this.D;
        int i12 = this.E;
        this.E = i12 + 1;
        objArr2[i12] = obj;
    }

    private String m() {
        return " at path " + L2();
    }

    @Override // h7.a
    public void J() throws IOException {
        if (x() == h7.b.NAME) {
            r();
            this.F[this.E - 2] = "null";
        } else {
            N();
            int i10 = this.E;
            if (i10 > 0) {
                this.F[i10 - 1] = "null";
            }
        }
        int i11 = this.E;
        if (i11 > 0) {
            int[] iArr = this.G;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
        }
    }

    @Override // h7.a
    public String L2() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i10 = 0;
        while (i10 < this.E) {
            Object[] objArr = this.D;
            if (objArr[i10] instanceof com.google.gson.i) {
                i10++;
                if (objArr[i10] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.G[i10]);
                    sb.append(']');
                }
            } else if (objArr[i10] instanceof o) {
                i10++;
                if (objArr[i10] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.F;
                    if (strArr[i10] != null) {
                        sb.append(strArr[i10]);
                    }
                }
            }
            i10++;
        }
        return sb.toString();
    }

    public void O() throws IOException {
        L(h7.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) M()).next();
        P(entry.getValue());
        P(new r((String) entry.getKey()));
    }

    @Override // h7.a
    public void b() throws IOException {
        L(h7.b.BEGIN_ARRAY);
        P(((com.google.gson.i) M()).iterator());
        this.G[this.E - 1] = 0;
    }

    @Override // h7.a
    public void c() throws IOException {
        L(h7.b.BEGIN_OBJECT);
        P(((o) M()).y().iterator());
    }

    @Override // h7.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.D = new Object[]{I};
        this.E = 1;
    }

    @Override // h7.a
    public void g() throws IOException {
        L(h7.b.END_ARRAY);
        N();
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h7.a
    public void h() throws IOException {
        L(h7.b.END_OBJECT);
        N();
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h7.a
    public boolean j() throws IOException {
        h7.b bVarX = x();
        return (bVarX == h7.b.END_OBJECT || bVarX == h7.b.END_ARRAY) ? false : true;
    }

    @Override // h7.a
    public boolean n() throws IOException {
        L(h7.b.BOOLEAN);
        boolean zC = ((r) N()).c();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return zC;
    }

    @Override // h7.a
    public double o() throws IOException {
        h7.b bVarX = x();
        h7.b bVar = h7.b.NUMBER;
        if (bVarX != bVar && bVarX != h7.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarX + m());
        }
        double dG = ((r) M()).g();
        if (!k() && (Double.isNaN(dG) || Double.isInfinite(dG))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dG);
        }
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return dG;
    }

    @Override // h7.a
    public int p() throws IOException {
        h7.b bVarX = x();
        h7.b bVar = h7.b.NUMBER;
        if (bVarX != bVar && bVarX != h7.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarX + m());
        }
        int iJ = ((r) M()).j();
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return iJ;
    }

    @Override // h7.a
    public long q() throws IOException {
        h7.b bVarX = x();
        h7.b bVar = h7.b.NUMBER;
        if (bVarX != bVar && bVarX != h7.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarX + m());
        }
        long jN = ((r) M()).n();
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return jN;
    }

    @Override // h7.a
    public String r() throws IOException {
        L(h7.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) M()).next();
        String str = (String) entry.getKey();
        this.F[this.E - 1] = str;
        P(entry.getValue());
        return str;
    }

    @Override // h7.a
    public void t() throws IOException {
        L(h7.b.NULL);
        N();
        int i10 = this.E;
        if (i10 > 0) {
            int[] iArr = this.G;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h7.a
    public String toString() {
        return e.class.getSimpleName();
    }

    @Override // h7.a
    public String v() throws IOException {
        h7.b bVarX = x();
        h7.b bVar = h7.b.STRING;
        if (bVarX == bVar || bVarX == h7.b.NUMBER) {
            String strO = ((r) N()).o();
            int i10 = this.E;
            if (i10 > 0) {
                int[] iArr = this.G;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
            return strO;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + bVarX + m());
    }

    @Override // h7.a
    public h7.b x() throws IOException {
        if (this.E == 0) {
            return h7.b.END_DOCUMENT;
        }
        Object objM = M();
        if (objM instanceof Iterator) {
            boolean z10 = this.D[this.E - 2] instanceof o;
            Iterator it = (Iterator) objM;
            if (!it.hasNext()) {
                return z10 ? h7.b.END_OBJECT : h7.b.END_ARRAY;
            }
            if (z10) {
                return h7.b.NAME;
            }
            P(it.next());
            return x();
        }
        if (objM instanceof o) {
            return h7.b.BEGIN_OBJECT;
        }
        if (objM instanceof com.google.gson.i) {
            return h7.b.BEGIN_ARRAY;
        }
        if (!(objM instanceof r)) {
            if (objM instanceof com.google.gson.n) {
                return h7.b.NULL;
            }
            if (objM == I) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        r rVar = (r) objM;
        if (rVar.y()) {
            return h7.b.STRING;
        }
        if (rVar.u()) {
            return h7.b.BOOLEAN;
        }
        if (rVar.x()) {
            return h7.b.NUMBER;
        }
        throw new AssertionError();
    }
}
