package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzne {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzck f20218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzfqk f20219b = zzfqk.u();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzfqn f20220c = zzfqn.d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzss f20221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzss f20222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzss f20223f;

    public zzne(zzck zzckVar) {
        this.f20218a = zzckVar;
    }

    private static zzss j(zzcg zzcgVar, zzfqk zzfqkVar, zzss zzssVar, zzck zzckVar) {
        zzcn zzcnVarR = zzcgVar.r();
        int iF = zzcgVar.f();
        Object objF = zzcnVarR.o() ? null : zzcnVarR.f(iF);
        int iC = (zzcgVar.B() || zzcnVarR.o()) ? -1 : zzcnVarR.d(iF, zzckVar, false).c(zzew.g0(zzcgVar.k()));
        for (int i10 = 0; i10 < zzfqkVar.size(); i10++) {
            zzss zzssVar2 = (zzss) zzfqkVar.get(i10);
            if (m(zzssVar2, objF, zzcgVar.B(), zzcgVar.b(), zzcgVar.c(), iC)) {
                return zzssVar2;
            }
        }
        if (zzfqkVar.isEmpty() && zzssVar != null) {
            if (m(zzssVar, objF, zzcgVar.B(), zzcgVar.b(), zzcgVar.c(), iC)) {
                return zzssVar;
            }
        }
        return null;
    }

    private final void k(zzfqm zzfqmVar, zzss zzssVar, zzcn zzcnVar) {
        if (zzssVar == null) {
            return;
        }
        if (zzcnVar.a(zzssVar.f11010a) != -1) {
            zzfqmVar.a(zzssVar, zzcnVar);
            return;
        }
        zzcn zzcnVar2 = (zzcn) this.f20220c.get(zzssVar);
        if (zzcnVar2 != null) {
            zzfqmVar.a(zzssVar, zzcnVar2);
        }
    }

    private final void l(zzcn zzcnVar) {
        zzfqm zzfqmVar = new zzfqm();
        if (this.f20219b.isEmpty()) {
            k(zzfqmVar, this.f20222e, zzcnVar);
            if (!zzfnp.a(this.f20223f, this.f20222e)) {
                k(zzfqmVar, this.f20223f, zzcnVar);
            }
            if (!zzfnp.a(this.f20221d, this.f20222e) && !zzfnp.a(this.f20221d, this.f20223f)) {
                k(zzfqmVar, this.f20221d, zzcnVar);
            }
        } else {
            for (int i10 = 0; i10 < this.f20219b.size(); i10++) {
                k(zzfqmVar, (zzss) this.f20219b.get(i10), zzcnVar);
            }
            if (!this.f20219b.contains(this.f20221d)) {
                k(zzfqmVar, this.f20221d, zzcnVar);
            }
        }
        this.f20220c = zzfqmVar.c();
    }

    private static boolean m(zzss zzssVar, Object obj, boolean z10, int i10, int i11, int i12) {
        if (!zzssVar.f11010a.equals(obj)) {
            return false;
        }
        if (z10) {
            if (zzssVar.f11011b != i10 || zzssVar.f11012c != i11) {
                return false;
            }
        } else if (zzssVar.f11011b != -1 || zzssVar.f11014e != i12) {
            return false;
        }
        return true;
    }

    public final zzcn a(zzss zzssVar) {
        return (zzcn) this.f20220c.get(zzssVar);
    }

    public final zzss b() {
        return this.f20221d;
    }

    public final zzss c() {
        Object next;
        Object obj;
        if (this.f20219b.isEmpty()) {
            return null;
        }
        zzfqk zzfqkVar = this.f20219b;
        if (!(zzfqkVar instanceof List)) {
            Iterator<E> it = zzfqkVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        } else {
            if (zzfqkVar.isEmpty()) {
                throw new NoSuchElementException();
            }
            obj = zzfqkVar.get(zzfqkVar.size() - 1);
        }
        return (zzss) obj;
    }

    public final zzss d() {
        return this.f20222e;
    }

    public final zzss e() {
        return this.f20223f;
    }

    public final void g(zzcg zzcgVar) {
        this.f20221d = j(zzcgVar, this.f20219b, this.f20222e, this.f20218a);
    }

    public final void h(List list, zzss zzssVar, zzcg zzcgVar) {
        this.f20219b = zzfqk.s(list);
        if (!list.isEmpty()) {
            this.f20222e = (zzss) list.get(0);
            Objects.requireNonNull(zzssVar);
            this.f20223f = zzssVar;
        }
        if (this.f20221d == null) {
            this.f20221d = j(zzcgVar, this.f20219b, this.f20222e, this.f20218a);
        }
        l(zzcgVar.r());
    }

    public final void i(zzcg zzcgVar) {
        this.f20221d = j(zzcgVar, this.f20219b, this.f20222e, this.f20218a);
        l(zzcgVar.r());
    }
}
