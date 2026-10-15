package s;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import s.d;
import t.n;
import t.p;

/* JADX INFO: compiled from: ConstraintWidget.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    public static float J0 = 0.5f;
    boolean A0;
    boolean B0;
    public float[] C0;
    protected e[] D0;
    protected e[] E0;
    e F0;
    e G0;
    public int H0;
    public int I0;
    private boolean K;
    public d V;
    public d[] W;
    protected ArrayList<d> X;
    private boolean[] Y;
    public b[] Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public e f34382a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    int f34384b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t.c f34385c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    int f34386c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public t.c f34387d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f34388d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    protected int f34390e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    protected int f34392f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    protected int f34394g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    int f34396h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    int f34398i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    protected int f34400j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    protected int f34402k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    int f34404l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    protected int f34406m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    protected int f34408n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f34409o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    float f34410o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    float f34412p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private Object f34414q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f34416r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f34418s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private String f34420t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private String f34422u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    boolean f34424v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    boolean f34426w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    boolean f34428x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    int f34430y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    int f34432z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f34381a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p[] f34383b = new p[2];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public t.l f34389e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n f34391f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean[] f34393g = {true, true};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f34395h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34397i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f34399j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34401k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f34403l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f34405m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public r.a f34407n = new r.a(this);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f34411p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f34413q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f34415r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f34417s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f34419t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f34421u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f34423v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f34425w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f34427x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int[] f34429y = new int[2];

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f34431z = 0;
    public int A = 0;
    public float B = 1.0f;
    public int C = 0;
    public int D = 0;
    public float E = 1.0f;
    int F = -1;
    float G = 1.0f;
    private int[] H = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float I = 0.0f;
    private boolean J = false;
    private boolean L = false;
    private int M = 0;
    private int N = 0;
    public d O = new d(this, d.b.LEFT);
    public d P = new d(this, d.b.TOP);
    public d Q = new d(this, d.b.RIGHT);
    public d R = new d(this, d.b.BOTTOM);
    public d S = new d(this, d.b.BASELINE);
    d T = new d(this, d.b.CENTER_X);
    d U = new d(this, d.b.CENTER_Y);

    /* JADX INFO: compiled from: ConstraintWidget.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f34434b;

        static {
            int[] iArr = new int[b.values().length];
            f34434b = iArr;
            try {
                iArr[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34434b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34434b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34434b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f34433a = iArr2;
            try {
                iArr2[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34433a[d.b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34433a[d.b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34433a[d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34433a[d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34433a[d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34433a[d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34433a[d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34433a[d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX INFO: compiled from: ConstraintWidget.java */
    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public e() {
        d dVar = new d(this, d.b.CENTER);
        this.V = dVar;
        this.W = new d[]{this.O, this.Q, this.P, this.R, this.S, dVar};
        this.X = new ArrayList<>();
        this.Y = new boolean[2];
        b bVar = b.FIXED;
        this.Z = new b[]{bVar, bVar};
        this.f34382a0 = null;
        this.f34384b0 = 0;
        this.f34386c0 = 0;
        this.f34388d0 = 0.0f;
        this.f34390e0 = -1;
        this.f34392f0 = 0;
        this.f34394g0 = 0;
        this.f34396h0 = 0;
        this.f34398i0 = 0;
        this.f34400j0 = 0;
        this.f34402k0 = 0;
        this.f34404l0 = 0;
        float f10 = J0;
        this.f34410o0 = f10;
        this.f34412p0 = f10;
        this.f34416r0 = 0;
        this.f34418s0 = 0;
        this.f34420t0 = null;
        this.f34422u0 = null;
        this.f34428x0 = false;
        this.f34430y0 = 0;
        this.f34432z0 = 0;
        this.C0 = new float[]{-1.0f, -1.0f};
        this.D0 = new e[]{null, null};
        this.E0 = new e[]{null, null};
        this.F0 = null;
        this.G0 = null;
        this.H0 = -1;
        this.I0 = -1;
        d();
    }

    private void N(StringBuilder sb, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11) {
        sb.append(str);
        sb.append(" :  {\n");
        v0(sb, "      size", i10, 0);
        v0(sb, "      min", i11, 0);
        v0(sb, "      max", i12, Integer.MAX_VALUE);
        v0(sb, "      matchMin", i14, 0);
        v0(sb, "      matchDef", i15, 0);
        u0(sb, "      matchPercent", f10, 1.0f);
        sb.append("    },\n");
    }

    private void O(StringBuilder sb, String str, d dVar) {
        if (dVar.f34366f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(dVar.f34366f);
        sb.append("'");
        if (dVar.f34368h != Integer.MIN_VALUE || dVar.f34367g != 0) {
            sb.append(",");
            sb.append(dVar.f34367g);
            if (dVar.f34368h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(dVar.f34368h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    private void d() {
        this.X.add(this.O);
        this.X.add(this.P);
        this.X.add(this.Q);
        this.X.add(this.R);
        this.X.add(this.T);
        this.X.add(this.U);
        this.X.add(this.V);
        this.X.add(this.S);
    }

    private boolean d0(int i10) {
        int i11 = i10 * 2;
        d[] dVarArr = this.W;
        if (dVarArr[i11].f34366f != null && dVarArr[i11].f34366f.f34366f != dVarArr[i11]) {
            int i12 = i11 + 1;
            if (dVarArr[i12].f34366f != null && dVarArr[i12].f34366f.f34366f == dVarArr[i12]) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x055e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:391:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void i(p.d r37, boolean r38, boolean r39, boolean r40, boolean r41, p.i r42, p.i r43, s.e.b r44, boolean r45, s.d r46, s.d r47, int r48, int r49, int r50, int r51, float r52, boolean r53, boolean r54, boolean r55, boolean r56, boolean r57, int r58, int r59, int r60, int r61, float r62, boolean r63) {
        /*
            Method dump skipped, instruction units count: 1431
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s.e.i(p.d, boolean, boolean, boolean, boolean, p.i, p.i, s.e$b, boolean, s.d, s.d, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    private void u0(StringBuilder sb, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f10);
        sb.append(",\n");
    }

    private void v0(StringBuilder sb, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i10);
        sb.append(",\n");
    }

    private void w0(StringBuilder sb, String str, float f10, int i10) {
        if (f10 == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f10);
        sb.append(",");
        sb.append(i10);
        sb.append(BuildConfig.FLAVOR);
        sb.append("],\n");
    }

    public int A() {
        return this.M;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L8e
            int r1 = r9.length()
            if (r1 != 0) goto Lb
            goto L8e
        Lb:
            r1 = -1
            int r2 = r9.length()
            r3 = 44
            int r3 = r9.indexOf(r3)
            r4 = 0
            r5 = 1
            if (r3 <= 0) goto L37
            int r6 = r2 + (-1)
            if (r3 >= r6) goto L37
            java.lang.String r6 = r9.substring(r4, r3)
            java.lang.String r7 = "W"
            boolean r7 = r6.equalsIgnoreCase(r7)
            if (r7 == 0) goto L2c
            r1 = 0
            goto L35
        L2c:
            java.lang.String r4 = "H"
            boolean r4 = r6.equalsIgnoreCase(r4)
            if (r4 == 0) goto L35
            r1 = 1
        L35:
            int r4 = r3 + 1
        L37:
            r3 = 58
            int r3 = r9.indexOf(r3)
            if (r3 < 0) goto L75
            int r2 = r2 - r5
            if (r3 >= r2) goto L75
            java.lang.String r2 = r9.substring(r4, r3)
            int r3 = r3 + r5
            java.lang.String r9 = r9.substring(r3)
            int r3 = r2.length()
            if (r3 <= 0) goto L84
            int r3 = r9.length()
            if (r3 <= 0) goto L84
            float r2 = java.lang.Float.parseFloat(r2)     // Catch: java.lang.NumberFormatException -> L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            int r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            if (r1 != r5) goto L6f
            float r9 = r9 / r2
            float r9 = java.lang.Math.abs(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L6f:
            float r2 = r2 / r9
            float r9 = java.lang.Math.abs(r2)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L75:
            java.lang.String r9 = r9.substring(r4)
            int r2 = r9.length()
            if (r2 <= 0) goto L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L84:
            r9 = 0
        L85:
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L8d
            r8.f34388d0 = r9
            r8.f34390e0 = r1
        L8d:
            return
        L8e:
            r8.f34388d0 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s.e.A0(java.lang.String):void");
    }

    public int B() {
        return this.N;
    }

    public void B0(int i10) {
        if (this.J) {
            int i11 = i10 - this.f34404l0;
            int i12 = this.f34386c0 + i11;
            this.f34394g0 = i11;
            this.P.s(i11);
            this.R.s(i12);
            this.S.s(i10);
            this.f34413q = true;
        }
    }

    public int C(int i10) {
        if (i10 == 0) {
            return U();
        }
        if (i10 == 1) {
            return v();
        }
        return 0;
    }

    public void C0(int i10, int i11) {
        if (this.f34411p) {
            return;
        }
        this.O.s(i10);
        this.Q.s(i11);
        this.f34392f0 = i10;
        this.f34384b0 = i11 - i10;
        this.f34411p = true;
    }

    public int D() {
        return this.H[1];
    }

    public void D0(int i10) {
        this.O.s(i10);
        this.f34392f0 = i10;
    }

    public int E() {
        return this.H[0];
    }

    public void E0(int i10) {
        this.P.s(i10);
        this.f34394g0 = i10;
    }

    public int F() {
        return this.f34408n0;
    }

    public void F0(int i10, int i11) {
        if (this.f34413q) {
            return;
        }
        this.P.s(i10);
        this.R.s(i11);
        this.f34394g0 = i10;
        this.f34386c0 = i11 - i10;
        if (this.J) {
            this.S.s(i10 + this.f34404l0);
        }
        this.f34413q = true;
    }

    public int G() {
        return this.f34406m0;
    }

    public void G0(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.f34392f0 = i10;
        this.f34394g0 = i11;
        if (this.f34418s0 == 8) {
            this.f34384b0 = 0;
            this.f34386c0 = 0;
            return;
        }
        b[] bVarArr = this.Z;
        b bVar = bVarArr[0];
        b bVar2 = b.FIXED;
        if (bVar == bVar2 && i16 < (i15 = this.f34384b0)) {
            i16 = i15;
        }
        if (bVarArr[1] == bVar2 && i17 < (i14 = this.f34386c0)) {
            i17 = i14;
        }
        this.f34384b0 = i16;
        this.f34386c0 = i17;
        int i18 = this.f34408n0;
        if (i17 < i18) {
            this.f34386c0 = i18;
        }
        int i19 = this.f34406m0;
        if (i16 < i19) {
            this.f34384b0 = i19;
        }
        int i20 = this.A;
        if (i20 > 0 && bVarArr[0] == b.MATCH_CONSTRAINT) {
            this.f34384b0 = Math.min(this.f34384b0, i20);
        }
        int i21 = this.D;
        if (i21 > 0 && this.Z[1] == b.MATCH_CONSTRAINT) {
            this.f34386c0 = Math.min(this.f34386c0, i21);
        }
        int i22 = this.f34384b0;
        if (i16 != i22) {
            this.f34403l = i22;
        }
        int i23 = this.f34386c0;
        if (i17 != i23) {
            this.f34405m = i23;
        }
    }

    public e H(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.R).f34366f) != null && dVar2.f34366f == dVar) {
                return dVar2.f34364d;
            }
            return null;
        }
        d dVar3 = this.Q;
        d dVar4 = dVar3.f34366f;
        if (dVar4 == null || dVar4.f34366f != dVar3) {
            return null;
        }
        return dVar4.f34364d;
    }

    public void H0(boolean z10) {
        this.J = z10;
    }

    public e I() {
        return this.f34382a0;
    }

    public void I0(int i10) {
        this.f34386c0 = i10;
        int i11 = this.f34408n0;
        if (i10 < i11) {
            this.f34386c0 = i11;
        }
    }

    public e J(int i10) {
        d dVar;
        d dVar2;
        if (i10 != 0) {
            if (i10 == 1 && (dVar2 = (dVar = this.P).f34366f) != null && dVar2.f34366f == dVar) {
                return dVar2.f34364d;
            }
            return null;
        }
        d dVar3 = this.O;
        d dVar4 = dVar3.f34366f;
        if (dVar4 == null || dVar4.f34366f != dVar3) {
            return null;
        }
        return dVar4.f34364d;
    }

    public void J0(float f10) {
        this.f34410o0 = f10;
    }

    public int K() {
        return V() + this.f34384b0;
    }

    public void K0(int i10) {
        this.f34430y0 = i10;
    }

    public p L(int i10) {
        if (i10 == 0) {
            return this.f34389e;
        }
        if (i10 == 1) {
            return this.f34391f;
        }
        return null;
    }

    public void L0(int i10, int i11) {
        this.f34392f0 = i10;
        int i12 = i11 - i10;
        this.f34384b0 = i12;
        int i13 = this.f34406m0;
        if (i12 < i13) {
            this.f34384b0 = i13;
        }
    }

    public void M(StringBuilder sb) {
        sb.append("  " + this.f34409o + ":{\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("    actualWidth:");
        sb2.append(this.f34384b0);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.f34386c0);
        sb.append("\n");
        sb.append("    actualLeft:" + this.f34392f0);
        sb.append("\n");
        sb.append("    actualTop:" + this.f34394g0);
        sb.append("\n");
        O(sb, ViewHierarchyConstants.DIMENSION_LEFT_KEY, this.O);
        O(sb, ViewHierarchyConstants.DIMENSION_TOP_KEY, this.P);
        O(sb, "right", this.Q);
        O(sb, "bottom", this.R);
        O(sb, "baseline", this.S);
        O(sb, "centerX", this.T);
        O(sb, "centerY", this.U);
        N(sb, "    width", this.f34384b0, this.f34406m0, this.H[0], this.f34403l, this.f34431z, this.f34425w, this.B, this.C0[0]);
        N(sb, "    height", this.f34386c0, this.f34408n0, this.H[1], this.f34405m, this.C, this.f34427x, this.E, this.C0[1]);
        w0(sb, "    dimensionRatio", this.f34388d0, this.f34390e0);
        u0(sb, "    horizontalBias", this.f34410o0, J0);
        u0(sb, "    verticalBias", this.f34412p0, J0);
        v0(sb, "    horizontalChainStyle", this.f34430y0, 0);
        v0(sb, "    verticalChainStyle", this.f34432z0, 0);
        sb.append("  }");
    }

    public void M0(b bVar) {
        this.Z[0] = bVar;
    }

    public void N0(int i10, int i11, int i12, float f10) {
        this.f34425w = i10;
        this.f34431z = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.A = i12;
        this.B = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f34425w = 2;
    }

    public void O0(float f10) {
        this.C0[0] = f10;
    }

    public float P() {
        return this.f34412p0;
    }

    protected void P0(int i10, boolean z10) {
        this.Y[i10] = z10;
    }

    public int Q() {
        return this.f34432z0;
    }

    public void Q0(boolean z10) {
        this.K = z10;
    }

    public b R() {
        return this.Z[1];
    }

    public void R0(boolean z10) {
        this.L = z10;
    }

    public int S() {
        int i10 = this.O != null ? 0 + this.P.f34367g : 0;
        return this.Q != null ? i10 + this.R.f34367g : i10;
    }

    public void S0(int i10, int i11) {
        this.M = i10;
        this.N = i11;
        V0(false);
    }

    public int T() {
        return this.f34418s0;
    }

    public void T0(int i10) {
        this.H[1] = i10;
    }

    public int U() {
        if (this.f34418s0 == 8) {
            return 0;
        }
        return this.f34384b0;
    }

    public void U0(int i10) {
        this.H[0] = i10;
    }

    public int V() {
        e eVar = this.f34382a0;
        return (eVar == null || !(eVar instanceof f)) ? this.f34392f0 : ((f) eVar).R0 + this.f34392f0;
    }

    public void V0(boolean z10) {
        this.f34397i = z10;
    }

    public int W() {
        e eVar = this.f34382a0;
        return (eVar == null || !(eVar instanceof f)) ? this.f34394g0 : ((f) eVar).S0 + this.f34394g0;
    }

    public void W0(int i10) {
        if (i10 < 0) {
            this.f34408n0 = 0;
        } else {
            this.f34408n0 = i10;
        }
    }

    public boolean X() {
        return this.J;
    }

    public void X0(int i10) {
        if (i10 < 0) {
            this.f34406m0 = 0;
        } else {
            this.f34406m0 = i10;
        }
    }

    public boolean Y(int i10) {
        if (i10 == 0) {
            return (this.O.f34366f != null ? 1 : 0) + (this.Q.f34366f != null ? 1 : 0) < 2;
        }
        return ((this.P.f34366f != null ? 1 : 0) + (this.R.f34366f != null ? 1 : 0)) + (this.S.f34366f != null ? 1 : 0) < 2;
    }

    public void Y0(int i10, int i11) {
        this.f34392f0 = i10;
        this.f34394g0 = i11;
    }

    public boolean Z() {
        int size = this.X.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.X.get(i10).l()) {
                return true;
            }
        }
        return false;
    }

    public void Z0(e eVar) {
        this.f34382a0 = eVar;
    }

    public boolean a0() {
        return (this.f34403l == -1 && this.f34405m == -1) ? false : true;
    }

    public void a1(float f10) {
        this.f34412p0 = f10;
    }

    public boolean b0(int i10, int i11) {
        d dVar;
        d dVar2;
        if (i10 == 0) {
            d dVar3 = this.O.f34366f;
            return dVar3 != null && dVar3.m() && (dVar2 = this.Q.f34366f) != null && dVar2.m() && (this.Q.f34366f.d() - this.Q.e()) - (this.O.f34366f.d() + this.O.e()) >= i11;
        }
        d dVar4 = this.P.f34366f;
        return dVar4 != null && dVar4.m() && (dVar = this.R.f34366f) != null && dVar.m() && (this.R.f34366f.d() - this.R.e()) - (this.P.f34366f.d() + this.P.e()) >= i11;
        return false;
    }

    public void b1(int i10) {
        this.f34432z0 = i10;
    }

    public void c0(d.b bVar, e eVar, d.b bVar2, int i10, int i11) {
        m(bVar).a(eVar.m(bVar2), i10, i11, true);
    }

    public void c1(int i10, int i11) {
        this.f34394g0 = i10;
        int i12 = i11 - i10;
        this.f34386c0 = i12;
        int i13 = this.f34408n0;
        if (i12 < i13) {
            this.f34386c0 = i13;
        }
    }

    public void d1(b bVar) {
        this.Z[1] = bVar;
    }

    public void e(f fVar, p.d dVar, HashSet<e> hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            j.a(fVar, dVar, this);
            hashSet.remove(this);
            g(dVar, fVar.P1(64));
        }
        if (i10 == 0) {
            HashSet<d> hashSetC = this.O.c();
            if (hashSetC != null) {
                Iterator<d> it = hashSetC.iterator();
                while (it.hasNext()) {
                    it.next().f34364d.e(fVar, dVar, hashSet, i10, true);
                }
            }
            HashSet<d> hashSetC2 = this.Q.c();
            if (hashSetC2 != null) {
                Iterator<d> it2 = hashSetC2.iterator();
                while (it2.hasNext()) {
                    it2.next().f34364d.e(fVar, dVar, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<d> hashSetC3 = this.P.c();
        if (hashSetC3 != null) {
            Iterator<d> it3 = hashSetC3.iterator();
            while (it3.hasNext()) {
                it3.next().f34364d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<d> hashSetC4 = this.R.c();
        if (hashSetC4 != null) {
            Iterator<d> it4 = hashSetC4.iterator();
            while (it4.hasNext()) {
                it4.next().f34364d.e(fVar, dVar, hashSet, i10, true);
            }
        }
        HashSet<d> hashSetC5 = this.S.c();
        if (hashSetC5 != null) {
            Iterator<d> it5 = hashSetC5.iterator();
            while (it5.hasNext()) {
                it5.next().f34364d.e(fVar, dVar, hashSet, i10, true);
            }
        }
    }

    public boolean e0() {
        return this.f34415r;
    }

    public void e1(int i10, int i11, int i12, float f10) {
        this.f34427x = i10;
        this.C = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.D = i12;
        this.E = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.f34427x = 2;
    }

    boolean f() {
        return (this instanceof k) || (this instanceof g);
    }

    public boolean f0(int i10) {
        return this.Y[i10];
    }

    public void f1(float f10) {
        this.C0[1] = f10;
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void g(p.d r54, boolean r55) {
        /*
            Method dump skipped, instruction units count: 1537
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s.e.g(p.d, boolean):void");
    }

    public boolean g0() {
        d dVar = this.O;
        d dVar2 = dVar.f34366f;
        if (dVar2 != null && dVar2.f34366f == dVar) {
            return true;
        }
        d dVar3 = this.Q;
        d dVar4 = dVar3.f34366f;
        return dVar4 != null && dVar4.f34366f == dVar3;
    }

    public void g1(int i10) {
        this.f34418s0 = i10;
    }

    public boolean h() {
        return this.f34418s0 != 8;
    }

    public boolean h0() {
        return this.K;
    }

    public void h1(int i10) {
        this.f34384b0 = i10;
        int i11 = this.f34406m0;
        if (i10 < i11) {
            this.f34384b0 = i11;
        }
    }

    public boolean i0() {
        d dVar = this.P;
        d dVar2 = dVar.f34366f;
        if (dVar2 != null && dVar2.f34366f == dVar) {
            return true;
        }
        d dVar3 = this.R;
        d dVar4 = dVar3.f34366f;
        return dVar4 != null && dVar4.f34366f == dVar3;
    }

    public void i1(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.f34423v = i10;
    }

    public void j(e eVar, float f10, int i10) {
        d.b bVar = d.b.CENTER;
        c0(bVar, eVar, bVar, i10, 0);
        this.I = f10;
    }

    public boolean j0() {
        return this.L;
    }

    public void j1(int i10) {
        this.f34392f0 = i10;
    }

    public void k(p.d dVar) {
        dVar.q(this.O);
        dVar.q(this.P);
        dVar.q(this.Q);
        dVar.q(this.R);
        if (this.f34404l0 > 0) {
            dVar.q(this.S);
        }
    }

    public boolean k0() {
        return this.f34397i && this.f34418s0 != 8;
    }

    public void k1(int i10) {
        this.f34394g0 = i10;
    }

    public void l() {
        if (this.f34389e == null) {
            this.f34389e = new t.l(this);
        }
        if (this.f34391f == null) {
            this.f34391f = new n(this);
        }
    }

    public boolean l0() {
        return this.f34411p || (this.O.m() && this.Q.m());
    }

    public void l1(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.F == -1) {
            if (z12 && !z13) {
                this.F = 0;
            } else if (!z12 && z13) {
                this.F = 1;
                if (this.f34390e0 == -1) {
                    this.G = 1.0f / this.G;
                }
            }
        }
        if (this.F == 0 && (!this.P.n() || !this.R.n())) {
            this.F = 1;
        } else if (this.F == 1 && (!this.O.n() || !this.Q.n())) {
            this.F = 0;
        }
        if (this.F == -1 && (!this.P.n() || !this.R.n() || !this.O.n() || !this.Q.n())) {
            if (this.P.n() && this.R.n()) {
                this.F = 0;
            } else if (this.O.n() && this.Q.n()) {
                this.G = 1.0f / this.G;
                this.F = 1;
            }
        }
        if (this.F == -1) {
            int i10 = this.f34431z;
            if (i10 > 0 && this.C == 0) {
                this.F = 0;
            } else {
                if (i10 != 0 || this.C <= 0) {
                    return;
                }
                this.G = 1.0f / this.G;
                this.F = 1;
            }
        }
    }

    public d m(d.b bVar) {
        switch (a.f34433a[bVar.ordinal()]) {
            case 1:
                return this.O;
            case 2:
                return this.P;
            case 3:
                return this.Q;
            case 4:
                return this.R;
            case 5:
                return this.S;
            case 6:
                return this.V;
            case 7:
                return this.T;
            case 8:
                return this.U;
            case 9:
                return null;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    public boolean m0() {
        return this.f34413q || (this.P.m() && this.R.m());
    }

    public void m1(boolean z10, boolean z11) {
        int i10;
        int i11;
        boolean zK = z10 & this.f34389e.k();
        boolean zK2 = z11 & this.f34391f.k();
        t.l lVar = this.f34389e;
        int i12 = lVar.f35129h.f35075g;
        n nVar = this.f34391f;
        int i13 = nVar.f35129h.f35075g;
        int i14 = lVar.f35130i.f35075g;
        int i15 = nVar.f35130i.f35075g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (zK) {
            this.f34392f0 = i12;
        }
        if (zK2) {
            this.f34394g0 = i13;
        }
        if (this.f34418s0 == 8) {
            this.f34384b0 = 0;
            this.f34386c0 = 0;
            return;
        }
        if (zK) {
            if (this.Z[0] == b.FIXED && i17 < (i11 = this.f34384b0)) {
                i17 = i11;
            }
            this.f34384b0 = i17;
            int i19 = this.f34406m0;
            if (i17 < i19) {
                this.f34384b0 = i19;
            }
        }
        if (zK2) {
            if (this.Z[1] == b.FIXED && i18 < (i10 = this.f34386c0)) {
                i18 = i10;
            }
            this.f34386c0 = i18;
            int i20 = this.f34408n0;
            if (i18 < i20) {
                this.f34386c0 = i20;
            }
        }
    }

    public int n() {
        return this.f34404l0;
    }

    public boolean n0() {
        return this.f34417s;
    }

    public void n1(p.d dVar, boolean z10) {
        n nVar;
        t.l lVar;
        int iX = dVar.x(this.O);
        int iX2 = dVar.x(this.P);
        int iX3 = dVar.x(this.Q);
        int iX4 = dVar.x(this.R);
        if (z10 && (lVar = this.f34389e) != null) {
            t.f fVar = lVar.f35129h;
            if (fVar.f35078j) {
                t.f fVar2 = lVar.f35130i;
                if (fVar2.f35078j) {
                    iX = fVar.f35075g;
                    iX3 = fVar2.f35075g;
                }
            }
        }
        if (z10 && (nVar = this.f34391f) != null) {
            t.f fVar3 = nVar.f35129h;
            if (fVar3.f35078j) {
                t.f fVar4 = nVar.f35130i;
                if (fVar4.f35078j) {
                    iX2 = fVar3.f35075g;
                    iX4 = fVar4.f35075g;
                }
            }
        }
        int i10 = iX4 - iX2;
        if (iX3 - iX < 0 || i10 < 0 || iX == Integer.MIN_VALUE || iX == Integer.MAX_VALUE || iX2 == Integer.MIN_VALUE || iX2 == Integer.MAX_VALUE || iX3 == Integer.MIN_VALUE || iX3 == Integer.MAX_VALUE || iX4 == Integer.MIN_VALUE || iX4 == Integer.MAX_VALUE) {
            iX4 = 0;
            iX = 0;
            iX2 = 0;
            iX3 = 0;
        }
        G0(iX, iX2, iX3, iX4);
    }

    public float o(int i10) {
        if (i10 == 0) {
            return this.f34410o0;
        }
        if (i10 == 1) {
            return this.f34412p0;
        }
        return -1.0f;
    }

    public void o0() {
        this.f34415r = true;
    }

    public int p() {
        return W() + this.f34386c0;
    }

    public void p0() {
        this.f34417s = true;
    }

    public Object q() {
        return this.f34414q0;
    }

    public boolean q0() {
        b[] bVarArr = this.Z;
        b bVar = bVarArr[0];
        b bVar2 = b.MATCH_CONSTRAINT;
        return bVar == bVar2 && bVarArr[1] == bVar2;
    }

    public String r() {
        return this.f34420t0;
    }

    public void r0() {
        this.O.p();
        this.P.p();
        this.Q.p();
        this.R.p();
        this.S.p();
        this.T.p();
        this.U.p();
        this.V.p();
        this.f34382a0 = null;
        this.I = 0.0f;
        this.f34384b0 = 0;
        this.f34386c0 = 0;
        this.f34388d0 = 0.0f;
        this.f34390e0 = -1;
        this.f34392f0 = 0;
        this.f34394g0 = 0;
        this.f34400j0 = 0;
        this.f34402k0 = 0;
        this.f34404l0 = 0;
        this.f34406m0 = 0;
        this.f34408n0 = 0;
        float f10 = J0;
        this.f34410o0 = f10;
        this.f34412p0 = f10;
        b[] bVarArr = this.Z;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.f34414q0 = null;
        this.f34416r0 = 0;
        this.f34418s0 = 0;
        this.f34422u0 = null;
        this.f34424v0 = false;
        this.f34426w0 = false;
        this.f34430y0 = 0;
        this.f34432z0 = 0;
        this.A0 = false;
        this.B0 = false;
        float[] fArr = this.C0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f34419t = -1;
        this.f34421u = -1;
        int[] iArr = this.H;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f34425w = 0;
        this.f34427x = 0;
        this.B = 1.0f;
        this.E = 1.0f;
        this.A = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
        this.f34431z = 0;
        this.C = 0;
        this.f34395h = false;
        this.F = -1;
        this.G = 1.0f;
        this.f34428x0 = false;
        boolean[] zArr = this.f34393g;
        zArr[0] = true;
        zArr[1] = true;
        this.L = false;
        boolean[] zArr2 = this.Y;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f34397i = true;
        int[] iArr2 = this.f34429y;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.f34403l = -1;
        this.f34405m = -1;
    }

    public b s(int i10) {
        if (i10 == 0) {
            return y();
        }
        if (i10 == 1) {
            return R();
        }
        return null;
    }

    public void s0() {
        this.f34411p = false;
        this.f34413q = false;
        this.f34415r = false;
        this.f34417s = false;
        int size = this.X.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.X.get(i10).q();
        }
    }

    public float t() {
        return this.f34388d0;
    }

    public void t0(p.c cVar) {
        this.O.r(cVar);
        this.P.r(cVar);
        this.Q.r(cVar);
        this.R.r(cVar);
        this.S.r(cVar);
        this.V.r(cVar);
        this.T.r(cVar);
        this.U.r(cVar);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = this.f34422u0;
        String str3 = BuildConfig.FLAVOR;
        if (str2 != null) {
            str = "type: " + this.f34422u0 + " ";
        } else {
            str = BuildConfig.FLAVOR;
        }
        sb.append(str);
        if (this.f34420t0 != null) {
            str3 = "id: " + this.f34420t0 + " ";
        }
        sb.append(str3);
        sb.append("(");
        sb.append(this.f34392f0);
        sb.append(", ");
        sb.append(this.f34394g0);
        sb.append(") - (");
        sb.append(this.f34384b0);
        sb.append(" x ");
        sb.append(this.f34386c0);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        return this.f34390e0;
    }

    public int v() {
        if (this.f34418s0 == 8) {
            return 0;
        }
        return this.f34386c0;
    }

    public float w() {
        return this.f34410o0;
    }

    public int x() {
        return this.f34430y0;
    }

    public void x0(int i10) {
        this.f34404l0 = i10;
        this.J = i10 > 0;
    }

    public b y() {
        return this.Z[0];
    }

    public void y0(Object obj) {
        this.f34414q0 = obj;
    }

    public int z() {
        d dVar = this.O;
        int i10 = dVar != null ? 0 + dVar.f34367g : 0;
        d dVar2 = this.Q;
        return dVar2 != null ? i10 + dVar2.f34367g : i10;
    }

    public void z0(String str) {
        this.f34420t0 = str;
    }
}
