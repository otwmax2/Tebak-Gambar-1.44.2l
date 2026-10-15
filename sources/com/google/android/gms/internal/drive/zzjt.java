package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzjt implements zzns {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjr f22107a;

    private zzjt(zzjr zzjrVar) {
        zzjr zzjrVar2 = (zzjr) zzkm.e(zzjrVar, "output");
        this.f22107a = zzjrVar2;
        zzjrVar2.f22102a = this;
    }

    public static zzjt h(zzjr zzjrVar) {
        zzjt zzjtVar = zzjrVar.f22102a;
        return zzjtVar != null ? zzjtVar : new zzjt(zzjrVar);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void A(int i10, int i11) throws IOException {
        this.f22107a.e0(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void B(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.h(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += zzjr.A(list.get(i12).floatValue());
        }
        this.f22107a.E0(iA);
        while (i11 < list.size()) {
            this.f22107a.f(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void C(int i10, int i11) throws IOException {
        this.f22107a.h0(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void D(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzkz)) {
            while (i11 < list.size()) {
                this.f22107a.m(i10, list.get(i11));
                i11++;
            }
            return;
        }
        zzkz zzkzVar = (zzkz) list;
        while (i11 < list.size()) {
            Object objB3 = zzkzVar.b3(i11);
            if (objB3 instanceof String) {
                this.f22107a.m(i10, (String) objB3);
            } else {
                this.f22107a.j(i10, (zzjc) objB3);
            }
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void E(int i10) throws IOException {
        this.f22107a.J(i10, 4);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final <K, V> void F(int i10, zzlj<K, V> zzljVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f22107a.J(i10, 2);
            this.f22107a.E0(zzli.a(zzljVar, entry.getKey(), entry.getValue()));
            zzli.b(this.f22107a, zzljVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void G(int i10, long j10) throws IOException {
        this.f22107a.i(i10, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void H(int i10) throws IOException {
        this.f22107a.J(i10, 3);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void I(int i10, int i11) throws IOException {
        this.f22107a.U(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final int J() {
        return zzkk.zze.f22187l;
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void K(int i10, Object obj, zzmf zzmfVar) throws IOException {
        zzjr zzjrVar = this.f22107a;
        zzjrVar.J(i10, 3);
        zzmfVar.f((zzlq) obj, zzjrVar.f22102a);
        zzjrVar.J(i10, 4);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void L(int i10, zzjc zzjcVar) throws IOException {
        this.f22107a.j(i10, zzjcVar);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void M(int i10, List<?> list, zzmf zzmfVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            N(i10, list.get(i11), zzmfVar);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void N(int i10, Object obj, zzmf zzmfVar) throws IOException {
        this.f22107a.l(i10, (zzlq) obj, zzmfVar);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void O(int i10, List<?> list, zzmf zzmfVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            K(i10, list.get(i11), zzmfVar);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void P(int i10, String str) throws IOException {
        this.f22107a.m(i10, str);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void Q(int i10, int i11) throws IOException {
        this.f22107a.j0(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void a(int i10, long j10) throws IOException {
        this.f22107a.i(i10, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void b(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.i(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iX0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iX0 += zzjr.x0(list.get(i12).longValue());
        }
        this.f22107a.E0(iX0);
        while (i11 < list.size()) {
            this.f22107a.s0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void c(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.V(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iB0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iB0 += zzjr.B0(list.get(i12).longValue());
        }
        this.f22107a.E0(iB0);
        while (i11 < list.size()) {
            this.f22107a.w0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void d(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.e0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iS = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iS += zzjr.s(list.get(i12).intValue());
        }
        this.f22107a.E0(iS);
        while (i11 < list.size()) {
            this.f22107a.E0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void e(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.K(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iZ0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ0 += zzjr.z0(list.get(i12).longValue());
        }
        this.f22107a.E0(iZ0);
        while (i11 < list.size()) {
            this.f22107a.v0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void f(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.g(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += zzjr.z(list.get(i12).doubleValue());
        }
        this.f22107a.E0(iZ);
        while (i11 < list.size()) {
            this.f22107a.e(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void g(int i10, long j10) throws IOException {
        this.f22107a.V(i10, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void i(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.M(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iD0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iD0 += zzjr.d0(list.get(i12).booleanValue());
        }
        this.f22107a.E0(iD0);
        while (i11 < list.size()) {
            this.f22107a.W(list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void j(int i10, long j10) throws IOException {
        this.f22107a.K(i10, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void k(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.U(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iR = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iR += zzjr.r(list.get(i12).intValue());
        }
        this.f22107a.E0(iR);
        while (i11 < list.size()) {
            this.f22107a.D0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void l(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.U(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iW = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iW += zzjr.w(list.get(i12).intValue());
        }
        this.f22107a.E0(iW);
        while (i11 < list.size()) {
            this.f22107a.D0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void m(int i10, boolean z10) throws IOException {
        this.f22107a.M(i10, z10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void n(int i10, int i11) throws IOException {
        this.f22107a.U(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void o(int i10, long j10) throws IOException {
        this.f22107a.V(i10, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void p(int i10, Object obj) throws IOException {
        if (obj instanceof zzjc) {
            this.f22107a.L(i10, (zzjc) obj);
        } else {
            this.f22107a.k(i10, (zzlq) obj);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void q(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.j0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iU = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iU += zzjr.u(list.get(i12).intValue());
        }
        this.f22107a.E0(iU);
        while (i11 < list.size()) {
            this.f22107a.p(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void r(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.j0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iV = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iV += zzjr.v(list.get(i12).intValue());
        }
        this.f22107a.E0(iV);
        while (i11 < list.size()) {
            this.f22107a.p(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void s(int i10, double d10) throws IOException {
        this.f22107a.g(i10, d10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void t(int i10, float f10) throws IOException {
        this.f22107a.h(i10, f10);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void u(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.V(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iA0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA0 += zzjr.A0(list.get(i12).longValue());
        }
        this.f22107a.E0(iA0);
        while (i11 < list.size()) {
            this.f22107a.w0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void v(int i10, int i11) throws IOException {
        this.f22107a.j0(i10, i11);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void w(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.i(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iY0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iY0 += zzjr.y0(list.get(i12).longValue());
        }
        this.f22107a.E0(iY0);
        while (i11 < list.size()) {
            this.f22107a.s0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void x(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22107a.h0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22107a.J(i10, 2);
        int iT = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iT += zzjr.t(list.get(i12).intValue());
        }
        this.f22107a.E0(iT);
        while (i11 < list.size()) {
            this.f22107a.F0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void y(int i10, List<zzjc> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f22107a.j(i10, list.get(i11));
        }
    }
}
