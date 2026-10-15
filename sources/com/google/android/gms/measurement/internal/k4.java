package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzoi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k4 extends j4 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.zzes f24190g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ l4 f24191h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    k4(l4 l4Var, String str, int i10, com.google.android.gms.internal.measurement.zzes zzesVar) {
        super(str, i10);
        this.f24191h = l4Var;
        this.f24190g = zzesVar;
    }

    @Override // com.google.android.gms.measurement.internal.j4
    final int a() {
        return this.f24190g.u();
    }

    @Override // com.google.android.gms.measurement.internal.j4
    final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.j4
    final boolean c() {
        return true;
    }

    final boolean k(Long l10, Long l11, zzgl zzglVar, boolean z10) {
        zzoi.b();
        boolean zY = this.f24191h.f24394a.v().y(this.f24171a, zzel.X);
        boolean zA = this.f24190g.A();
        boolean zB = this.f24190g.B();
        boolean zC = this.f24190g.C();
        boolean z11 = zA || zB || zC;
        Boolean boolJ = null;
        boolJ = null;
        boolJ = null;
        boolJ = null;
        boolJ = null;
        if (z10 && !z11) {
            this.f24191h.f24394a.U().q().c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f24172b), this.f24190g.D() ? Integer.valueOf(this.f24190g.u()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzel zzelVarV = this.f24190g.v();
        boolean zA2 = zzelVarV.A();
        if (zzglVar.K()) {
            if (zzelVarV.C()) {
                boolJ = j4.j(j4.h(zzglVar.v(), zzelVarV.w()), zA2);
            } else {
                this.f24191h.f24394a.U().r().b("No number filter for long property. property", this.f24191h.f24394a.A().f(zzglVar.z()));
            }
        } else if (zzglVar.J()) {
            if (zzelVarV.C()) {
                boolJ = j4.j(j4.g(zzglVar.u(), zzelVarV.w()), zA2);
            } else {
                this.f24191h.f24394a.U().r().b("No number filter for double property. property", this.f24191h.f24394a.A().f(zzglVar.z()));
            }
        } else if (!zzglVar.N()) {
            this.f24191h.f24394a.U().r().b("User property has no value, property", this.f24191h.f24394a.A().f(zzglVar.z()));
        } else if (zzelVarV.E()) {
            boolJ = j4.j(j4.f(zzglVar.A(), zzelVarV.x(), this.f24191h.f24394a.U()), zA2);
        } else if (!zzelVarV.C()) {
            this.f24191h.f24394a.U().r().b("No string or number filter defined. property", this.f24191h.f24394a.A().f(zzglVar.z()));
        } else if (zzlk.L(zzglVar.A())) {
            boolJ = j4.j(j4.i(zzglVar.A(), zzelVarV.w()), zA2);
        } else {
            this.f24191h.f24394a.U().r().c("Invalid user property value for Numeric number filter. property, value", this.f24191h.f24394a.A().f(zzglVar.z()), zzglVar.A());
        }
        this.f24191h.f24394a.U().q().b("Property filter result", boolJ == null ? "null" : boolJ);
        if (boolJ == null) {
            return false;
        }
        this.f24173c = Boolean.TRUE;
        if (zC && !boolJ.booleanValue()) {
            return true;
        }
        if (!z10 || this.f24190g.A()) {
            this.f24174d = boolJ;
        }
        if (boolJ.booleanValue() && z11 && zzglVar.L()) {
            long jW = zzglVar.w();
            if (l10 != null) {
                jW = l10.longValue();
            }
            if (zY && this.f24190g.A() && !this.f24190g.B() && l11 != null) {
                jW = l11.longValue();
            }
            if (this.f24190g.B()) {
                this.f24176f = Long.valueOf(jW);
            } else {
                this.f24175e = Long.valueOf(jW);
            }
        }
        return true;
    }
}
