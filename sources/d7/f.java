package d7;

import com.google.gson.o;
import com.google.gson.r;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: JsonTreeWriter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends h7.c {
    private static final Writer C = new a();
    private static final r D = new r("closed");
    private String A;
    private com.google.gson.l B;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final List<com.google.gson.l> f28646z;

    /* JADX INFO: compiled from: JsonTreeWriter.java */
    class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public f() {
        super(C);
        this.f28646z = new ArrayList();
        this.B = com.google.gson.n.f26734a;
    }

    private com.google.gson.l G() {
        return this.f28646z.get(r0.size() - 1);
    }

    private void H(com.google.gson.l lVar) {
        if (this.A != null) {
            if (!lVar.q() || i()) {
                ((o) G()).t(this.A, lVar);
            }
            this.A = null;
            return;
        }
        if (this.f28646z.isEmpty()) {
            this.B = lVar;
            return;
        }
        com.google.gson.l lVarG = G();
        if (!(lVarG instanceof com.google.gson.i)) {
            throw new IllegalStateException();
        }
        ((com.google.gson.i) lVarG).t(lVar);
    }

    @Override // h7.c
    public h7.c A(String str) throws IOException {
        if (str == null) {
            return n();
        }
        H(new r(str));
        return this;
    }

    @Override // h7.c
    public h7.c C(boolean z10) throws IOException {
        H(new r(Boolean.valueOf(z10)));
        return this;
    }

    public com.google.gson.l F() {
        if (this.f28646z.isEmpty()) {
            return this.B;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f28646z);
    }

    @Override // h7.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f28646z.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f28646z.add(D);
    }

    @Override // h7.c
    public h7.c d() throws IOException {
        com.google.gson.i iVar = new com.google.gson.i();
        H(iVar);
        this.f28646z.add(iVar);
        return this;
    }

    @Override // h7.c
    public h7.c e() throws IOException {
        o oVar = new o();
        H(oVar);
        this.f28646z.add(oVar);
        return this;
    }

    @Override // h7.c, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // h7.c
    public h7.c g() throws IOException {
        if (this.f28646z.isEmpty() || this.A != null) {
            throw new IllegalStateException();
        }
        if (!(G() instanceof com.google.gson.i)) {
            throw new IllegalStateException();
        }
        this.f28646z.remove(r0.size() - 1);
        return this;
    }

    @Override // h7.c
    public h7.c h() throws IOException {
        if (this.f28646z.isEmpty() || this.A != null) {
            throw new IllegalStateException();
        }
        if (!(G() instanceof o)) {
            throw new IllegalStateException();
        }
        this.f28646z.remove(r0.size() - 1);
        return this;
    }

    @Override // h7.c
    public h7.c l(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f28646z.isEmpty() || this.A != null) {
            throw new IllegalStateException();
        }
        if (!(G() instanceof o)) {
            throw new IllegalStateException();
        }
        this.A = str;
        return this;
    }

    @Override // h7.c
    public h7.c n() throws IOException {
        H(com.google.gson.n.f26734a);
        return this;
    }

    @Override // h7.c
    public h7.c x(long j10) throws IOException {
        H(new r(Long.valueOf(j10)));
        return this;
    }

    @Override // h7.c
    public h7.c y(Boolean bool) throws IOException {
        if (bool == null) {
            return n();
        }
        H(new r(bool));
        return this;
    }

    @Override // h7.c
    public h7.c z(Number number) throws IOException {
        if (number == null) {
            return n();
        }
        if (!k()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        H(new r(number));
        return this;
    }
}
