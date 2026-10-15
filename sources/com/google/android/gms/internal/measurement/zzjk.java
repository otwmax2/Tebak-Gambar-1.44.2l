package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjk implements zznd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjj f23604a;

    private zzjk(zzjj zzjjVar) {
        zzkk.f(zzjjVar, "output");
        this.f23604a = zzjjVar;
        zzjjVar.f23603a = this;
    }

    public static zzjk H(zzjj zzjjVar) {
        zzjk zzjkVar = zzjjVar.f23603a;
        return zzjkVar != null ? zzjkVar : new zzjk(zzjjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void A(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.v(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iB = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iB += zzjj.b(((Long) list.get(i12)).longValue());
        }
        this.f23604a.u(iB);
        while (i11 < list.size()) {
            this.f23604a.w(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void B(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.k(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.l(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void C(int i10, long j10) throws IOException {
        this.f23604a.v(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void D(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.k(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Float) list.get(i13)).floatValue();
            i12 += 4;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.l(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void E(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzjj zzjjVar = this.f23604a;
                long jLongValue = ((Long) list.get(i11)).longValue();
                zzjjVar.v(i10, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iB = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            long jLongValue2 = ((Long) list.get(i12)).longValue();
            iB += zzjj.b((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        this.f23604a.u(iB);
        while (i11 < list.size()) {
            zzjj zzjjVar2 = this.f23604a;
            long jLongValue3 = ((Long) list.get(i11)).longValue();
            zzjjVar2.w((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void F(int i10, Object obj, zzlu zzluVar) throws IOException {
        zzjj zzjjVar = this.f23604a;
        zzjjVar.s(i10, 3);
        zzluVar.i((zzlj) obj, zzjjVar.f23603a);
        zzjjVar.s(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void F0(int i10, int i11) throws IOException {
        this.f23604a.o(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void G(int i10, long j10) throws IOException {
        this.f23604a.v(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void a(int i10, int i11) throws IOException {
        this.f23604a.t(i10, i11);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zznd
    public final void b(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.i(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Boolean) list.get(i13)).booleanValue();
            i12++;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.h(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void c(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.k(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.l(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void d(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.o(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += zzjj.z(((Integer) list.get(i12)).intValue());
        }
        this.f23604a.u(iZ);
        while (i11 < list.size()) {
            this.f23604a.p(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void e(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.m(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.n(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void f(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.m(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Double) list.get(i13)).doubleValue();
            i12 += 8;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.n(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void g(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.m(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.f23604a.u(i12);
        while (i11 < list.size()) {
            this.f23604a.n(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void h(int i10, long j10) throws IOException {
        this.f23604a.m(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void i(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f23604a.j(i10, (zzjb) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void j(int i10, Object obj, zzlu zzluVar) throws IOException {
        Object obj2 = (zzlj) obj;
        zzjg zzjgVar = (zzjg) this.f23604a;
        zzjgVar.u((i10 << 3) | 2);
        zzil zzilVar = (zzil) obj2;
        int iC = zzilVar.c();
        if (iC == -1) {
            iC = zzluVar.a(zzilVar);
            zzilVar.g(iC);
        }
        zzjgVar.u(iC);
        zzluVar.i(obj2, zzjgVar.f23603a);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    @Deprecated
    public final void j0(int i10) throws IOException {
        this.f23604a.s(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void k(int i10, int i11) throws IOException {
        this.f23604a.k(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void l(int i10, zzjb zzjbVar) throws IOException {
        this.f23604a.j(i10, zzjbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void m(int i10, boolean z10) throws IOException {
        this.f23604a.i(i10, z10);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void n(int i10, int i11) throws IOException {
        this.f23604a.t(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void o(int i10, String str) throws IOException {
        this.f23604a.r(i10, str);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void p(int i10, long j10) throws IOException {
        this.f23604a.v(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void q(int i10, long j10) throws IOException {
        this.f23604a.m(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void r(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.t(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += zzjj.a(((Integer) list.get(i12)).intValue());
        }
        this.f23604a.u(iA);
        while (i11 < list.size()) {
            this.f23604a.u(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void s(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.o(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += zzjj.z(((Integer) list.get(i12)).intValue());
        }
        this.f23604a.u(iZ);
        while (i11 < list.size()) {
            this.f23604a.p(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void t(int i10, int i11) throws IOException {
        this.f23604a.o(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void u(int i10, List list) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkr)) {
            while (i11 < list.size()) {
                this.f23604a.r(i10, (String) list.get(i11));
                i11++;
            }
            return;
        }
        zzkr zzkrVar = (zzkr) list;
        while (i11 < list.size()) {
            Object objG = zzkrVar.G(i11);
            if (objG instanceof String) {
                this.f23604a.r(i10, (String) objG);
            } else {
                this.f23604a.j(i10, (zzjb) objG);
            }
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void v(int i10, double d10) throws IOException {
        this.f23604a.m(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    @Deprecated
    public final void v0(int i10) throws IOException {
        this.f23604a.s(i10, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void w(int i10, int i11) throws IOException {
        this.f23604a.k(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void x(int i10, float f10) throws IOException {
        this.f23604a.k(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void y(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzjj zzjjVar = this.f23604a;
                int iIntValue = ((Integer) list.get(i11)).intValue();
                zzjjVar.t(i10, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            int iIntValue2 = ((Integer) list.get(i12)).intValue();
            iA += zzjj.a((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        this.f23604a.u(iA);
        while (i11 < list.size()) {
            zzjj zzjjVar2 = this.f23604a;
            int iIntValue3 = ((Integer) list.get(i11)).intValue();
            zzjjVar2.u((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void z(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f23604a.v(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f23604a.s(i10, 2);
        int iB = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iB += zzjj.b(((Long) list.get(i12)).longValue());
        }
        this.f23604a.u(iB);
        while (i11 < list.size()) {
            this.f23604a.w(((Long) list.get(i11)).longValue());
            i11++;
        }
    }
}
