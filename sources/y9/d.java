package y9;

import i9.y;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: classes2.dex */
public class d implements Iterable<Integer>, u9.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f37133r = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f37134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f37135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f37136q;

    /* JADX INFO: compiled from: Progressions.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        public final d a(int i10, int i11, int i12) {
            return new d(i10, i11, i12);
        }
    }

    public d(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f37134o = i10;
        this.f37135p = n9.c.c(i10, i11, i12);
        this.f37136q = i12;
    }

    public final int c() {
        return this.f37134o;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f37134o != dVar.f37134o || this.f37135p != dVar.f37135p || this.f37136q != dVar.f37136q) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        return this.f37135p;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f37134o * 31) + this.f37135p) * 31) + this.f37136q;
    }

    public final int i() {
        return this.f37136q;
    }

    public boolean isEmpty() {
        if (this.f37136q > 0) {
            if (this.f37134o > this.f37135p) {
                return true;
            }
        } else if (this.f37134o < this.f37135p) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public y iterator() {
        return new e(this.f37134o, this.f37135p, this.f37136q);
    }

    public String toString() {
        StringBuilder sb;
        int i10;
        if (this.f37136q > 0) {
            sb = new StringBuilder();
            sb.append(this.f37134o);
            sb.append("..");
            sb.append(this.f37135p);
            sb.append(" step ");
            i10 = this.f37136q;
        } else {
            sb = new StringBuilder();
            sb.append(this.f37134o);
            sb.append(" downTo ");
            sb.append(this.f37135p);
            sb.append(" step ");
            i10 = -this.f37136q;
        }
        sb.append(i10);
        return sb.toString();
    }
}
