package g2;

import java.util.Queue;

/* JADX INFO: compiled from: ModelCache.java */
/* JADX INFO: loaded from: classes.dex */
public class k<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x2.e<b<A>, B> f29826a;

    /* JADX INFO: compiled from: ModelCache.java */
    class a extends x2.e<b<A>, B> {
        a(int i10) {
            super(i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // x2.e
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(b<A> bVar, B b10) {
            bVar.c();
        }
    }

    /* JADX INFO: compiled from: ModelCache.java */
    static final class b<A> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Queue<b<?>> f29828d = x2.h.d(0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f29830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private A f29831c;

        private b() {
        }

        static <A> b<A> a(A a10, int i10, int i11) {
            b<A> bVar = (b) f29828d.poll();
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a10, i10, i11);
            return bVar;
        }

        private void b(A a10, int i10, int i11) {
            this.f29831c = a10;
            this.f29830b = i10;
            this.f29829a = i11;
        }

        public void c() {
            f29828d.offer(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f29830b == bVar.f29830b && this.f29829a == bVar.f29829a && this.f29831c.equals(bVar.f29831c);
        }

        public int hashCode() {
            return (((this.f29829a * 31) + this.f29830b) * 31) + this.f29831c.hashCode();
        }
    }

    public k(int i10) {
        this.f29826a = new a(i10);
    }

    public B a(A a10, int i10, int i11) {
        b<A> bVarA = b.a(a10, i10, i11);
        B bG = this.f29826a.g(bVarA);
        bVarA.c();
        return bG;
    }

    public void b(A a10, int i10, int i11, B b10) {
        this.f29826a.k(b.a(a10, i10, i11), b10);
    }
}
