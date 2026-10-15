package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzno f20027a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzkf f20031e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzlb f20034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzdv f20035i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f20036j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzgi f20037k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private zzum f20038l = new zzum(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IdentityHashMap f20029c = new IdentityHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f20030d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f20028b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f20032f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f20033g = new HashSet();

    public zzkg(zzkf zzkfVar, zzlb zzlbVar, zzdv zzdvVar, zzno zznoVar) {
        this.f20027a = zznoVar;
        this.f20031e = zzkfVar;
        this.f20034h = zzlbVar;
        this.f20035i = zzdvVar;
    }

    private final void p(int i10, int i11) {
        while (i10 < this.f20028b.size()) {
            ((zzke) this.f20028b.get(i10)).f20025d += i11;
            i10++;
        }
    }

    private final void q(zzke zzkeVar) {
        zzkd zzkdVar = (zzkd) this.f20032f.get(zzkeVar);
        if (zzkdVar != null) {
            zzkdVar.f20019a.c(zzkdVar.f20020b);
        }
    }

    private final void r() {
        Iterator it = this.f20033g.iterator();
        while (it.hasNext()) {
            zzke zzkeVar = (zzke) it.next();
            if (zzkeVar.f20024c.isEmpty()) {
                q(zzkeVar);
                it.remove();
            }
        }
    }

    private final void s(zzke zzkeVar) {
        if (zzkeVar.f20026e && zzkeVar.f20024c.isEmpty()) {
            zzkd zzkdVar = (zzkd) this.f20032f.remove(zzkeVar);
            Objects.requireNonNull(zzkdVar);
            zzkdVar.f20019a.e(zzkdVar.f20020b);
            zzkdVar.f20019a.f(zzkdVar.f20021c);
            zzkdVar.f20019a.g(zzkdVar.f20021c);
            this.f20033g.remove(zzkeVar);
        }
    }

    private final void t(zzke zzkeVar) {
        zzsn zzsnVar = zzkeVar.f20022a;
        zzst zzstVar = new zzst() { // from class: com.google.android.gms.internal.ads.zzjw
            @Override // com.google.android.gms.internal.ads.zzst
            public final void a(zzsu zzsuVar, zzcn zzcnVar) {
                this.f19986a.e(zzsuVar, zzcnVar);
            }
        };
        zzkc zzkcVar = new zzkc(this, zzkeVar);
        this.f20032f.put(zzkeVar, new zzkd(zzsnVar, zzstVar, zzkcVar));
        zzsnVar.d(new Handler(zzew.e(), null), zzkcVar);
        zzsnVar.j(new Handler(zzew.e(), null), zzkcVar);
        zzsnVar.k(zzstVar, this.f20037k, this.f20027a);
    }

    private final void u(int i10, int i11) {
        while (true) {
            i11--;
            if (i11 < i10) {
                return;
            }
            zzke zzkeVar = (zzke) this.f20028b.remove(i11);
            this.f20030d.remove(zzkeVar.f20023b);
            p(i11, -zzkeVar.f20022a.G().c());
            zzkeVar.f20026e = true;
            if (this.f20036j) {
                s(zzkeVar);
            }
        }
    }

    public final int a() {
        return this.f20028b.size();
    }

    public final zzcn b() {
        if (this.f20028b.isEmpty()) {
            return zzcn.f13536a;
        }
        int iC = 0;
        for (int i10 = 0; i10 < this.f20028b.size(); i10++) {
            zzke zzkeVar = (zzke) this.f20028b.get(i10);
            zzkeVar.f20025d = iC;
            iC += zzkeVar.f20022a.G().c();
        }
        return new zzkl(this.f20028b, this.f20038l, null);
    }

    final /* synthetic */ void e(zzsu zzsuVar, zzcn zzcnVar) {
        this.f20031e.f();
    }

    public final void f(zzgi zzgiVar) {
        zzdl.f(!this.f20036j);
        this.f20037k = zzgiVar;
        for (int i10 = 0; i10 < this.f20028b.size(); i10++) {
            zzke zzkeVar = (zzke) this.f20028b.get(i10);
            t(zzkeVar);
            this.f20033g.add(zzkeVar);
        }
        this.f20036j = true;
    }

    public final void g() {
        for (zzkd zzkdVar : this.f20032f.values()) {
            try {
                zzkdVar.f20019a.e(zzkdVar.f20020b);
            } catch (RuntimeException e10) {
                zzee.c("MediaSourceList", "Failed to release child source.", e10);
            }
            zzkdVar.f20019a.f(zzkdVar.f20021c);
            zzkdVar.f20019a.g(zzkdVar.f20021c);
        }
        this.f20032f.clear();
        this.f20033g.clear();
        this.f20036j = false;
    }

    public final void h(zzsq zzsqVar) {
        zzke zzkeVar = (zzke) this.f20029c.remove(zzsqVar);
        Objects.requireNonNull(zzkeVar);
        zzkeVar.f20022a.a(zzsqVar);
        zzkeVar.f20024c.remove(((zzsk) zzsqVar).f20618o);
        if (!this.f20029c.isEmpty()) {
            r();
        }
        s(zzkeVar);
    }

    public final boolean i() {
        return this.f20036j;
    }

    public final zzcn j(int i10, List list, zzum zzumVar) {
        if (!list.isEmpty()) {
            this.f20038l = zzumVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                zzke zzkeVar = (zzke) list.get(i11 - i10);
                if (i11 > 0) {
                    zzke zzkeVar2 = (zzke) this.f20028b.get(i11 - 1);
                    zzkeVar.a(zzkeVar2.f20025d + zzkeVar2.f20022a.G().c());
                } else {
                    zzkeVar.a(0);
                }
                p(i11, zzkeVar.f20022a.G().c());
                this.f20028b.add(i11, zzkeVar);
                this.f20030d.put(zzkeVar.f20023b, zzkeVar);
                if (this.f20036j) {
                    t(zzkeVar);
                    if (this.f20029c.isEmpty()) {
                        this.f20033g.add(zzkeVar);
                    } else {
                        q(zzkeVar);
                    }
                }
            }
        }
        return b();
    }

    public final zzcn k(int i10, int i11, int i12, zzum zzumVar) {
        zzdl.d(a() >= 0);
        this.f20038l = null;
        return b();
    }

    public final zzcn l(int i10, int i11, zzum zzumVar) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= i11 && i11 <= a()) {
            z10 = true;
        }
        zzdl.d(z10);
        this.f20038l = zzumVar;
        u(i10, i11);
        return b();
    }

    public final zzcn m(List list, zzum zzumVar) {
        u(0, this.f20028b.size());
        return j(this.f20028b.size(), list, zzumVar);
    }

    public final zzcn n(zzum zzumVar) {
        int iA = a();
        if (zzumVar.c() != iA) {
            zzumVar = zzumVar.f().g(0, iA);
        }
        this.f20038l = zzumVar;
        return b();
    }

    public final zzsq o(zzss zzssVar, zzwt zzwtVar, long j10) {
        Object obj = zzssVar.f11010a;
        int i10 = zzkl.f20069o;
        Object obj2 = ((Pair) obj).first;
        zzss zzssVarC = zzssVar.c(((Pair) obj).second);
        zzke zzkeVar = (zzke) this.f20030d.get(obj2);
        Objects.requireNonNull(zzkeVar);
        this.f20033g.add(zzkeVar);
        zzkd zzkdVar = (zzkd) this.f20032f.get(zzkeVar);
        if (zzkdVar != null) {
            zzkdVar.f20019a.h(zzkdVar.f20020b);
        }
        zzkeVar.f20024c.add(zzssVarC);
        zzsk zzskVarH = zzkeVar.f20022a.i(zzssVarC, zzwtVar, j10);
        this.f20029c.put(zzskVarH, zzkeVar);
        r();
        return zzskVarH;
    }
}
