package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.k0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.u1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: CodedOutputStreamWriter.java */
/* JADX INFO: loaded from: classes.dex */
final class l implements u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f2803a;

    /* JADX INFO: compiled from: CodedOutputStreamWriter.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2804a;

        static {
            int[] iArr = new int[t1.b.values().length];
            f2804a = iArr;
            try {
                iArr[t1.b.f2874x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2804a[t1.b.f2873w.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2804a[t1.b.f2871u.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2804a[t1.b.E.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2804a[t1.b.G.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2804a[t1.b.C.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2804a[t1.b.f2872v.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2804a[t1.b.f2869s.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2804a[t1.b.F.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2804a[t1.b.H.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2804a[t1.b.f2870t.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2804a[t1.b.f2875y.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private l(k kVar) {
        k kVar2 = (k) a0.b(kVar, "output");
        this.f2803a = kVar2;
        kVar2.f2780a = this;
    }

    public static l P(k kVar) {
        l lVar = kVar.f2780a;
        return lVar != null ? lVar : new l(kVar);
    }

    private <V> void Q(int i10, boolean z10, V v10, k0.a<Boolean, V> aVar) throws IOException {
        this.f2803a.W0(i10, 2);
        this.f2803a.Y0(k0.b(aVar, Boolean.valueOf(z10), v10));
        k0.e(this.f2803a, aVar, Boolean.valueOf(z10), v10);
    }

    private <V> void R(int i10, k0.a<Integer, V> aVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            iArr[i11] = it.next().intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            V v10 = map.get(Integer.valueOf(i13));
            this.f2803a.W0(i10, 2);
            this.f2803a.Y0(k0.b(aVar, Integer.valueOf(i13), v10));
            k0.e(this.f2803a, aVar, Integer.valueOf(i13), v10);
        }
    }

    private <V> void S(int i10, k0.a<Long, V> aVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            jArr[i11] = it.next().longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            V v10 = map.get(Long.valueOf(j10));
            this.f2803a.W0(i10, 2);
            this.f2803a.Y0(k0.b(aVar, Long.valueOf(j10), v10));
            k0.e(this.f2803a, aVar, Long.valueOf(j10), v10);
        }
    }

    private <K, V> void T(int i10, k0.a<K, V> aVar, Map<K, V> map) throws IOException {
        switch (a.f2804a[aVar.f2794a.ordinal()]) {
            case 1:
                V v10 = map.get(Boolean.FALSE);
                if (v10 != null) {
                    Q(i10, false, v10, aVar);
                }
                V v11 = map.get(Boolean.TRUE);
                if (v11 != null) {
                    Q(i10, true, v11, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                R(i10, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                S(i10, aVar, map);
                return;
            case 12:
                U(i10, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f2794a);
        }
    }

    private <V> void U(int i10, k0.a<String, V> aVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            strArr[i11] = it.next();
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str = strArr[i12];
            V v10 = map.get(str);
            this.f2803a.W0(i10, 2);
            this.f2803a.Y0(k0.b(aVar, str, v10));
            k0.e(this.f2803a, aVar, str, v10);
        }
    }

    private void V(int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            this.f2803a.U0(i10, (String) obj);
        } else {
            this.f2803a.o0(i10, (h) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void A(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.k0(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iE = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iE += k.e(list.get(i12).booleanValue());
        }
        this.f2803a.Y0(iE);
        while (i11 < list.size()) {
            this.f2803a.l0(list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void B(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.X0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iX = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iX += k.X(list.get(i12).intValue());
        }
        this.f2803a.Y0(iX);
        while (i11 < list.size()) {
            this.f2803a.Y0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void C(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.S0(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iS = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iS += k.S(list.get(i12).longValue());
        }
        this.f2803a.Y0(iS);
        while (i11 < list.size()) {
            this.f2803a.T0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void D(int i10, long j10) throws IOException {
        this.f2803a.S0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void E(int i10, float f10) throws IOException {
        this.f2803a.y0(i10, f10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void F(int i10) throws IOException {
        this.f2803a.W0(i10, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void G(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.Q0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iQ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iQ += k.Q(list.get(i12).intValue());
        }
        this.f2803a.Y0(iQ);
        while (i11 < list.size()) {
            this.f2803a.R0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void H(int i10, int i11) throws IOException {
        this.f2803a.s0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void I(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.G0(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iY = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iY += k.y(list.get(i12).longValue());
        }
        this.f2803a.Y0(iY);
        while (i11 < list.size()) {
            this.f2803a.H0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void J(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.s0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += k.l(list.get(i12).intValue());
        }
        this.f2803a.Y0(iL);
        while (i11 < list.size()) {
            this.f2803a.t0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void K(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.q0(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iJ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iJ += k.j(list.get(i12).doubleValue());
        }
        this.f2803a.Y0(iJ);
        while (i11 < list.size()) {
            this.f2803a.r0(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public <K, V> void L(int i10, k0.a<K, V> aVar, Map<K, V> map) throws IOException {
        if (this.f2803a.e0()) {
            T(i10, aVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f2803a.W0(i10, 2);
            this.f2803a.Y0(k0.b(aVar, entry.getKey(), entry.getValue()));
            k0.e(this.f2803a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void M(int i10, int i11) throws IOException {
        this.f2803a.Q0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void N(int i10, List<h> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f2803a.o0(i10, list.get(i11));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void O(int i10, Object obj, g1 g1Var) throws IOException {
        this.f2803a.B0(i10, (r0) obj, g1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void a(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.y0(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iR = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iR += k.r(list.get(i12).floatValue());
        }
        this.f2803a.Y0(iR);
        while (i11 < list.size()) {
            this.f2803a.z0(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void b(int i10, int i11) throws IOException {
        this.f2803a.X0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public final void c(int i10, Object obj) throws IOException {
        if (obj instanceof h) {
            this.f2803a.L0(i10, (h) obj);
        } else {
            this.f2803a.K0(i10, (r0) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void d(int i10, int i11) throws IOException {
        this.f2803a.u0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void e(int i10, double d10) throws IOException {
        this.f2803a.q0(i10, d10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void f(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.O0(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iO = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iO += k.O(list.get(i12).longValue());
        }
        this.f2803a.Y0(iO);
        while (i11 < list.size()) {
            this.f2803a.P0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void g(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.Z0(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += k.Z(list.get(i12).longValue());
        }
        this.f2803a.Y0(iZ);
        while (i11 < list.size()) {
            this.f2803a.a1(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void h(int i10, long j10) throws IOException {
        this.f2803a.w0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public u1.a i() {
        return u1.a.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void j(int i10, List<?> list, g1 g1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            z(i10, list.get(i11), g1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void k(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (!(list instanceof g0)) {
            while (i11 < list.size()) {
                this.f2803a.U0(i10, list.get(i11));
                i11++;
            }
        } else {
            g0 g0Var = (g0) list;
            while (i11 < list.size()) {
                V(i10, g0Var.o3(i11));
                i11++;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void l(int i10, List<?> list, g1 g1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            O(i10, list.get(i11), g1Var);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void m(int i10, String str) throws IOException {
        this.f2803a.U0(i10, str);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void n(int i10, long j10) throws IOException {
        this.f2803a.Z0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void o(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.E0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iW = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iW += k.w(list.get(i12).intValue());
        }
        this.f2803a.Y0(iW);
        while (i11 < list.size()) {
            this.f2803a.F0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void p(int i10, long j10) throws IOException {
        this.f2803a.G0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void q(int i10, boolean z10) throws IOException {
        this.f2803a.k0(i10, z10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void r(int i10, int i11) throws IOException {
        this.f2803a.M0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void s(int i10) throws IOException {
        this.f2803a.W0(i10, 3);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void t(int i10, int i11) throws IOException {
        this.f2803a.E0(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void u(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.w0(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iP = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iP += k.p(list.get(i12).longValue());
        }
        this.f2803a.Y0(iP);
        while (i11 < list.size()) {
            this.f2803a.x0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void v(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.M0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iM = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM += k.M(list.get(i12).intValue());
        }
        this.f2803a.Y0(iM);
        while (i11 < list.size()) {
            this.f2803a.N0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void w(int i10, h hVar) throws IOException {
        this.f2803a.o0(i10, hVar);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void x(int i10, long j10) throws IOException {
        this.f2803a.O0(i10, j10);
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void y(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f2803a.u0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f2803a.W0(i10, 2);
        int iN = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iN += k.n(list.get(i12).intValue());
        }
        this.f2803a.Y0(iN);
        while (i11 < list.size()) {
            this.f2803a.v0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.u1
    public void z(int i10, Object obj, g1 g1Var) throws IOException {
        this.f2803a.I0(i10, (r0) obj, g1Var);
    }
}
