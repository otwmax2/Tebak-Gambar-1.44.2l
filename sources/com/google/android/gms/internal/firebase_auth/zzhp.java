package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhp implements zzls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzhm f22679a;

    private zzhp(zzhm zzhmVar) {
        zzhm zzhmVar2 = (zzhm) zzii.f(zzhmVar, "output");
        this.f22679a = zzhmVar2;
        zzhmVar2.f22673a = this;
    }

    public static zzhp M(zzhm zzhmVar) {
        zzhp zzhpVar = zzhmVar.f22673a;
        return zzhpVar != null ? zzhpVar : new zzhp(zzhmVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void A(int i10, int i11) throws IOException {
        this.f22679a.k0(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void A0(int i10, boolean z10) throws IOException {
        this.f22679a.s(i10, z10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void B(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.l(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iA = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA += zzhm.A(list.get(i12).floatValue());
        }
        this.f22679a.O(iA);
        while (i11 < list.size()) {
            this.f22679a.i(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void C(int i10, int i11) throws IOException {
        this.f22679a.Y(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void D(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (!(list instanceof zziy)) {
            while (i11 < list.size()) {
                this.f22679a.r(i10, list.get(i11));
                i11++;
            }
            return;
        }
        zziy zziyVar = (zziy) list;
        while (i11 < list.size()) {
            Object objZ = zziyVar.z(i11);
            if (objZ instanceof String) {
                this.f22679a.r(i10, (String) objZ);
            } else {
                this.f22679a.o(i10, (zzgv) objZ);
            }
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void E(int i10, int i11) throws IOException {
        this.f22679a.P(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void F(int i10, int i11) throws IOException {
        this.f22679a.k0(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void G(int i10, zzgv zzgvVar) throws IOException {
        this.f22679a.o(i10, zzgvVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void H(int i10, Object obj, zzkd zzkdVar) throws IOException {
        zzhm zzhmVar = this.f22679a;
        zzhmVar.m(i10, 3);
        zzkdVar.g((zzjn) obj, zzhmVar.f22673a);
        zzhmVar.m(i10, 4);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void I(int i10, long j10) throws IOException {
        this.f22679a.Z(i10, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final <K, V> void J(int i10, zzji<K, V> zzjiVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f22679a.m(i10, 2);
            this.f22679a.O(zzjf.a(zzjiVar, entry.getKey(), entry.getValue()));
            zzjf.b(this.f22679a, zzjiVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void K(int i10, Object obj, zzkd zzkdVar) throws IOException {
        this.f22679a.q(i10, (zzjn) obj, zzkdVar);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void L(int i10, long j10) throws IOException {
        this.f22679a.Q(i10, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void P(int i10, String str) throws IOException {
        this.f22679a.r(i10, str);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void a(int i10, long j10) throws IOException {
        this.f22679a.n(i10, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void b(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.n(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iE0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iE0 += zzhm.e0(list.get(i12).longValue());
        }
        this.f22679a.O(iE0);
        while (i11 < list.size()) {
            this.f22679a.t(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void c(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.Z(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iW0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iW0 += zzhm.w0(list.get(i12).longValue());
        }
        this.f22679a.O(iW0);
        while (i11 < list.size()) {
            this.f22679a.a0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void d(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.Y(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iP0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iP0 += zzhm.p0(list.get(i12).intValue());
        }
        this.f22679a.O(iP0);
        while (i11 < list.size()) {
            this.f22679a.O(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void e(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.Q(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iO0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iO0 += zzhm.o0(list.get(i12).longValue());
        }
        this.f22679a.O(iO0);
        while (i11 < list.size()) {
            this.f22679a.S(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void f(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.k(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += zzhm.z(list.get(i12).doubleValue());
        }
        this.f22679a.O(iZ);
        while (i11 < list.size()) {
            this.f22679a.h(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void g(int i10, List<?> list, zzkd zzkdVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            K(i10, list.get(i11), zzkdVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void h(int i10) throws IOException {
        this.f22679a.m(i10, 3);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void i(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.s(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += zzhm.L(list.get(i12).booleanValue());
        }
        this.f22679a.O(iL);
        while (i11 < list.size()) {
            this.f22679a.y(list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void j(int i10, long j10) throws IOException {
        this.f22679a.Z(i10, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void k(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.P(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iL0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL0 += zzhm.l0(list.get(i12).intValue());
        }
        this.f22679a.O(iL0);
        while (i11 < list.size()) {
            this.f22679a.j(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void l(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.P(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iC0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iC0 += zzhm.C0(list.get(i12).intValue());
        }
        this.f22679a.O(iC0);
        while (i11 < list.size()) {
            this.f22679a.j(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void m(int i10, List<?> list, zzkd zzkdVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            H(i10, list.get(i11), zzkdVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void n(int i10, int i11) throws IOException {
        this.f22679a.P(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void o(int i10, long j10) throws IOException {
        this.f22679a.n(i10, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void p(int i10, Object obj) throws IOException {
        if (obj instanceof zzgv) {
            this.f22679a.R(i10, (zzgv) obj);
        } else {
            this.f22679a.p(i10, (zzjn) obj);
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void q(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.k0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iX0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iX0 += zzhm.x0(list.get(i12).intValue());
        }
        this.f22679a.O(iX0);
        while (i11 < list.size()) {
            this.f22679a.f0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void r(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.k0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iA0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA0 += zzhm.A0(list.get(i12).intValue());
        }
        this.f22679a.O(iA0);
        while (i11 < list.size()) {
            this.f22679a.f0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void s(int i10, double d10) throws IOException {
        this.f22679a.k(i10, d10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void t(int i10, float f10) throws IOException {
        this.f22679a.l(i10, f10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void u(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.Z(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iS0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iS0 += zzhm.s0(list.get(i12).longValue());
        }
        this.f22679a.O(iS0);
        while (i11 < list.size()) {
            this.f22679a.a0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void v(int i10, int i11) throws IOException {
        this.f22679a.g0(i10, i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void w(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.n(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iJ0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iJ0 += zzhm.j0(list.get(i12).longValue());
        }
        this.f22679a.O(iJ0);
        while (i11 < list.size()) {
            this.f22679a.t(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void x(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f22679a.g0(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.f22679a.m(i10, 2);
        int iT0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iT0 += zzhm.t0(list.get(i12).intValue());
        }
        this.f22679a.O(iT0);
        while (i11 < list.size()) {
            this.f22679a.X(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void y(int i10, List<zzgv> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f22679a.o(i10, list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final void z(int i10) throws IOException {
        this.f22679a.m(i10, 4);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzls
    public final int zza() {
        return zzif.zzf.f22758l;
    }
}
