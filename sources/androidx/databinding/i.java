package androidx.databinding;

import androidx.databinding.c;
import androidx.databinding.o;

/* JADX INFO: compiled from: ListChangeRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends c<o.a, o, b> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final androidx.core.util.g<b> f2632t = new androidx.core.util.g<>(10);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final c.a<o.a, o, b> f2633u = new a();

    /* JADX INFO: compiled from: ListChangeRegistry.java */
    class a extends c.a<o.a, o, b> {
        a() {
        }

        @Override // androidx.databinding.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(o.a aVar, o oVar, int i10, b bVar) {
            if (i10 == 1) {
                aVar.e(oVar, bVar.f2634a, bVar.f2635b);
                return;
            }
            if (i10 == 2) {
                aVar.f(oVar, bVar.f2634a, bVar.f2635b);
                return;
            }
            if (i10 == 3) {
                aVar.g(oVar, bVar.f2634a, bVar.f2636c, bVar.f2635b);
            } else if (i10 != 4) {
                aVar.d(oVar);
            } else {
                aVar.h(oVar, bVar.f2634a, bVar.f2635b);
            }
        }
    }

    /* JADX INFO: compiled from: ListChangeRegistry.java */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2635b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2636c;

        b() {
        }
    }

    public i() {
        super(f2633u);
    }

    private static b n(int i10, int i11, int i12) {
        b bVarB = f2632t.b();
        if (bVarB == null) {
            bVarB = new b();
        }
        bVarB.f2634a = i10;
        bVarB.f2636c = i11;
        bVarB.f2635b = i12;
        return bVarB;
    }

    @Override // androidx.databinding.c
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public synchronized void f(o oVar, int i10, b bVar) {
        super.f(oVar, i10, bVar);
        if (bVar != null) {
            f2632t.a(bVar);
        }
    }

    public void p(o oVar, int i10, int i11) {
        f(oVar, 1, n(i10, 0, i11));
    }

    public void q(o oVar, int i10, int i11) {
        f(oVar, 2, n(i10, 0, i11));
    }

    public void r(o oVar, int i10, int i11) {
        f(oVar, 4, n(i10, 0, i11));
    }
}
