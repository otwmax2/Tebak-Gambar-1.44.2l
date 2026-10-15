package q1;

import i1.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: WorkSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f33776s = i1.j.f("WorkSpec");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final l.a<List<c>, List<i1.s>> f33777t = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f33778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s.a f33779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f33780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f33781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.b f33782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.work.b f33783f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f33784g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f33785h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f33786i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i1.b f33787j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f33788k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i1.a f33789l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f33790m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f33791n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f33792o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f33793p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f33794q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public i1.n f33795r;

    /* JADX INFO: compiled from: WorkSpec.java */
    class a implements l.a<List<c>, List<i1.s>> {
        a() {
        }

        @Override // l.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<i1.s> a(List<c> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<c> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: WorkSpec.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f33796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public s.a f33797b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f33797b != bVar.f33797b) {
                return false;
            }
            return this.f33796a.equals(bVar.f33796a);
        }

        public int hashCode() {
            return (this.f33796a.hashCode() * 31) + this.f33797b.hashCode();
        }
    }

    /* JADX INFO: compiled from: WorkSpec.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f33798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public s.a f33799b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.work.b f33800c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f33801d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List<String> f33802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List<androidx.work.b> f33803f;

        public i1.s a() {
            List<androidx.work.b> list = this.f33803f;
            return new i1.s(UUID.fromString(this.f33798a), this.f33799b, this.f33800c, this.f33802e, (list == null || list.isEmpty()) ? androidx.work.b.f4385c : this.f33803f.get(0), this.f33801d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f33801d != cVar.f33801d) {
                return false;
            }
            String str = this.f33798a;
            if (str == null ? cVar.f33798a != null : !str.equals(cVar.f33798a)) {
                return false;
            }
            if (this.f33799b != cVar.f33799b) {
                return false;
            }
            androidx.work.b bVar = this.f33800c;
            if (bVar == null ? cVar.f33800c != null : !bVar.equals(cVar.f33800c)) {
                return false;
            }
            List<String> list = this.f33802e;
            if (list == null ? cVar.f33802e != null : !list.equals(cVar.f33802e)) {
                return false;
            }
            List<androidx.work.b> list2 = this.f33803f;
            List<androidx.work.b> list3 = cVar.f33803f;
            return list2 != null ? list2.equals(list3) : list3 == null;
        }

        public int hashCode() {
            String str = this.f33798a;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            s.a aVar = this.f33799b;
            int iHashCode2 = (iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
            androidx.work.b bVar = this.f33800c;
            int iHashCode3 = (((iHashCode2 + (bVar != null ? bVar.hashCode() : 0)) * 31) + this.f33801d) * 31;
            List<String> list = this.f33802e;
            int iHashCode4 = (iHashCode3 + (list != null ? list.hashCode() : 0)) * 31;
            List<androidx.work.b> list2 = this.f33803f;
            return iHashCode4 + (list2 != null ? list2.hashCode() : 0);
        }
    }

    public p(String str, String str2) {
        this.f33779b = s.a.ENQUEUED;
        androidx.work.b bVar = androidx.work.b.f4385c;
        this.f33782e = bVar;
        this.f33783f = bVar;
        this.f33787j = i1.b.f30323i;
        this.f33789l = i1.a.EXPONENTIAL;
        this.f33790m = 30000L;
        this.f33793p = -1L;
        this.f33795r = i1.n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f33778a = str;
        this.f33780c = str2;
    }

    public long a() {
        if (c()) {
            return this.f33791n + Math.min(18000000L, this.f33789l == i1.a.LINEAR ? this.f33790m * ((long) this.f33788k) : (long) Math.scalb(this.f33790m, this.f33788k - 1));
        }
        if (!d()) {
            long jCurrentTimeMillis = this.f33791n;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            return jCurrentTimeMillis + this.f33784g;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        long j10 = this.f33791n;
        long j11 = j10 == 0 ? jCurrentTimeMillis2 + this.f33784g : j10;
        long j12 = this.f33786i;
        long j13 = this.f33785h;
        if (j12 != j13) {
            return j11 + j13 + (j10 == 0 ? j12 * (-1) : 0L);
        }
        return j11 + (j10 != 0 ? j13 : 0L);
    }

    public boolean b() {
        return !i1.b.f30323i.equals(this.f33787j);
    }

    public boolean c() {
        return this.f33779b == s.a.ENQUEUED && this.f33788k > 0;
    }

    public boolean d() {
        return this.f33785h != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f33784g != pVar.f33784g || this.f33785h != pVar.f33785h || this.f33786i != pVar.f33786i || this.f33788k != pVar.f33788k || this.f33790m != pVar.f33790m || this.f33791n != pVar.f33791n || this.f33792o != pVar.f33792o || this.f33793p != pVar.f33793p || this.f33794q != pVar.f33794q || !this.f33778a.equals(pVar.f33778a) || this.f33779b != pVar.f33779b || !this.f33780c.equals(pVar.f33780c)) {
            return false;
        }
        String str = this.f33781d;
        if (str == null ? pVar.f33781d == null : str.equals(pVar.f33781d)) {
            return this.f33782e.equals(pVar.f33782e) && this.f33783f.equals(pVar.f33783f) && this.f33787j.equals(pVar.f33787j) && this.f33789l == pVar.f33789l && this.f33795r == pVar.f33795r;
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((this.f33778a.hashCode() * 31) + this.f33779b.hashCode()) * 31) + this.f33780c.hashCode()) * 31;
        String str = this.f33781d;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.f33782e.hashCode()) * 31) + this.f33783f.hashCode()) * 31;
        long j10 = this.f33784g;
        int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f33785h;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f33786i;
        int iHashCode3 = (((((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + this.f33787j.hashCode()) * 31) + this.f33788k) * 31) + this.f33789l.hashCode()) * 31;
        long j13 = this.f33790m;
        int i12 = (iHashCode3 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.f33791n;
        int i13 = (i12 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        long j15 = this.f33792o;
        int i14 = (i13 + ((int) (j15 ^ (j15 >>> 32)))) * 31;
        long j16 = this.f33793p;
        return ((((i14 + ((int) (j16 ^ (j16 >>> 32)))) * 31) + (this.f33794q ? 1 : 0)) * 31) + this.f33795r.hashCode();
    }

    public String toString() {
        return "{WorkSpec: " + this.f33778a + "}";
    }

    public p(p pVar) {
        this.f33779b = s.a.ENQUEUED;
        androidx.work.b bVar = androidx.work.b.f4385c;
        this.f33782e = bVar;
        this.f33783f = bVar;
        this.f33787j = i1.b.f30323i;
        this.f33789l = i1.a.EXPONENTIAL;
        this.f33790m = 30000L;
        this.f33793p = -1L;
        this.f33795r = i1.n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f33778a = pVar.f33778a;
        this.f33780c = pVar.f33780c;
        this.f33779b = pVar.f33779b;
        this.f33781d = pVar.f33781d;
        this.f33782e = new androidx.work.b(pVar.f33782e);
        this.f33783f = new androidx.work.b(pVar.f33783f);
        this.f33784g = pVar.f33784g;
        this.f33785h = pVar.f33785h;
        this.f33786i = pVar.f33786i;
        this.f33787j = new i1.b(pVar.f33787j);
        this.f33788k = pVar.f33788k;
        this.f33789l = pVar.f33789l;
        this.f33790m = pVar.f33790m;
        this.f33791n = pVar.f33791n;
        this.f33792o = pVar.f33792o;
        this.f33793p = pVar.f33793p;
        this.f33794q = pVar.f33794q;
        this.f33795r = pVar.f33795r;
    }
}
