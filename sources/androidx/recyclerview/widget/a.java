package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: AdapterHelper.java */
/* JADX INFO: loaded from: classes.dex */
final class a implements h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.core.util.e<b> f3843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<b> f3844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<b> f3845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0061a f3846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Runnable f3847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f3848f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final h f3849g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3850h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdapterHelper.java */
    interface InterfaceC0061a {
        void a(int i10, int i11);

        void b(b bVar);

        void c(int i10, int i11, Object obj);

        void d(b bVar);

        RecyclerView.e0 e(int i10);

        void f(int i10, int i11);

        void g(int i10, int i11);

        void h(int i10, int i11);
    }

    /* JADX INFO: compiled from: AdapterHelper.java */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f3853c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3854d;

        b(int i10, int i11, int i12, Object obj) {
            this.f3851a = i10;
            this.f3852b = i11;
            this.f3854d = i12;
            this.f3853c = obj;
        }

        String a() {
            int i10 = this.f3851a;
            return i10 != 1 ? i10 != 2 ? i10 != 4 ? i10 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f3851a;
            if (i10 != bVar.f3851a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f3854d - this.f3852b) == 1 && this.f3854d == bVar.f3852b && this.f3852b == bVar.f3854d) {
                return true;
            }
            if (this.f3854d != bVar.f3854d || this.f3852b != bVar.f3852b) {
                return false;
            }
            Object obj2 = this.f3853c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f3853c)) {
                    return false;
                }
            } else if (bVar.f3853c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f3851a * 31) + this.f3852b) * 31) + this.f3854d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f3852b + "c:" + this.f3854d + ",p:" + this.f3853c + "]";
        }
    }

    a(InterfaceC0061a interfaceC0061a) {
        this(interfaceC0061a, false);
    }

    private void c(b bVar) {
        r(bVar);
    }

    private void d(b bVar) {
        r(bVar);
    }

    private void f(b bVar) {
        boolean z10;
        byte b10;
        int i10 = bVar.f3852b;
        int i11 = bVar.f3854d + i10;
        byte b11 = -1;
        int i12 = i10;
        int i13 = 0;
        while (i12 < i11) {
            if (this.f3846d.e(i12) != null || h(i12)) {
                if (b11 == 0) {
                    k(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 1;
            } else {
                if (b11 == 1) {
                    r(b(2, i10, i13, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b10 = 0;
            }
            if (z10) {
                i12 -= i13;
                i11 -= i13;
                i13 = 1;
            } else {
                i13++;
            }
            i12++;
            b11 = b10;
        }
        if (i13 != bVar.f3854d) {
            a(bVar);
            bVar = b(2, i10, i13, null);
        }
        if (b11 == 0) {
            k(bVar);
        } else {
            r(bVar);
        }
    }

    private void g(b bVar) {
        int i10 = bVar.f3852b;
        int i11 = bVar.f3854d + i10;
        int i12 = i10;
        byte b10 = -1;
        int i13 = 0;
        while (i10 < i11) {
            if (this.f3846d.e(i10) != null || h(i10)) {
                if (b10 == 0) {
                    k(b(4, i12, i13, bVar.f3853c));
                    i12 = i10;
                    i13 = 0;
                }
                b10 = 1;
            } else {
                if (b10 == 1) {
                    r(b(4, i12, i13, bVar.f3853c));
                    i12 = i10;
                    i13 = 0;
                }
                b10 = 0;
            }
            i13++;
            i10++;
        }
        if (i13 != bVar.f3854d) {
            Object obj = bVar.f3853c;
            a(bVar);
            bVar = b(4, i12, i13, obj);
        }
        if (b10 == 0) {
            k(bVar);
        } else {
            r(bVar);
        }
    }

    private boolean h(int i10) {
        int size = this.f3845c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f3845c.get(i11);
            int i12 = bVar.f3851a;
            if (i12 == 8) {
                if (n(bVar.f3854d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f3852b;
                int i14 = bVar.f3854d + i13;
                while (i13 < i14) {
                    if (n(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i10;
        int i11 = bVar.f3851a;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iV = v(bVar.f3852b, i11);
        int i12 = bVar.f3852b;
        int i13 = bVar.f3851a;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < bVar.f3854d; i15++) {
            int iV2 = v(bVar.f3852b + (i10 * i15), bVar.f3851a);
            int i16 = bVar.f3851a;
            if (i16 == 2 ? iV2 == iV : i16 == 4 && iV2 == iV + 1) {
                i14++;
            } else {
                b bVarB = b(i16, iV, i14, bVar.f3853c);
                l(bVarB, i12);
                a(bVarB);
                if (bVar.f3851a == 4) {
                    i12 += i14;
                }
                iV = iV2;
                i14 = 1;
            }
        }
        Object obj = bVar.f3853c;
        a(bVar);
        if (i14 > 0) {
            b bVarB2 = b(bVar.f3851a, iV, i14, obj);
            l(bVarB2, i12);
            a(bVarB2);
        }
    }

    private void r(b bVar) {
        this.f3845c.add(bVar);
        int i10 = bVar.f3851a;
        if (i10 == 1) {
            this.f3846d.g(bVar.f3852b, bVar.f3854d);
            return;
        }
        if (i10 == 2) {
            this.f3846d.f(bVar.f3852b, bVar.f3854d);
            return;
        }
        if (i10 == 4) {
            this.f3846d.c(bVar.f3852b, bVar.f3854d, bVar.f3853c);
        } else {
            if (i10 == 8) {
                this.f3846d.a(bVar.f3852b, bVar.f3854d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int v(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f3845c.size() - 1; size >= 0; size--) {
            b bVar = this.f3845c.get(size);
            int i14 = bVar.f3851a;
            if (i14 == 8) {
                int i15 = bVar.f3852b;
                int i16 = bVar.f3854d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            bVar.f3852b = i15 + 1;
                            bVar.f3854d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f3852b = i15 - 1;
                            bVar.f3854d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        bVar.f3854d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f3854d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        bVar.f3852b = i15 + 1;
                    } else if (i11 == 2) {
                        bVar.f3852b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = bVar.f3852b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f3854d;
                    } else if (i14 == 2) {
                        i10 += bVar.f3854d;
                    }
                } else if (i11 == 1) {
                    bVar.f3852b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f3852b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f3845c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f3845c.get(size2);
            if (bVar2.f3851a == 8) {
                int i18 = bVar2.f3854d;
                if (i18 == bVar2.f3852b || i18 < 0) {
                    this.f3845c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f3854d <= 0) {
                this.f3845c.remove(size2);
                a(bVar2);
            }
        }
        return i10;
    }

    @Override // androidx.recyclerview.widget.h.a
    public void a(b bVar) {
        if (this.f3848f) {
            return;
        }
        bVar.f3853c = null;
        this.f3843a.a(bVar);
    }

    @Override // androidx.recyclerview.widget.h.a
    public b b(int i10, int i11, int i12, Object obj) {
        b bVarB = this.f3843a.b();
        if (bVarB == null) {
            return new b(i10, i11, i12, obj);
        }
        bVarB.f3851a = i10;
        bVarB.f3852b = i11;
        bVarB.f3854d = i12;
        bVarB.f3853c = obj;
        return bVarB;
    }

    public int e(int i10) {
        int size = this.f3844b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f3844b.get(i11);
            int i12 = bVar.f3851a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = bVar.f3852b;
                    if (i13 <= i10) {
                        int i14 = bVar.f3854d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = bVar.f3852b;
                    if (i15 == i10) {
                        i10 = bVar.f3854d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (bVar.f3854d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (bVar.f3852b <= i10) {
                i10 += bVar.f3854d;
            }
        }
        return i10;
    }

    void i() {
        int size = this.f3845c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f3846d.d(this.f3845c.get(i10));
        }
        t(this.f3845c);
        this.f3850h = 0;
    }

    void j() {
        i();
        int size = this.f3844b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f3844b.get(i10);
            int i11 = bVar.f3851a;
            if (i11 == 1) {
                this.f3846d.d(bVar);
                this.f3846d.g(bVar.f3852b, bVar.f3854d);
            } else if (i11 == 2) {
                this.f3846d.d(bVar);
                this.f3846d.h(bVar.f3852b, bVar.f3854d);
            } else if (i11 == 4) {
                this.f3846d.d(bVar);
                this.f3846d.c(bVar.f3852b, bVar.f3854d, bVar.f3853c);
            } else if (i11 == 8) {
                this.f3846d.d(bVar);
                this.f3846d.a(bVar.f3852b, bVar.f3854d);
            }
            Runnable runnable = this.f3847e;
            if (runnable != null) {
                runnable.run();
            }
        }
        t(this.f3844b);
        this.f3850h = 0;
    }

    void l(b bVar, int i10) {
        this.f3846d.b(bVar);
        int i11 = bVar.f3851a;
        if (i11 == 2) {
            this.f3846d.h(i10, bVar.f3854d);
        } else {
            if (i11 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f3846d.c(i10, bVar.f3854d, bVar.f3853c);
        }
    }

    int m(int i10) {
        return n(i10, 0);
    }

    int n(int i10, int i11) {
        int size = this.f3845c.size();
        while (i11 < size) {
            b bVar = this.f3845c.get(i11);
            int i12 = bVar.f3851a;
            if (i12 == 8) {
                int i13 = bVar.f3852b;
                if (i13 == i10) {
                    i10 = bVar.f3854d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f3854d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f3852b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f3854d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f3854d;
                }
            }
            i11++;
        }
        return i10;
    }

    boolean o(int i10) {
        return (i10 & this.f3850h) != 0;
    }

    boolean p() {
        return this.f3844b.size() > 0;
    }

    boolean q() {
        return (this.f3845c.isEmpty() || this.f3844b.isEmpty()) ? false : true;
    }

    void s() {
        this.f3849g.b(this.f3844b);
        int size = this.f3844b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f3844b.get(i10);
            int i11 = bVar.f3851a;
            if (i11 == 1) {
                c(bVar);
            } else if (i11 == 2) {
                f(bVar);
            } else if (i11 == 4) {
                g(bVar);
            } else if (i11 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f3847e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f3844b.clear();
    }

    void t(List<b> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(list.get(i10));
        }
        list.clear();
    }

    void u() {
        t(this.f3844b);
        t(this.f3845c);
        this.f3850h = 0;
    }

    a(InterfaceC0061a interfaceC0061a, boolean z10) {
        this.f3843a = new androidx.core.util.f(30);
        this.f3844b = new ArrayList<>();
        this.f3845c = new ArrayList<>();
        this.f3850h = 0;
        this.f3846d = interfaceC0061a;
        this.f3848f = z10;
        this.f3849g = new h(this);
    }
}
