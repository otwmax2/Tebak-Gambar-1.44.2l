package h7;

import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: JsonWriter.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String[] f30273x = new String[128];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String[] f30274y;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Writer f30275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f30276p = new int[32];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f30277q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f30278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f30279s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f30280t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f30281u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f30282v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f30283w;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f30273x[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f30273x;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f30274y = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        q(6);
        this.f30279s = CertificateUtil.DELIMITER;
        this.f30283w = true;
        Objects.requireNonNull(writer, "out == null");
        this.f30275o = writer;
    }

    private void E() throws IOException {
        if (this.f30282v != null) {
            b();
            w(this.f30282v);
            this.f30282v = null;
        }
    }

    private void b() throws IOException {
        int iP = p();
        if (iP == 5) {
            this.f30275o.write(44);
        } else if (iP != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m();
        r(4);
    }

    private void c() throws IOException {
        int iP = p();
        if (iP == 1) {
            r(2);
            m();
            return;
        }
        if (iP == 2) {
            this.f30275o.append(',');
            m();
        } else {
            if (iP == 4) {
                this.f30275o.append((CharSequence) this.f30279s);
                r(5);
                return;
            }
            if (iP != 6) {
                if (iP != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f30280t) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            r(7);
        }
    }

    private c f(int i10, int i11, char c10) throws IOException {
        int iP = p();
        if (iP != i11 && iP != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f30282v != null) {
            throw new IllegalStateException("Dangling name: " + this.f30282v);
        }
        this.f30277q--;
        if (iP == i11) {
            m();
        }
        this.f30275o.write(c10);
        return this;
    }

    private void m() throws IOException {
        if (this.f30278r == null) {
            return;
        }
        this.f30275o.write(10);
        int i10 = this.f30277q;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f30275o.write(this.f30278r);
        }
    }

    private c o(int i10, char c10) throws IOException {
        c();
        q(i10);
        this.f30275o.write(c10);
        return this;
    }

    private int p() {
        int i10 = this.f30277q;
        if (i10 != 0) {
            return this.f30276p[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void q(int i10) {
        int i11 = this.f30277q;
        int[] iArr = this.f30276p;
        if (i11 == iArr.length) {
            this.f30276p = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f30276p;
        int i12 = this.f30277q;
        this.f30277q = i12 + 1;
        iArr2[i12] = i10;
    }

    private void r(int i10) {
        this.f30276p[this.f30277q - 1] = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void w(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f30281u
            if (r0 == 0) goto L7
            java.lang.String[] r0 = h7.c.f30274y
            goto L9
        L7:
            java.lang.String[] r0 = h7.c.f30273x
        L9:
            java.io.Writer r1 = r8.f30275o
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f30275o
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f30275o
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f30275o
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r9 = r8.f30275o
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h7.c.w(java.lang.String):void");
    }

    public c A(String str) throws IOException {
        if (str == null) {
            return n();
        }
        E();
        c();
        w(str);
        return this;
    }

    public c C(boolean z10) throws IOException {
        E();
        c();
        this.f30275o.write(z10 ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30275o.close();
        int i10 = this.f30277q;
        if (i10 > 1 || (i10 == 1 && this.f30276p[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f30277q = 0;
    }

    public c d() throws IOException {
        E();
        return o(1, '[');
    }

    public c e() throws IOException {
        E();
        return o(3, '{');
    }

    public void flush() throws IOException {
        if (this.f30277q == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f30275o.flush();
    }

    public c g() throws IOException {
        return f(1, 2, ']');
    }

    public c h() throws IOException {
        return f(3, 5, '}');
    }

    public final boolean i() {
        return this.f30283w;
    }

    public final boolean j() {
        return this.f30281u;
    }

    public boolean k() {
        return this.f30280t;
    }

    public c l(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f30282v != null) {
            throw new IllegalStateException();
        }
        if (this.f30277q == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f30282v = str;
        return this;
    }

    public c n() throws IOException {
        if (this.f30282v != null) {
            if (!this.f30283w) {
                this.f30282v = null;
                return this;
            }
            E();
        }
        c();
        this.f30275o.write("null");
        return this;
    }

    public final void s(boolean z10) {
        this.f30281u = z10;
    }

    public final void t(String str) {
        if (str.length() == 0) {
            this.f30278r = null;
            this.f30279s = CertificateUtil.DELIMITER;
        } else {
            this.f30278r = str;
            this.f30279s = ": ";
        }
    }

    public final void u(boolean z10) {
        this.f30280t = z10;
    }

    public final void v(boolean z10) {
        this.f30283w = z10;
    }

    public c x(long j10) throws IOException {
        E();
        c();
        this.f30275o.write(Long.toString(j10));
        return this;
    }

    public c y(Boolean bool) throws IOException {
        if (bool == null) {
            return n();
        }
        E();
        c();
        this.f30275o.write(bool.booleanValue() ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
        return this;
    }

    public c z(Number number) throws IOException {
        if (number == null) {
            return n();
        }
        E();
        String string = number.toString();
        if (this.f30280t || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            c();
            this.f30275o.append((CharSequence) string);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }
}
