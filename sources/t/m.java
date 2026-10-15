package t;

import java.util.ArrayList;

/* JADX INFO: compiled from: RunGroup.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f35096h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    p f35099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    p f35100d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f35102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f35103g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f35097a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35098b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<p> f35101e = new ArrayList<>();

    public m(p pVar, int i10) {
        this.f35099c = null;
        this.f35100d = null;
        this.f35102f = 0;
        int i11 = f35096h;
        this.f35102f = i11;
        f35096h = i11 + 1;
        this.f35099c = pVar;
        this.f35100d = pVar;
        this.f35103g = i10;
    }

    private long c(f fVar, long j10) {
        p pVar = fVar.f35072d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f35079k.size();
        long jMin = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = fVar.f35079k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f35072d != pVar) {
                    jMin = Math.min(jMin, c(fVar2, ((long) fVar2.f35074f) + j10));
                }
            }
        }
        if (fVar != pVar.f35130i) {
            return jMin;
        }
        long j11 = j10 - pVar.j();
        return Math.min(Math.min(jMin, c(pVar.f35129h, j11)), j11 - ((long) pVar.f35129h.f35074f));
    }

    private long d(f fVar, long j10) {
        p pVar = fVar.f35072d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f35079k.size();
        long jMax = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = fVar.f35079k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f35072d != pVar) {
                    jMax = Math.max(jMax, d(fVar2, ((long) fVar2.f35074f) + j10));
                }
            }
        }
        if (fVar != pVar.f35129h) {
            return jMax;
        }
        long j11 = j10 + pVar.j();
        return Math.max(Math.max(jMax, d(pVar.f35130i, j11)), j11 - ((long) pVar.f35130i.f35074f));
    }

    public void a(p pVar) {
        this.f35101e.add(pVar);
        this.f35100d = pVar;
    }

    public long b(s.f fVar, int i10) {
        long j10;
        int i11;
        p pVar = this.f35099c;
        if (pVar instanceof c) {
            if (((c) pVar).f35127f != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(pVar instanceof l)) {
                return 0L;
            }
        } else if (!(pVar instanceof n)) {
            return 0L;
        }
        f fVar2 = (i10 == 0 ? fVar.f34389e : fVar.f34391f).f35129h;
        f fVar3 = (i10 == 0 ? fVar.f34389e : fVar.f34391f).f35130i;
        boolean zContains = pVar.f35129h.f35080l.contains(fVar2);
        boolean zContains2 = this.f35099c.f35130i.f35080l.contains(fVar3);
        long j11 = this.f35099c.j();
        if (zContains && zContains2) {
            long jD = d(this.f35099c.f35129h, 0L);
            long jC = c(this.f35099c.f35130i, 0L);
            long j12 = jD - j11;
            p pVar2 = this.f35099c;
            int i12 = pVar2.f35130i.f35074f;
            if (j12 >= (-i12)) {
                j12 += (long) i12;
            }
            int i13 = pVar2.f35129h.f35074f;
            long j13 = ((-jC) - j11) - ((long) i13);
            if (j13 >= i13) {
                j13 -= (long) i13;
            }
            float fO = pVar2.f35123b.o(i10);
            float f10 = fO > 0.0f ? (long) ((j13 / fO) + (j12 / (1.0f - fO))) : 0L;
            long j14 = ((long) ((f10 * fO) + 0.5f)) + j11 + ((long) ((f10 * (1.0f - fO)) + 0.5f));
            p pVar3 = this.f35099c;
            j10 = ((long) pVar3.f35129h.f35074f) + j14;
            i11 = pVar3.f35130i.f35074f;
        } else {
            if (zContains) {
                return Math.max(d(this.f35099c.f35129h, r13.f35074f), ((long) this.f35099c.f35129h.f35074f) + j11);
            }
            if (zContains2) {
                return Math.max(-c(this.f35099c.f35130i, r13.f35074f), ((long) (-this.f35099c.f35130i.f35074f)) + j11);
            }
            p pVar4 = this.f35099c;
            j10 = ((long) pVar4.f35129h.f35074f) + pVar4.j();
            i11 = this.f35099c.f35130i.f35074f;
        }
        return j10 - ((long) i11);
    }
}
