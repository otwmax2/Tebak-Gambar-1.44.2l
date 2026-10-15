package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ExtensionSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
final class r extends q<y.d> {

    /* JADX INFO: compiled from: ExtensionSchemaLite.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2834a;

        static {
            int[] iArr = new int[t1.b.values().length];
            f2834a = iArr;
            try {
                iArr[t1.b.f2867q.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2834a[t1.b.f2868r.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2834a[t1.b.f2869s.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2834a[t1.b.f2870t.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2834a[t1.b.f2871u.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2834a[t1.b.f2872v.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2834a[t1.b.f2873w.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2834a[t1.b.f2874x.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2834a[t1.b.C.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2834a[t1.b.E.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2834a[t1.b.F.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2834a[t1.b.G.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f2834a[t1.b.H.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f2834a[t1.b.D.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f2834a[t1.b.B.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f2834a[t1.b.f2875y.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f2834a[t1.b.f2876z.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f2834a[t1.b.A.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    r() {
    }

    @Override // androidx.datastore.preferences.protobuf.q
    int a(Map.Entry<?, ?> entry) {
        return ((y.d) entry.getKey()).h();
    }

    @Override // androidx.datastore.preferences.protobuf.q
    Object b(p pVar, r0 r0Var, int i10) {
        return pVar.a(r0Var, i10);
    }

    @Override // androidx.datastore.preferences.protobuf.q
    u<y.d> c(Object obj) {
        return ((y.c) obj).extensions;
    }

    @Override // androidx.datastore.preferences.protobuf.q
    u<y.d> d(Object obj) {
        return ((y.c) obj).H();
    }

    @Override // androidx.datastore.preferences.protobuf.q
    boolean e(r0 r0Var) {
        return r0Var instanceof y.c;
    }

    @Override // androidx.datastore.preferences.protobuf.q
    void f(Object obj) {
        c(obj).t();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.q
    <UT, UB> UB g(f1 f1Var, Object obj, p pVar, u<y.d> uVar, UB ub, n1<UT, UB> n1Var) throws IOException {
        Object objI;
        ArrayList arrayList;
        y.e eVar = (y.e) obj;
        int iC = eVar.c();
        if (eVar.f2977b.w() && eVar.f2977b.F()) {
            switch (a.f2834a[eVar.a().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    f1Var.K(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    f1Var.E(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    f1Var.o(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    f1Var.l(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    f1Var.q(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    f1Var.O(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    f1Var.v(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    f1Var.y(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    f1Var.h(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    f1Var.f(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    f1Var.p(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    f1Var.b(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    f1Var.g(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    f1Var.r(arrayList);
                    ub = (UB) i1.z(iC, arrayList, eVar.f2977b.e(), ub, n1Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + eVar.f2977b.x());
            }
            uVar.x(eVar.f2977b, arrayList);
        } else {
            Object objValueOf = null;
            if (eVar.a() != t1.b.D) {
                switch (a.f2834a[eVar.a().ordinal()]) {
                    case 1:
                        objValueOf = Double.valueOf(f1Var.readDouble());
                        break;
                    case 2:
                        objValueOf = Float.valueOf(f1Var.readFloat());
                        break;
                    case 3:
                        objValueOf = Long.valueOf(f1Var.M());
                        break;
                    case 4:
                        objValueOf = Long.valueOf(f1Var.c());
                        break;
                    case 5:
                        objValueOf = Integer.valueOf(f1Var.F());
                        break;
                    case 6:
                        objValueOf = Long.valueOf(f1Var.d());
                        break;
                    case 7:
                        objValueOf = Integer.valueOf(f1Var.i());
                        break;
                    case 8:
                        objValueOf = Boolean.valueOf(f1Var.j());
                        break;
                    case 9:
                        objValueOf = Integer.valueOf(f1Var.n());
                        break;
                    case 10:
                        objValueOf = Integer.valueOf(f1Var.I());
                        break;
                    case 11:
                        objValueOf = Long.valueOf(f1Var.k());
                        break;
                    case 12:
                        objValueOf = Integer.valueOf(f1Var.w());
                        break;
                    case 13:
                        objValueOf = Long.valueOf(f1Var.x());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        objValueOf = f1Var.D();
                        break;
                    case 16:
                        objValueOf = f1Var.z();
                        break;
                    case 17:
                        objValueOf = f1Var.m(eVar.b().getClass(), pVar);
                        break;
                    case 18:
                        objValueOf = f1Var.e(eVar.b().getClass(), pVar);
                        break;
                }
            } else {
                int iF = f1Var.F();
                if (eVar.f2977b.e().a(iF) == null) {
                    return (UB) i1.L(iC, iF, ub, n1Var);
                }
                objValueOf = Integer.valueOf(iF);
            }
            if (eVar.d()) {
                uVar.a(eVar.f2977b, objValueOf);
            } else {
                int i10 = a.f2834a[eVar.a().ordinal()];
                if ((i10 == 17 || i10 == 18) && (objI = uVar.i(eVar.f2977b)) != null) {
                    objValueOf = a0.h(objI, objValueOf);
                }
                uVar.x(eVar.f2977b, objValueOf);
            }
        }
        return ub;
    }

    @Override // androidx.datastore.preferences.protobuf.q
    void h(f1 f1Var, Object obj, p pVar, u<y.d> uVar) throws IOException {
        y.e eVar = (y.e) obj;
        uVar.x(eVar.f2977b, f1Var.e(eVar.b().getClass(), pVar));
    }

    @Override // androidx.datastore.preferences.protobuf.q
    void i(h hVar, Object obj, p pVar, u<y.d> uVar) throws IOException {
        y.e eVar = (y.e) obj;
        r0 r0VarA2 = eVar.b().h().A2();
        e eVarQ = e.Q(ByteBuffer.wrap(hVar.x()), true);
        c1.a().b(r0VarA2, eVarQ, pVar);
        uVar.x(eVar.f2977b, r0VarA2);
        if (eVarQ.A() != Integer.MAX_VALUE) {
            throw b0.a();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.q
    void j(u1 u1Var, Map.Entry<?, ?> entry) throws IOException {
        y.d dVar = (y.d) entry.getKey();
        if (!dVar.w()) {
            switch (a.f2834a[dVar.x().ordinal()]) {
                case 1:
                    u1Var.e(dVar.h(), ((Double) entry.getValue()).doubleValue());
                    break;
                case 2:
                    u1Var.E(dVar.h(), ((Float) entry.getValue()).floatValue());
                    break;
                case 3:
                    u1Var.p(dVar.h(), ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    u1Var.n(dVar.h(), ((Long) entry.getValue()).longValue());
                    break;
                case 5:
                    u1Var.t(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 6:
                    u1Var.h(dVar.h(), ((Long) entry.getValue()).longValue());
                    break;
                case 7:
                    u1Var.d(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 8:
                    u1Var.q(dVar.h(), ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 9:
                    u1Var.b(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 10:
                    u1Var.r(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 11:
                    u1Var.x(dVar.h(), ((Long) entry.getValue()).longValue());
                    break;
                case 12:
                    u1Var.M(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    u1Var.D(dVar.h(), ((Long) entry.getValue()).longValue());
                    break;
                case 14:
                    u1Var.t(dVar.h(), ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    u1Var.w(dVar.h(), (h) entry.getValue());
                    break;
                case 16:
                    u1Var.m(dVar.h(), (String) entry.getValue());
                    break;
                case 17:
                    u1Var.O(dVar.h(), entry.getValue(), c1.a().d(entry.getValue().getClass()));
                    break;
                case 18:
                    u1Var.z(dVar.h(), entry.getValue(), c1.a().d(entry.getValue().getClass()));
                    break;
            }
        }
        switch (a.f2834a[dVar.x().ordinal()]) {
            case 1:
                i1.P(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 2:
                i1.T(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 3:
                i1.W(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 4:
                i1.e0(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 5:
                i1.V(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 6:
                i1.S(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 7:
                i1.R(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 8:
                i1.N(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 9:
                i1.d0(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 10:
                i1.Y(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 11:
                i1.Z(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 12:
                i1.a0(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 13:
                i1.b0(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 14:
                i1.V(dVar.h(), (List) entry.getValue(), u1Var, dVar.F());
                break;
            case 15:
                i1.O(dVar.h(), (List) entry.getValue(), u1Var);
                break;
            case 16:
                i1.c0(dVar.h(), (List) entry.getValue(), u1Var);
                break;
            case 17:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    i1.U(dVar.h(), (List) entry.getValue(), u1Var, c1.a().d(list.get(0).getClass()));
                    break;
                }
                break;
            case 18:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    i1.X(dVar.h(), (List) entry.getValue(), u1Var, c1.a().d(list2.get(0).getClass()));
                    break;
                }
                break;
        }
    }
}
