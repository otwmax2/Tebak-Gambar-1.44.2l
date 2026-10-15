package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import androidx.datastore.preferences.protobuf.d0;
import androidx.datastore.preferences.protobuf.r0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.u.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: FieldSet.java */
/* JADX INFO: loaded from: classes.dex */
final class u<T extends b<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final u f2890d = new u(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j1<T, Object> f2891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2893c;

    /* JADX INFO: compiled from: FieldSet.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f2895b;

        static {
            int[] iArr = new int[t1.b.values().length];
            f2895b = iArr;
            try {
                iArr[t1.b.f2867q.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2895b[t1.b.f2868r.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2895b[t1.b.f2869s.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2895b[t1.b.f2870t.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2895b[t1.b.f2871u.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2895b[t1.b.f2872v.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2895b[t1.b.f2873w.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2895b[t1.b.f2874x.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2895b[t1.b.f2876z.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2895b[t1.b.A.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2895b[t1.b.f2875y.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2895b[t1.b.B.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2895b[t1.b.C.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2895b[t1.b.E.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2895b[t1.b.F.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2895b[t1.b.G.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2895b[t1.b.H.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f2895b[t1.b.D.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[t1.c.values().length];
            f2894a = iArr2;
            try {
                iArr2[t1.c.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f2894a[t1.c.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f2894a[t1.c.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f2894a[t1.c.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f2894a[t1.c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f2894a[t1.c.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f2894a[t1.c.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f2894a[t1.c.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f2894a[t1.c.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* JADX INFO: compiled from: FieldSet.java */
    public interface b<T extends b<T>> extends Comparable<T> {
        t1.c E();

        boolean F();

        r0.a H(r0.a aVar, r0 r0Var);

        int h();

        boolean w();

        t1.b x();
    }

    private u() {
        this.f2891a = j1.s(16);
    }

    static void A(k kVar, t1.b bVar, Object obj) throws IOException {
        switch (a.f2895b[bVar.ordinal()]) {
            case 1:
                kVar.r0(((Double) obj).doubleValue());
                break;
            case 2:
                kVar.z0(((Float) obj).floatValue());
                break;
            case 3:
                kVar.H0(((Long) obj).longValue());
                break;
            case 4:
                kVar.a1(((Long) obj).longValue());
                break;
            case 5:
                kVar.F0(((Integer) obj).intValue());
                break;
            case 6:
                kVar.x0(((Long) obj).longValue());
                break;
            case 7:
                kVar.v0(((Integer) obj).intValue());
                break;
            case 8:
                kVar.l0(((Boolean) obj).booleanValue());
                break;
            case 9:
                kVar.C0((r0) obj);
                break;
            case 10:
                kVar.J0((r0) obj);
                break;
            case 11:
                if (!(obj instanceof h)) {
                    kVar.V0((String) obj);
                } else {
                    kVar.p0((h) obj);
                }
                break;
            case 12:
                if (!(obj instanceof h)) {
                    kVar.m0((byte[]) obj);
                } else {
                    kVar.p0((h) obj);
                }
                break;
            case 13:
                kVar.Y0(((Integer) obj).intValue());
                break;
            case 14:
                kVar.N0(((Integer) obj).intValue());
                break;
            case 15:
                kVar.P0(((Long) obj).longValue());
                break;
            case 16:
                kVar.R0(((Integer) obj).intValue());
                break;
            case 17:
                kVar.T0(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof a0.c)) {
                    kVar.t0(((Integer) obj).intValue());
                } else {
                    kVar.t0(((a0.c) obj).h());
                }
                break;
        }
    }

    private static Object c(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int d(t1.b bVar, int i10, Object obj) {
        int iV = k.V(i10);
        if (bVar == t1.b.f2876z) {
            iV *= 2;
        }
        return iV + e(bVar, obj);
    }

    static int e(t1.b bVar, Object obj) {
        switch (a.f2895b[bVar.ordinal()]) {
            case 1:
                return k.j(((Double) obj).doubleValue());
            case 2:
                return k.r(((Float) obj).floatValue());
            case 3:
                return k.y(((Long) obj).longValue());
            case 4:
                return k.Z(((Long) obj).longValue());
            case 5:
                return k.w(((Integer) obj).intValue());
            case 6:
                return k.p(((Long) obj).longValue());
            case 7:
                return k.n(((Integer) obj).intValue());
            case 8:
                return k.e(((Boolean) obj).booleanValue());
            case 9:
                return k.t((r0) obj);
            case 10:
                return obj instanceof d0 ? k.B((d0) obj) : k.G((r0) obj);
            case 11:
                return obj instanceof h ? k.h((h) obj) : k.U((String) obj);
            case 12:
                return obj instanceof h ? k.h((h) obj) : k.f((byte[]) obj);
            case 13:
                return k.X(((Integer) obj).intValue());
            case 14:
                return k.M(((Integer) obj).intValue());
            case 15:
                return k.O(((Long) obj).longValue());
            case 16:
                return k.Q(((Integer) obj).intValue());
            case 17:
                return k.S(((Long) obj).longValue());
            case 18:
                return obj instanceof a0.c ? k.l(((a0.c) obj).h()) : k.l(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int f(b<?> bVar, Object obj) {
        t1.b bVarX = bVar.x();
        int iH = bVar.h();
        if (!bVar.w()) {
            return d(bVarX, iH, obj);
        }
        int iD = 0;
        if (bVar.F()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iD += e(bVarX, it.next());
            }
            return k.V(iH) + iD + k.K(iD);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iD += d(bVarX, iH, it2.next());
        }
        return iD;
    }

    public static <T extends b<T>> u<T> h() {
        return f2890d;
    }

    private int k(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.E() != t1.c.MESSAGE || key.w() || key.F()) ? f(key, value) : value instanceof d0 ? k.z(entry.getKey().h(), (d0) value) : k.D(entry.getKey().h(), (r0) value);
    }

    static int m(t1.b bVar, boolean z10) {
        if (z10) {
            return 2;
        }
        return bVar.e();
    }

    private static <T extends b<T>> boolean q(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.E() == t1.c.MESSAGE) {
            if (key.w()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((r0) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof r0)) {
                    if (value instanceof d0) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((r0) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean r(t1.b bVar, Object obj) {
        a0.a(obj);
        switch (a.f2894a[bVar.c().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                return (obj instanceof h) || (obj instanceof byte[]);
            case 8:
                return (obj instanceof Integer) || (obj instanceof a0.c);
            case 9:
                return (obj instanceof r0) || (obj instanceof d0);
            default:
                return false;
        }
    }

    private void v(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof d0) {
            value = ((d0) value).f();
        }
        if (key.w()) {
            Object objI = i(key);
            if (objI == null) {
                objI = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objI).add(c(it.next()));
            }
            this.f2891a.put(key, objI);
            return;
        }
        if (key.E() != t1.c.MESSAGE) {
            this.f2891a.put(key, c(value));
            return;
        }
        Object objI2 = i(key);
        if (objI2 == null) {
            this.f2891a.put(key, c(value));
        } else {
            this.f2891a.put(key, key.H(((r0) objI2).b(), (r0) value).build());
        }
    }

    public static <T extends b<T>> u<T> w() {
        return new u<>();
    }

    private void y(t1.b bVar, Object obj) {
        if (!r(bVar, obj)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    static void z(k kVar, t1.b bVar, int i10, Object obj) throws IOException {
        if (bVar == t1.b.f2876z) {
            kVar.A0(i10, (r0) obj);
        } else {
            kVar.W0(i10, m(bVar, false));
            A(kVar, bVar, obj);
        }
    }

    public void a(T t10, Object obj) {
        List arrayList;
        if (!t10.w()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        y(t10.x(), obj);
        Object objI = i(t10);
        if (objI == null) {
            arrayList = new ArrayList();
            this.f2891a.put(t10, arrayList);
        } else {
            arrayList = (List) objI;
        }
        arrayList.add(obj);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public u<T> clone() {
        u<T> uVarW = w();
        for (int i10 = 0; i10 < this.f2891a.m(); i10++) {
            Map.Entry<K, Object> entryL = this.f2891a.l(i10);
            uVarW.x((b) entryL.getKey(), entryL.getValue());
        }
        Iterator it = this.f2891a.o().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            uVarW.x((b) entry.getKey(), entry.getValue());
        }
        uVarW.f2893c = this.f2893c;
        return uVarW;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u) {
            return this.f2891a.equals(((u) obj).f2891a);
        }
        return false;
    }

    Iterator<Map.Entry<T, Object>> g() {
        return this.f2893c ? new d0.c(this.f2891a.j().iterator()) : this.f2891a.j().iterator();
    }

    public int hashCode() {
        return this.f2891a.hashCode();
    }

    public Object i(T t10) {
        Object obj = this.f2891a.get(t10);
        return obj instanceof d0 ? ((d0) obj).f() : obj;
    }

    public int j() {
        int iK = 0;
        for (int i10 = 0; i10 < this.f2891a.m(); i10++) {
            iK += k(this.f2891a.l(i10));
        }
        Iterator it = this.f2891a.o().iterator();
        while (it.hasNext()) {
            iK += k((Map.Entry) it.next());
        }
        return iK;
    }

    public int l() {
        int iF = 0;
        for (int i10 = 0; i10 < this.f2891a.m(); i10++) {
            Map.Entry<K, Object> entryL = this.f2891a.l(i10);
            iF += f((b) entryL.getKey(), entryL.getValue());
        }
        Iterator it = this.f2891a.o().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iF += f((b) entry.getKey(), entry.getValue());
        }
        return iF;
    }

    boolean n() {
        return this.f2891a.isEmpty();
    }

    public boolean o() {
        return this.f2892b;
    }

    public boolean p() {
        for (int i10 = 0; i10 < this.f2891a.m(); i10++) {
            if (!q(this.f2891a.l(i10))) {
                return false;
            }
        }
        Iterator it = this.f2891a.o().iterator();
        while (it.hasNext()) {
            if (!q((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> s() {
        return this.f2893c ? new d0.c(this.f2891a.entrySet().iterator()) : this.f2891a.entrySet().iterator();
    }

    public void t() {
        if (this.f2892b) {
            return;
        }
        this.f2891a.r();
        this.f2892b = true;
    }

    public void u(u<T> uVar) {
        for (int i10 = 0; i10 < uVar.f2891a.m(); i10++) {
            v(uVar.f2891a.l(i10));
        }
        Iterator it = uVar.f2891a.o().iterator();
        while (it.hasNext()) {
            v((Map.Entry) it.next());
        }
    }

    public void x(T t10, Object obj) {
        if (!t10.w()) {
            y(t10.x(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                y(t10.x(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof d0) {
            this.f2893c = true;
        }
        this.f2891a.put(t10, obj);
    }

    private u(boolean z10) {
        this(j1.s(0));
        t();
    }

    private u(j1<T, Object> j1Var) {
        this.f2891a = j1Var;
        t();
    }
}
