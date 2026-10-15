package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: GapWorker.java */
/* JADX INFO: loaded from: classes.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final ThreadLocal<e> f3942s = new ThreadLocal<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static Comparator<c> f3943t = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f3945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    long f3946q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList<RecyclerView> f3944o = new ArrayList<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ArrayList<c> f3947r = new ArrayList<>();

    /* JADX INFO: compiled from: GapWorker.java */
    class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.f3955d;
            if ((recyclerView == null) != (cVar2.f3955d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = cVar.f3952a;
            if (z10 != cVar2.f3952a) {
                return z10 ? -1 : 1;
            }
            int i10 = cVar2.f3953b - cVar.f3953b;
            if (i10 != 0) {
                return i10;
            }
            int i11 = cVar.f3954c - cVar2.f3954c;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    @SuppressLint({"VisibleForTests"})
    static class b implements RecyclerView.p.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3948a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f3950c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3951d;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p.c
        public void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.f3951d * 2;
            int[] iArr = this.f3950c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f3950c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i12 >= iArr.length) {
                int[] iArr3 = new int[i12 * 2];
                this.f3950c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f3950c;
            iArr4[i12] = i10;
            iArr4[i12 + 1] = i11;
            this.f3951d++;
        }

        void b() {
            int[] iArr = this.f3950c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3951d = 0;
        }

        void c(RecyclerView recyclerView, boolean z10) {
            this.f3951d = 0;
            int[] iArr = this.f3950c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.p pVar = recyclerView.A;
            if (recyclerView.f3682z == null || pVar == null || !pVar.u0()) {
                return;
            }
            if (z10) {
                if (!recyclerView.f3666r.p()) {
                    pVar.p(recyclerView.f3682z.d(), this);
                }
            } else if (!recyclerView.l0()) {
                pVar.o(this.f3948a, this.f3949b, recyclerView.f3677w0, this);
            }
            int i10 = this.f3951d;
            if (i10 > pVar.f3771m) {
                pVar.f3771m = i10;
                pVar.f3772n = z10;
                recyclerView.f3662p.K();
            }
        }

        boolean d(int i10) {
            if (this.f3950c != null) {
                int i11 = this.f3951d * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.f3950c[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        void e(int i10, int i11) {
            this.f3948a = i10;
            this.f3949b = i11;
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3954c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f3955d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3956e;

        c() {
        }

        public void a() {
            this.f3952a = false;
            this.f3953b = 0;
            this.f3954c = 0;
            this.f3955d = null;
            this.f3956e = 0;
        }
    }

    e() {
    }

    private void b() {
        c cVar;
        int size = this.f3944o.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = this.f3944o.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f3675v0.c(recyclerView, false);
                i10 += recyclerView.f3675v0.f3951d;
            }
        }
        this.f3947r.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = this.f3944o.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.f3675v0;
                int iAbs = Math.abs(bVar.f3948a) + Math.abs(bVar.f3949b);
                for (int i14 = 0; i14 < bVar.f3951d * 2; i14 += 2) {
                    if (i12 >= this.f3947r.size()) {
                        cVar = new c();
                        this.f3947r.add(cVar);
                    } else {
                        cVar = this.f3947r.get(i12);
                    }
                    int[] iArr = bVar.f3950c;
                    int i15 = iArr[i14 + 1];
                    cVar.f3952a = i15 <= iAbs;
                    cVar.f3953b = iAbs;
                    cVar.f3954c = i15;
                    cVar.f3955d = recyclerView2;
                    cVar.f3956e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f3947r, f3943t);
    }

    private void c(c cVar, long j10) {
        RecyclerView.e0 e0VarI = i(cVar.f3955d, cVar.f3956e, cVar.f3952a ? Long.MAX_VALUE : j10);
        if (e0VarI == null || e0VarI.f3728p == null || !e0VarI.C() || e0VarI.D()) {
            return;
        }
        h(e0VarI.f3728p.get(), j10);
    }

    private void d(long j10) {
        for (int i10 = 0; i10 < this.f3947r.size(); i10++) {
            c cVar = this.f3947r.get(i10);
            if (cVar.f3955d == null) {
                return;
            }
            c(cVar, j10);
            cVar.a();
        }
    }

    static boolean e(RecyclerView recyclerView, int i10) {
        int iJ = recyclerView.f3668s.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            RecyclerView.e0 e0VarF0 = RecyclerView.f0(recyclerView.f3668s.i(i11));
            if (e0VarF0.f3729q == i10 && !e0VarF0.D()) {
                return true;
            }
        }
        return false;
    }

    private void h(RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.S && recyclerView.f3668s.j() != 0) {
            recyclerView.U0();
        }
        b bVar = recyclerView.f3675v0;
        bVar.c(recyclerView, true);
        if (bVar.f3951d != 0) {
            try {
                androidx.core.os.m.a("RV Nested Prefetch");
                recyclerView.f3677w0.f(recyclerView.f3682z);
                for (int i10 = 0; i10 < bVar.f3951d * 2; i10 += 2) {
                    i(recyclerView, bVar.f3950c[i10], j10);
                }
            } finally {
                androidx.core.os.m.b();
            }
        }
    }

    private RecyclerView.e0 i(RecyclerView recyclerView, int i10, long j10) {
        if (e(recyclerView, i10)) {
            return null;
        }
        RecyclerView.w wVar = recyclerView.f3662p;
        try {
            recyclerView.G0();
            RecyclerView.e0 e0VarI = wVar.I(i10, false, j10);
            if (e0VarI != null) {
                if (!e0VarI.C() || e0VarI.D()) {
                    wVar.a(e0VarI, false);
                } else {
                    wVar.B(e0VarI.f3727o);
                }
            }
            return e0VarI;
        } finally {
            recyclerView.I0(false);
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f3944o.add(recyclerView);
    }

    void f(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.f3945p == 0) {
            this.f3945p = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f3675v0.e(i10, i11);
    }

    void g(long j10) {
        b();
        d(j10);
    }

    public void j(RecyclerView recyclerView) {
        this.f3944o.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            androidx.core.os.m.a("RV Prefetch");
            if (!this.f3944o.isEmpty()) {
                int size = this.f3944o.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = this.f3944o.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f3946q);
                }
            }
        } finally {
            this.f3945p = 0L;
            androidx.core.os.m.b();
        }
    }
}
