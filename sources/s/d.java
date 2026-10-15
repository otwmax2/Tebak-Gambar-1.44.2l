package s;

import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p.i;
import t.o;

/* JADX INFO: compiled from: ConstraintAnchor.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f34364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f34365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f34366f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    p.i f34369i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet<d> f34361a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f34367g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f34368h = Integer.MIN_VALUE;

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34370a;

        static {
            int[] iArr = new int[b.values().length];
            f34370a = iArr;
            try {
                iArr[b.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34370a[b.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34370a[b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34370a[b.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34370a[b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34370a[b.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34370a[b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34370a[b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34370a[b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: compiled from: ConstraintAnchor.java */
    public enum b {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public d(e eVar, b bVar) {
        this.f34364d = eVar;
        this.f34365e = bVar;
    }

    public boolean a(d dVar, int i10, int i11, boolean z10) {
        if (dVar == null) {
            p();
            return true;
        }
        if (!z10 && !o(dVar)) {
            return false;
        }
        this.f34366f = dVar;
        if (dVar.f34361a == null) {
            dVar.f34361a = new HashSet<>();
        }
        HashSet<d> hashSet = this.f34366f.f34361a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f34367g = i10;
        this.f34368h = i11;
        return true;
    }

    public void b(int i10, ArrayList<o> arrayList, o oVar) {
        HashSet<d> hashSet = this.f34361a;
        if (hashSet != null) {
            Iterator<d> it = hashSet.iterator();
            while (it.hasNext()) {
                t.i.a(it.next().f34364d, i10, arrayList, oVar);
            }
        }
    }

    public HashSet<d> c() {
        return this.f34361a;
    }

    public int d() {
        if (this.f34363c) {
            return this.f34362b;
        }
        return 0;
    }

    public int e() {
        d dVar;
        if (this.f34364d.T() == 8) {
            return 0;
        }
        return (this.f34368h == Integer.MIN_VALUE || (dVar = this.f34366f) == null || dVar.f34364d.T() != 8) ? this.f34367g : this.f34368h;
    }

    public final d f() {
        switch (a.f34370a[this.f34365e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f34364d.Q;
            case 3:
                return this.f34364d.O;
            case 4:
                return this.f34364d.R;
            case 5:
                return this.f34364d.P;
            default:
                throw new AssertionError(this.f34365e.name());
        }
    }

    public e g() {
        return this.f34364d;
    }

    public p.i h() {
        return this.f34369i;
    }

    public d i() {
        return this.f34366f;
    }

    public b j() {
        return this.f34365e;
    }

    public boolean k() {
        HashSet<d> hashSet = this.f34361a;
        if (hashSet == null) {
            return false;
        }
        Iterator<d> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().f().n()) {
                return true;
            }
        }
        return false;
    }

    public boolean l() {
        HashSet<d> hashSet = this.f34361a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean m() {
        return this.f34363c;
    }

    public boolean n() {
        return this.f34366f != null;
    }

    public boolean o(d dVar) {
        if (dVar == null) {
            return false;
        }
        b bVarJ = dVar.j();
        b bVar = this.f34365e;
        if (bVarJ == bVar) {
            return bVar != b.BASELINE || (dVar.g().X() && g().X());
        }
        switch (a.f34370a[bVar.ordinal()]) {
            case 1:
                return (bVarJ == b.BASELINE || bVarJ == b.CENTER_X || bVarJ == b.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z10 = bVarJ == b.LEFT || bVarJ == b.RIGHT;
                if (dVar.g() instanceof g) {
                    return z10 || bVarJ == b.CENTER_X;
                }
                return z10;
            case 4:
            case 5:
                boolean z11 = bVarJ == b.TOP || bVarJ == b.BOTTOM;
                if (dVar.g() instanceof g) {
                    return z11 || bVarJ == b.CENTER_Y;
                }
                return z11;
            case 6:
                return (bVarJ == b.LEFT || bVarJ == b.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f34365e.name());
        }
    }

    public void p() {
        HashSet<d> hashSet;
        d dVar = this.f34366f;
        if (dVar != null && (hashSet = dVar.f34361a) != null) {
            hashSet.remove(this);
            if (this.f34366f.f34361a.size() == 0) {
                this.f34366f.f34361a = null;
            }
        }
        this.f34361a = null;
        this.f34366f = null;
        this.f34367g = 0;
        this.f34368h = Integer.MIN_VALUE;
        this.f34363c = false;
        this.f34362b = 0;
    }

    public void q() {
        this.f34363c = false;
        this.f34362b = 0;
    }

    public void r(p.c cVar) {
        p.i iVar = this.f34369i;
        if (iVar == null) {
            this.f34369i = new p.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.i();
        }
    }

    public void s(int i10) {
        this.f34362b = i10;
        this.f34363c = true;
    }

    public String toString() {
        return this.f34364d.r() + CertificateUtil.DELIMITER + this.f34365e.toString();
    }
}
