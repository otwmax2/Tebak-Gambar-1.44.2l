package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgpt f19430a;

    private zzgpu(zzgpt zzgptVar) {
        zzgqw.f(zzgptVar, "output");
        this.f19430a = zzgptVar;
        zzgptVar.f19429a = this;
    }

    public static zzgpu l(zzgpt zzgptVar) {
        zzgpu zzgpuVar = zzgptVar.f19429a;
        return zzgpuVar != null ? zzgpuVar : new zzgpu(zzgptVar);
    }

    public final void A(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.r(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Float) list.get(i13)).floatValue();
            i12 += 4;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.s(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    public final void B(int i10, Object obj, zzgsp zzgspVar) throws IOException {
        zzgpt zzgptVar = this.f19430a;
        zzgptVar.z(i10, 3);
        zzgspVar.j((zzgrw) obj, zzgptVar.f19429a);
        zzgptVar.z(i10, 4);
    }

    public final void C(int i10, int i11) throws IOException {
        this.f19430a.v(i10, i11);
    }

    public final void D(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.v(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iG += zzgpt.G(((Integer) list.get(i12)).intValue());
        }
        this.f19430a.B(iG);
        while (i11 < list.size()) {
            this.f19430a.w(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public final void E(int i10, long j10) throws IOException {
        this.f19430a.C(i10, j10);
    }

    public final void F(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.C(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iG += zzgpt.g(((Long) list.get(i12)).longValue());
        }
        this.f19430a.B(iG);
        while (i11 < list.size()) {
            this.f19430a.D(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    public final void G(int i10, Object obj, zzgsp zzgspVar) throws IOException {
        this.f19430a.x(i10, (zzgrw) obj, zzgspVar);
    }

    public final void H(int i10, int i11) throws IOException {
        this.f19430a.r(i10, i11);
    }

    public final void I(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.r(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.s(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public final void J(int i10, long j10) throws IOException {
        this.f19430a.t(i10, j10);
    }

    public final void K(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.t(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.u(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    public final void a(int i10, int i11) throws IOException {
        this.f19430a.A(i10, (i11 >> 31) ^ (i11 + i11));
    }

    public final void b(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzgpt zzgptVar = this.f19430a;
                int iIntValue = ((Integer) list.get(i11)).intValue();
                zzgptVar.A(i10, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iF = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            int iIntValue2 = ((Integer) list.get(i12)).intValue();
            iF += zzgpt.f((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
        }
        this.f19430a.B(iF);
        while (i11 < list.size()) {
            zzgpt zzgptVar2 = this.f19430a;
            int iIntValue3 = ((Integer) list.get(i11)).intValue();
            zzgptVar2.B((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
            i11++;
        }
    }

    public final void c(int i10, long j10) throws IOException {
        this.f19430a.C(i10, (j10 >> 63) ^ (j10 + j10));
    }

    public final void d(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                zzgpt zzgptVar = this.f19430a;
                long jLongValue = ((Long) list.get(i11)).longValue();
                zzgptVar.C(i10, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            long jLongValue2 = ((Long) list.get(i12)).longValue();
            iG += zzgpt.g((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        this.f19430a.B(iG);
        while (i11 < list.size()) {
            zzgpt zzgptVar2 = this.f19430a;
            long jLongValue3 = ((Long) list.get(i11)).longValue();
            zzgptVar2.D((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i11++;
        }
    }

    @Deprecated
    public final void e(int i10) throws IOException {
        this.f19430a.z(i10, 3);
    }

    public final void f(int i10, String str) throws IOException {
        this.f19430a.y(i10, str);
    }

    public final void g(int i10, List list) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzgre)) {
            while (i11 < list.size()) {
                this.f19430a.y(i10, (String) list.get(i11));
                i11++;
            }
            return;
        }
        zzgre zzgreVar = (zzgre) list;
        while (i11 < list.size()) {
            Object objG = zzgreVar.G(i11);
            if (objG instanceof String) {
                this.f19430a.y(i10, (String) objG);
            } else {
                this.f19430a.p(i10, (zzgpe) objG);
            }
            i11++;
        }
    }

    public final void h(int i10, int i11) throws IOException {
        this.f19430a.A(i10, i11);
    }

    public final void i(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.A(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iF = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iF += zzgpt.f(((Integer) list.get(i12)).intValue());
        }
        this.f19430a.B(iF);
        while (i11 < list.size()) {
            this.f19430a.B(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public final void j(int i10, long j10) throws IOException {
        this.f19430a.C(i10, j10);
    }

    public final void k(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.C(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iG += zzgpt.g(((Long) list.get(i12)).longValue());
        }
        this.f19430a.B(iG);
        while (i11 < list.size()) {
            this.f19430a.D(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    public final void m(int i10, boolean z10) throws IOException {
        this.f19430a.o(i10, z10);
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
    public final void n(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.o(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Boolean) list.get(i13)).booleanValue();
            i12++;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.n(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    public final void o(int i10, zzgpe zzgpeVar) throws IOException {
        this.f19430a.p(i10, zzgpeVar);
    }

    public final void p(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f19430a.p(i10, (zzgpe) list.get(i11));
        }
    }

    public final void q(int i10, double d10) throws IOException {
        this.f19430a.t(i10, Double.doubleToRawLongBits(d10));
    }

    public final void r(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.t(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Double) list.get(i13)).doubleValue();
            i12 += 8;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.u(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    @Deprecated
    public final void s(int i10) throws IOException {
        this.f19430a.z(i10, 4);
    }

    public final void t(int i10, int i11) throws IOException {
        this.f19430a.v(i10, i11);
    }

    public final void u(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.v(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iG += zzgpt.G(((Integer) list.get(i12)).intValue());
        }
        this.f19430a.B(iG);
        while (i11 < list.size()) {
            this.f19430a.w(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public final void v(int i10, int i11) throws IOException {
        this.f19430a.r(i10, i11);
    }

    public final void w(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.r(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).intValue();
            i12 += 4;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.s(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public final void x(int i10, long j10) throws IOException {
        this.f19430a.t(i10, j10);
    }

    public final void y(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f19430a.t(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f19430a.z(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).longValue();
            i12 += 8;
        }
        this.f19430a.B(i12);
        while (i11 < list.size()) {
            this.f19430a.u(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    public final void z(int i10, float f10) throws IOException {
        this.f19430a.r(i10, Float.floatToRawIntBits(f10));
    }
}
