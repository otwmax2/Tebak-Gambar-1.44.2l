package h7;

import c7.f;
import com.facebook.internal.ServerProtocol;
import d7.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: JsonReader.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements Closeable {
    private int A;
    private String[] B;
    private int[] C;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Reader f30250o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f30251p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final char[] f30252q = new char[1024];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f30253r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f30254s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f30255t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f30256u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f30257v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f30258w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f30259x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f30260y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int[] f30261z;

    /* JADX INFO: renamed from: h7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JsonReader.java */
    class C0173a extends f {
        C0173a() {
        }

        @Override // c7.f
        public void a(a aVar) throws IOException {
            if (aVar instanceof e) {
                ((e) aVar).O();
                return;
            }
            int iF = aVar.f30257v;
            if (iF == 0) {
                iF = aVar.f();
            }
            if (iF == 13) {
                aVar.f30257v = 9;
                return;
            }
            if (iF == 12) {
                aVar.f30257v = 8;
                return;
            }
            if (iF == 14) {
                aVar.f30257v = 10;
                return;
            }
            throw new IllegalStateException("Expected a name but was " + aVar.x() + aVar.m());
        }
    }

    static {
        f.f4921a = new C0173a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f30261z = iArr;
        this.A = 0;
        this.A = 0 + 1;
        iArr[0] = 6;
        this.B = new String[32];
        this.C = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f30250o = reader;
    }

    private void A(int i10) {
        int i11 = this.A;
        int[] iArr = this.f30261z;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f30261z = Arrays.copyOf(iArr, i12);
            this.C = Arrays.copyOf(this.C, i12);
            this.B = (String[]) Arrays.copyOf(this.B, i12);
        }
        int[] iArr2 = this.f30261z;
        int i13 = this.A;
        this.A = i13 + 1;
        iArr2[i13] = i10;
    }

    private char C() throws IOException {
        int i10;
        int i11;
        if (this.f30253r == this.f30254s && !i(1)) {
            throw K("Unterminated escape sequence");
        }
        char[] cArr = this.f30252q;
        int i12 = this.f30253r;
        int i13 = i12 + 1;
        this.f30253r = i13;
        char c10 = cArr[i12];
        if (c10 == '\n') {
            this.f30255t++;
            this.f30256u = i13;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 != 'u') {
                throw K("Invalid escape sequence");
            }
            if (i13 + 4 > this.f30254s && !i(4)) {
                throw K("Unterminated escape sequence");
            }
            char c11 = 0;
            int i14 = this.f30253r;
            int i15 = i14 + 4;
            while (i14 < i15) {
                char c12 = this.f30252q[i14];
                char c13 = (char) (c11 << 4);
                if (c12 < '0' || c12 > '9') {
                    if (c12 >= 'a' && c12 <= 'f') {
                        i10 = c12 - 'a';
                    } else {
                        if (c12 < 'A' || c12 > 'F') {
                            throw new NumberFormatException("\\u" + new String(this.f30252q, this.f30253r, 4));
                        }
                        i10 = c12 - 'A';
                    }
                    i11 = i10 + 10;
                } else {
                    i11 = c12 - '0';
                }
                c11 = (char) (c13 + i11);
                i14++;
            }
            this.f30253r += 4;
            return c11;
        }
        return c10;
    }

    private void F(char c10) throws IOException {
        char[] cArr = this.f30252q;
        do {
            int i10 = this.f30253r;
            int i11 = this.f30254s;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f30253r = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.f30253r = i12;
                    C();
                    i10 = this.f30253r;
                    i11 = this.f30254s;
                } else {
                    if (c11 == '\n') {
                        this.f30255t++;
                        this.f30256u = i12;
                    }
                    i10 = i12;
                }
            }
            this.f30253r = i10;
        } while (i(1));
        throw K("Unterminated string");
    }

    private boolean G(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f30253r + length > this.f30254s && !i(length)) {
                return false;
            }
            char[] cArr = this.f30252q;
            int i10 = this.f30253r;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f30252q[this.f30253r + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.f30255t++;
            this.f30256u = i10 + 1;
            this.f30253r++;
        }
    }

    private void H() throws IOException {
        char c10;
        do {
            if (this.f30253r >= this.f30254s && !i(1)) {
                return;
            }
            char[] cArr = this.f30252q;
            int i10 = this.f30253r;
            int i11 = i10 + 1;
            this.f30253r = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f30255t++;
                this.f30256u = i11;
                return;
            }
        } while (c10 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        d();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void I() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f30253r
            int r2 = r1 + r0
            int r3 = r4.f30254s
            if (r2 >= r3) goto L51
            char[] r2 = r4.f30252q
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.d()
        L4b:
            int r1 = r4.f30253r
            int r1 = r1 + r0
            r4.f30253r = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f30253r = r1
            r0 = 1
            boolean r0 = r4.i(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h7.a.I():void");
    }

    private IOException K(String str) throws IOException {
        throw new d(str + m());
    }

    private void d() throws IOException {
        if (!this.f30251p) {
            throw K("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void e() throws IOException {
        s(true);
        int i10 = this.f30253r - 1;
        this.f30253r = i10;
        if (i10 + 5 <= this.f30254s || i(5)) {
            char[] cArr = this.f30252q;
            if (cArr[i10] == ')' && cArr[i10 + 1] == ']' && cArr[i10 + 2] == '}' && cArr[i10 + 3] == '\'' && cArr[i10 + 4] == '\n') {
                this.f30253r += 5;
            }
        }
    }

    private boolean i(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.f30252q;
        int i13 = this.f30256u;
        int i14 = this.f30253r;
        this.f30256u = i13 - i14;
        int i15 = this.f30254s;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f30254s = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f30254s = 0;
        }
        this.f30253r = 0;
        do {
            Reader reader = this.f30250o;
            int i17 = this.f30254s;
            int i18 = reader.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f30254s + i18;
            this.f30254s = i11;
            if (this.f30255t == 0 && (i12 = this.f30256u) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f30253r++;
                this.f30256u = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    private boolean l(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        d();
        return false;
    }

    private int s(boolean z10) throws IOException {
        char[] cArr = this.f30252q;
        int i10 = this.f30253r;
        int i11 = this.f30254s;
        while (true) {
            if (i10 == i11) {
                this.f30253r = i10;
                if (!i(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + m());
                }
                i10 = this.f30253r;
                i11 = this.f30254s;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f30255t++;
                this.f30256u = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f30253r = i12;
                    if (i12 == i11) {
                        this.f30253r = i12 - 1;
                        boolean zI = i(2);
                        this.f30253r++;
                        if (!zI) {
                            return c10;
                        }
                    }
                    d();
                    int i13 = this.f30253r;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.f30253r = i13 + 1;
                        if (!G("*/")) {
                            throw K("Unterminated comment");
                        }
                        i10 = this.f30253r + 2;
                        i11 = this.f30254s;
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f30253r = i13 + 1;
                        H();
                        i10 = this.f30253r;
                        i11 = this.f30254s;
                    }
                } else {
                    if (c10 != '#') {
                        this.f30253r = i12;
                        return c10;
                    }
                    this.f30253r = i12;
                    d();
                    H();
                    i10 = this.f30253r;
                    i11 = this.f30254s;
                }
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r9.f30253r = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String u(char r10) throws java.io.IOException {
        /*
            r9 = this;
            char[] r0 = r9.f30252q
            r1 = 0
        L3:
            int r2 = r9.f30253r
            int r3 = r9.f30254s
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5c
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.f30253r = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r10 = new java.lang.String
            r10.<init>(r0, r3, r7)
            return r10
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r10 = r1.toString()
            return r10
        L28:
            r8 = 92
            if (r2 != r8) goto L4f
            r9.f30253r = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L40
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L40:
            r1.append(r0, r3, r7)
            char r2 = r9.C()
            r1.append(r2)
            int r2 = r9.f30253r
            int r3 = r9.f30254s
            goto L7
        L4f:
            r5 = 10
            if (r2 != r5) goto L5a
            int r2 = r9.f30255t
            int r2 = r2 + r6
            r9.f30255t = r2
            r9.f30256u = r7
        L5a:
            r2 = r7
            goto L9
        L5c:
            if (r1 != 0) goto L6c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.f30253r = r2
            boolean r2 = r9.i(r6)
            if (r2 == 0) goto L7a
            goto L3
        L7a:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r10 = r9.K(r10)
            goto L82
        L81:
            throw r10
        L82:
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: h7.a.u(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        d();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String w() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.f30253r
            int r4 = r3 + r2
            int r5 = r6.f30254s
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f30252q
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.d()
            goto L5c
        L4e:
            char[] r3 = r6.f30252q
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.i(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.f30252q
            int r4 = r6.f30253r
            r1.append(r3, r4, r2)
            int r3 = r6.f30253r
            int r3 = r3 + r2
            r6.f30253r = r3
            r2 = 1
            boolean r2 = r6.i(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f30252q
            int r3 = r6.f30253r
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.f30252q
            int r3 = r6.f30253r
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.f30253r
            int r2 = r2 + r0
            r6.f30253r = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: h7.a.w():java.lang.String");
    }

    private int y() throws IOException {
        int i10;
        String str;
        String str2;
        char c10 = this.f30252q[this.f30253r];
        if (c10 == 't' || c10 == 'T') {
            i10 = 5;
            str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
            str2 = "TRUE";
        } else if (c10 == 'f' || c10 == 'F') {
            i10 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            i10 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f30253r + i11 >= this.f30254s && !i(i11 + 1)) {
                return 0;
            }
            char c11 = this.f30252q[this.f30253r + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f30253r + length < this.f30254s || i(length + 1)) && l(this.f30252q[this.f30253r + length])) {
            return 0;
        }
        this.f30253r += length;
        this.f30257v = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
    
        if (l(r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0099, code lost:
    
        if (r9 != 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
    
        if (r10 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a1, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
    
        if (r13 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a9, code lost:
    
        if (r11 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ab, code lost:
    
        if (r13 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ad, code lost:
    
        if (r13 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b0, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b1, code lost:
    
        r18.f30258w = r11;
        r18.f30253r += r8;
        r18.f30257v = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bc, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00bd, code lost:
    
        if (r9 == 2) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c0, code lost:
    
        if (r9 == 4) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c3, code lost:
    
        if (r9 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c6, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c8, code lost:
    
        r18.f30259x = r8;
        r18.f30257v = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ce, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00cf, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int z() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h7.a.z():int");
    }

    public final void E(boolean z10) {
        this.f30251p = z10;
    }

    public void J() throws IOException {
        int i10 = 0;
        do {
            int iF = this.f30257v;
            if (iF == 0) {
                iF = f();
            }
            if (iF == 3) {
                A(1);
            } else if (iF == 1) {
                A(3);
            } else if (iF == 4 || iF == 2) {
                this.A--;
                i10--;
                this.f30257v = 0;
            } else {
                if (iF == 14 || iF == 10) {
                    I();
                } else if (iF == 8 || iF == 12) {
                    F('\'');
                } else if (iF == 9 || iF == 13) {
                    F('\"');
                } else if (iF == 16) {
                    this.f30253r += this.f30259x;
                }
                this.f30257v = 0;
            }
            i10++;
            this.f30257v = 0;
        } while (i10 != 0);
        int[] iArr = this.C;
        int i11 = this.A;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.B[i11 - 1] = "null";
    }

    public String L2() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i10 = this.A;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f30261z[i11];
            if (i12 == 1 || i12 == 2) {
                sb.append('[');
                sb.append(this.C[i11]);
                sb.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb.append('.');
                String[] strArr = this.B;
                if (strArr[i11] != null) {
                    sb.append(strArr[i11]);
                }
            }
        }
        return sb.toString();
    }

    public void b() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 3) {
            A(1);
            this.C[this.A - 1] = 0;
            this.f30257v = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + x() + m());
        }
    }

    public void c() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 1) {
            A(3);
            this.f30257v = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + x() + m());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f30257v = 0;
        this.f30261z[0] = 8;
        this.A = 1;
        this.f30250o.close();
    }

    int f() throws IOException {
        int iS;
        int[] iArr = this.f30261z;
        int i10 = this.A;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iS2 = s(true);
            if (iS2 != 44) {
                if (iS2 != 59) {
                    if (iS2 != 93) {
                        throw K("Unterminated array");
                    }
                    this.f30257v = 4;
                    return 4;
                }
                d();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5 && (iS = s(true)) != 44) {
                    if (iS != 59) {
                        if (iS != 125) {
                            throw K("Unterminated object");
                        }
                        this.f30257v = 2;
                        return 2;
                    }
                    d();
                }
                int iS3 = s(true);
                if (iS3 == 34) {
                    this.f30257v = 13;
                    return 13;
                }
                if (iS3 == 39) {
                    d();
                    this.f30257v = 12;
                    return 12;
                }
                if (iS3 == 125) {
                    if (i11 == 5) {
                        throw K("Expected name");
                    }
                    this.f30257v = 2;
                    return 2;
                }
                d();
                this.f30253r--;
                if (!l((char) iS3)) {
                    throw K("Expected name");
                }
                this.f30257v = 14;
                return 14;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iS4 = s(true);
                if (iS4 != 58) {
                    if (iS4 != 61) {
                        throw K("Expected ':'");
                    }
                    d();
                    if (this.f30253r < this.f30254s || i(1)) {
                        char[] cArr = this.f30252q;
                        int i12 = this.f30253r;
                        if (cArr[i12] == '>') {
                            this.f30253r = i12 + 1;
                        }
                    }
                }
            } else if (i11 == 6) {
                if (this.f30251p) {
                    e();
                }
                this.f30261z[this.A - 1] = 7;
            } else if (i11 == 7) {
                if (s(false) == -1) {
                    this.f30257v = 17;
                    return 17;
                }
                d();
                this.f30253r--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iS5 = s(true);
        if (iS5 == 34) {
            this.f30257v = 9;
            return 9;
        }
        if (iS5 == 39) {
            d();
            this.f30257v = 8;
            return 8;
        }
        if (iS5 != 44 && iS5 != 59) {
            if (iS5 == 91) {
                this.f30257v = 3;
                return 3;
            }
            if (iS5 != 93) {
                if (iS5 == 123) {
                    this.f30257v = 1;
                    return 1;
                }
                this.f30253r--;
                int iY = y();
                if (iY != 0) {
                    return iY;
                }
                int iZ = z();
                if (iZ != 0) {
                    return iZ;
                }
                if (!l(this.f30252q[this.f30253r])) {
                    throw K("Expected value");
                }
                d();
                this.f30257v = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f30257v = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw K("Unexpected value");
        }
        d();
        this.f30253r--;
        this.f30257v = 7;
        return 7;
    }

    public void g() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + x() + m());
        }
        int i10 = this.A - 1;
        this.A = i10;
        int[] iArr = this.C;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f30257v = 0;
    }

    public void h() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + x() + m());
        }
        int i10 = this.A - 1;
        this.A = i10;
        this.B[i10] = null;
        int[] iArr = this.C;
        int i11 = i10 - 1;
        iArr[i11] = iArr[i11] + 1;
        this.f30257v = 0;
    }

    public boolean j() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        return (iF == 2 || iF == 4) ? false : true;
    }

    public final boolean k() {
        return this.f30251p;
    }

    String m() {
        return " at line " + (this.f30255t + 1) + " column " + ((this.f30253r - this.f30256u) + 1) + " path " + L2();
    }

    public boolean n() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 5) {
            this.f30257v = 0;
            int[] iArr = this.C;
            int i10 = this.A - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iF == 6) {
            this.f30257v = 0;
            int[] iArr2 = this.C;
            int i11 = this.A - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + x() + m());
    }

    public double o() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            this.f30257v = 0;
            int[] iArr = this.C;
            int i10 = this.A - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f30258w;
        }
        if (iF == 16) {
            this.f30260y = new String(this.f30252q, this.f30253r, this.f30259x);
            this.f30253r += this.f30259x;
        } else if (iF == 8 || iF == 9) {
            this.f30260y = u(iF == 8 ? '\'' : '\"');
        } else if (iF == 10) {
            this.f30260y = w();
        } else if (iF != 11) {
            throw new IllegalStateException("Expected a double but was " + x() + m());
        }
        this.f30257v = 11;
        double d10 = Double.parseDouble(this.f30260y);
        if (!this.f30251p && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new d("JSON forbids NaN and infinities: " + d10 + m());
        }
        this.f30260y = null;
        this.f30257v = 0;
        int[] iArr2 = this.C;
        int i11 = this.A - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d10;
    }

    public int p() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            long j10 = this.f30258w;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f30257v = 0;
                int[] iArr = this.C;
                int i11 = this.A - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new NumberFormatException("Expected an int but was " + this.f30258w + m());
        }
        if (iF == 16) {
            this.f30260y = new String(this.f30252q, this.f30253r, this.f30259x);
            this.f30253r += this.f30259x;
        } else {
            if (iF != 8 && iF != 9 && iF != 10) {
                throw new IllegalStateException("Expected an int but was " + x() + m());
            }
            if (iF == 10) {
                this.f30260y = w();
            } else {
                this.f30260y = u(iF == 8 ? '\'' : '\"');
            }
            try {
                int i12 = Integer.parseInt(this.f30260y);
                this.f30257v = 0;
                int[] iArr2 = this.C;
                int i13 = this.A - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.f30257v = 11;
        double d10 = Double.parseDouble(this.f30260y);
        int i14 = (int) d10;
        if (i14 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f30260y + m());
        }
        this.f30260y = null;
        this.f30257v = 0;
        int[] iArr3 = this.C;
        int i15 = this.A - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long q() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 15) {
            this.f30257v = 0;
            int[] iArr = this.C;
            int i10 = this.A - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f30258w;
        }
        if (iF == 16) {
            this.f30260y = new String(this.f30252q, this.f30253r, this.f30259x);
            this.f30253r += this.f30259x;
        } else {
            if (iF != 8 && iF != 9 && iF != 10) {
                throw new IllegalStateException("Expected a long but was " + x() + m());
            }
            if (iF == 10) {
                this.f30260y = w();
            } else {
                this.f30260y = u(iF == 8 ? '\'' : '\"');
            }
            try {
                long j10 = Long.parseLong(this.f30260y);
                this.f30257v = 0;
                int[] iArr2 = this.C;
                int i11 = this.A - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f30257v = 11;
        double d10 = Double.parseDouble(this.f30260y);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f30260y + m());
        }
        this.f30260y = null;
        this.f30257v = 0;
        int[] iArr3 = this.C;
        int i12 = this.A - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j11;
    }

    public String r() throws IOException {
        String strU;
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 14) {
            strU = w();
        } else if (iF == 12) {
            strU = u('\'');
        } else {
            if (iF != 13) {
                throw new IllegalStateException("Expected a name but was " + x() + m());
            }
            strU = u('\"');
        }
        this.f30257v = 0;
        this.B[this.A - 1] = strU;
        return strU;
    }

    public void t() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 7) {
            this.f30257v = 0;
            int[] iArr = this.C;
            int i10 = this.A - 1;
            iArr[i10] = iArr[i10] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + x() + m());
    }

    public String toString() {
        return getClass().getSimpleName() + m();
    }

    public String v() throws IOException {
        String str;
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        if (iF == 10) {
            str = w();
        } else if (iF == 8) {
            str = u('\'');
        } else if (iF == 9) {
            str = u('\"');
        } else if (iF == 11) {
            str = this.f30260y;
            this.f30260y = null;
        } else if (iF == 15) {
            str = Long.toString(this.f30258w);
        } else {
            if (iF != 16) {
                throw new IllegalStateException("Expected a string but was " + x() + m());
            }
            str = new String(this.f30252q, this.f30253r, this.f30259x);
            this.f30253r += this.f30259x;
        }
        this.f30257v = 0;
        int[] iArr = this.C;
        int i10 = this.A - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    public b x() throws IOException {
        int iF = this.f30257v;
        if (iF == 0) {
            iF = f();
        }
        switch (iF) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }
}
