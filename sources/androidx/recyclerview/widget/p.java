package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: ViewInfoStore.java */
/* JADX INFO: loaded from: classes.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final o.g<RecyclerView.e0, a> f3998a = new o.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final o.d<RecyclerView.e0> f3999b = new o.d<>();

    /* JADX INFO: compiled from: ViewInfoStore.java */
    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static androidx.core.util.e<a> f4000d = new androidx.core.util.f(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f4001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.m.c f4002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.m.c f4003c;

        private a() {
        }

        static void a() {
            while (f4000d.b() != null) {
            }
        }

        static a b() {
            a aVarB = f4000d.b();
            return aVarB == null ? new a() : aVarB;
        }

        static void c(a aVar) {
            aVar.f4001a = 0;
            aVar.f4002b = null;
            aVar.f4003c = null;
            f4000d.a(aVar);
        }
    }

    /* JADX INFO: compiled from: ViewInfoStore.java */
    interface b {
        void a(RecyclerView.e0 e0Var);

        void b(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);

        void c(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);

        void d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2);
    }

    p() {
    }

    private RecyclerView.m.c l(RecyclerView.e0 e0Var, int i10) {
        a aVarO;
        RecyclerView.m.c cVar;
        int iF = this.f3998a.f(e0Var);
        if (iF >= 0 && (aVarO = this.f3998a.o(iF)) != null) {
            int i11 = aVarO.f4001a;
            if ((i11 & i10) != 0) {
                int i12 = (i10 ^ (-1)) & i11;
                aVarO.f4001a = i12;
                if (i10 == 4) {
                    cVar = aVarO.f4002b;
                } else {
                    if (i10 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarO.f4003c;
                }
                if ((i12 & 12) == 0) {
                    this.f3998a.m(iF);
                    a.c(aVarO);
                }
                return cVar;
            }
        }
        return null;
    }

    void a(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVarB = this.f3998a.get(e0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3998a.put(e0Var, aVarB);
        }
        aVarB.f4001a |= 2;
        aVarB.f4002b = cVar;
    }

    void b(RecyclerView.e0 e0Var) {
        a aVarB = this.f3998a.get(e0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3998a.put(e0Var, aVarB);
        }
        aVarB.f4001a |= 1;
    }

    void c(long j10, RecyclerView.e0 e0Var) {
        this.f3999b.k(j10, e0Var);
    }

    void d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVarB = this.f3998a.get(e0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3998a.put(e0Var, aVarB);
        }
        aVarB.f4003c = cVar;
        aVarB.f4001a |= 8;
    }

    void e(RecyclerView.e0 e0Var, RecyclerView.m.c cVar) {
        a aVarB = this.f3998a.get(e0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f3998a.put(e0Var, aVarB);
        }
        aVarB.f4002b = cVar;
        aVarB.f4001a |= 4;
    }

    void f() {
        this.f3998a.clear();
        this.f3999b.b();
    }

    RecyclerView.e0 g(long j10) {
        return this.f3999b.g(j10);
    }

    boolean h(RecyclerView.e0 e0Var) {
        a aVar = this.f3998a.get(e0Var);
        return (aVar == null || (aVar.f4001a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.e0 e0Var) {
        a aVar = this.f3998a.get(e0Var);
        return (aVar == null || (aVar.f4001a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.e0 e0Var) {
        p(e0Var);
    }

    RecyclerView.m.c m(RecyclerView.e0 e0Var) {
        return l(e0Var, 8);
    }

    RecyclerView.m.c n(RecyclerView.e0 e0Var) {
        return l(e0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.f3998a.size() - 1; size >= 0; size--) {
            RecyclerView.e0 e0VarK = this.f3998a.k(size);
            a aVarM = this.f3998a.m(size);
            int i10 = aVarM.f4001a;
            if ((i10 & 3) == 3) {
                bVar.a(e0VarK);
            } else if ((i10 & 1) != 0) {
                RecyclerView.m.c cVar = aVarM.f4002b;
                if (cVar == null) {
                    bVar.a(e0VarK);
                } else {
                    bVar.c(e0VarK, cVar, aVarM.f4003c);
                }
            } else if ((i10 & 14) == 14) {
                bVar.b(e0VarK, aVarM.f4002b, aVarM.f4003c);
            } else if ((i10 & 12) == 12) {
                bVar.d(e0VarK, aVarM.f4002b, aVarM.f4003c);
            } else if ((i10 & 4) != 0) {
                bVar.c(e0VarK, aVarM.f4002b, null);
            } else if ((i10 & 8) != 0) {
                bVar.b(e0VarK, aVarM.f4002b, aVarM.f4003c);
            }
            a.c(aVarM);
        }
    }

    void p(RecyclerView.e0 e0Var) {
        a aVar = this.f3998a.get(e0Var);
        if (aVar == null) {
            return;
        }
        aVar.f4001a &= -2;
    }

    void q(RecyclerView.e0 e0Var) {
        int iN = this.f3999b.n() - 1;
        while (true) {
            if (iN < 0) {
                break;
            }
            if (e0Var == this.f3999b.o(iN)) {
                this.f3999b.m(iN);
                break;
            }
            iN--;
        }
        a aVarRemove = this.f3998a.remove(e0Var);
        if (aVarRemove != null) {
            a.c(aVarRemove);
        }
    }
}
