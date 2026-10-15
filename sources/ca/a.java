package ca;

import ba.q;
import t9.g;
import t9.m;
import y9.i;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Comparable<a> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final C0099a f5002p = new C0099a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final long f5003q = i(0);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f5004r = c.e(4611686018427387903L);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f5005s = c.e(-4611686018427387903L);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f5006o;

    /* JADX INFO: renamed from: ca.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Duration.kt */
    public static final class C0099a {
        private C0099a() {
        }

        public /* synthetic */ C0099a(g gVar) {
            this();
        }
    }

    private /* synthetic */ a(long j10) {
        this.f5006o = j10;
    }

    private static final d I(long j10) {
        return N(j10) ? d.NANOSECONDS : d.MILLISECONDS;
    }

    private static final long J(long j10) {
        return j10 >> 1;
    }

    public static int K(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static final boolean L(long j10) {
        return !O(j10);
    }

    private static final boolean M(long j10) {
        return (((int) j10) & 1) == 1;
    }

    private static final boolean N(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean O(long j10) {
        return j10 == f5004r || j10 == f5005s;
    }

    public static final boolean P(long j10) {
        return j10 < 0;
    }

    public static final boolean Q(long j10) {
        return j10 > 0;
    }

    public static final long R(long j10, d dVar) {
        m.e(dVar, "unit");
        if (j10 == f5004r) {
            return Long.MAX_VALUE;
        }
        if (j10 == f5005s) {
            return Long.MIN_VALUE;
        }
        return e.a(J(j10), I(j10), dVar);
    }

    public static String S(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f5004r) {
            return "Infinity";
        }
        if (j10 == f5005s) {
            return "-Infinity";
        }
        boolean zP = P(j10);
        StringBuilder sb = new StringBuilder();
        if (zP) {
            sb.append('-');
        }
        long jK = k(j10);
        long jM = m(jK);
        int iL = l(jK);
        int iR = r(jK);
        int iU = u(jK);
        int iS = s(jK);
        int i10 = 0;
        boolean z10 = jM != 0;
        boolean z11 = iL != 0;
        boolean z12 = iR != 0;
        boolean z13 = (iU == 0 && iS == 0) ? false : true;
        if (z10) {
            sb.append(jM);
            sb.append('d');
            i10 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iL);
            sb.append('h');
            i10 = i11;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iR);
            sb.append('m');
            i10 = i12;
        }
        if (z13) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            if (iU != 0 || z10 || z11 || z12) {
                c(j10, sb, iU, iS, 9, "s", false);
            } else if (iS >= 1000000) {
                c(j10, sb, iS / 1000000, iS % 1000000, 6, "ms", false);
            } else if (iS >= 1000) {
                c(j10, sb, iS / 1000, iS % 1000, 3, "us", false);
            } else {
                sb.append(iS);
                sb.append("ns");
            }
            i10 = i13;
        }
        if (zP && i10 > 1) {
            sb.insert(1, '(').append(')');
        }
        String string = sb.toString();
        m.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final long T(long j10) {
        return c.d(-J(j10), ((int) j10) & 1);
    }

    private static final void c(long j10, StringBuilder sb, int i10, int i11, int i12, String str, boolean z10) {
        sb.append(i10);
        if (i11 != 0) {
            sb.append('.');
            String strQ = q.Q(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = strQ.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (strQ.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (z10 || i15 >= 3) {
                sb.append((CharSequence) strQ, 0, ((i15 + 2) / 3) * 3);
                m.d(sb, "this.append(value, startIndex, endIndex)");
            } else {
                sb.append((CharSequence) strQ, 0, i15);
                m.d(sb, "this.append(value, startIndex, endIndex)");
            }
        }
        sb.append(str);
    }

    public static final /* synthetic */ a e(long j10) {
        return new a(j10);
    }

    public static int g(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return m.g(j10, j11);
        }
        int i10 = (((int) j10) & 1) - (((int) j11) & 1);
        return P(j10) ? -i10 : i10;
    }

    public static long i(long j10) {
        if (b.a()) {
            if (N(j10)) {
                if (!new i(-4611686018426999999L, 4611686018426999999L).j(J(j10))) {
                    throw new AssertionError(J(j10) + " ns is out of nanoseconds range");
                }
            } else {
                if (!new i(-4611686018427387903L, 4611686018427387903L).j(J(j10))) {
                    throw new AssertionError(J(j10) + " ms is out of milliseconds range");
                }
                if (new i(-4611686018426L, 4611686018426L).j(J(j10))) {
                    throw new AssertionError(J(j10) + " ms is denormalized");
                }
            }
        }
        return j10;
    }

    public static boolean j(long j10, Object obj) {
        return (obj instanceof a) && j10 == ((a) obj).U();
    }

    public static final long k(long j10) {
        return P(j10) ? T(j10) : j10;
    }

    public static final int l(long j10) {
        if (O(j10)) {
            return 0;
        }
        return (int) (n(j10) % ((long) 24));
    }

    public static final long m(long j10) {
        return R(j10, d.DAYS);
    }

    public static final long n(long j10) {
        return R(j10, d.HOURS);
    }

    public static final long o(long j10) {
        return (M(j10) && L(j10)) ? J(j10) : R(j10, d.MILLISECONDS);
    }

    public static final long p(long j10) {
        return R(j10, d.MINUTES);
    }

    public static final long q(long j10) {
        return R(j10, d.SECONDS);
    }

    public static final int r(long j10) {
        if (O(j10)) {
            return 0;
        }
        return (int) (p(j10) % ((long) 60));
    }

    public static final int s(long j10) {
        if (O(j10)) {
            return 0;
        }
        return (int) (M(j10) ? c.g(J(j10) % ((long) 1000)) : J(j10) % ((long) 1000000000));
    }

    public static final int u(long j10) {
        if (O(j10)) {
            return 0;
        }
        return (int) (q(j10) % ((long) 60));
    }

    public final /* synthetic */ long U() {
        return this.f5006o;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(a aVar) {
        return f(aVar.U());
    }

    public boolean equals(Object obj) {
        return j(this.f5006o, obj);
    }

    public int f(long j10) {
        return g(this.f5006o, j10);
    }

    public int hashCode() {
        return K(this.f5006o);
    }

    public String toString() {
        return S(this.f5006o);
    }
}
