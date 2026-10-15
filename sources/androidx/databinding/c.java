package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: CallbackRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class c<C, T, A> implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<C> f2625o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f2626p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long[] f2627q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f2628r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final a<C, T, A> f2629s;

    /* JADX INFO: compiled from: CallbackRegistry.java */
    public static abstract class a<C, T, A> {
        public abstract void a(C c10, T t10, int i10, A a10);
    }

    public c(a<C, T, A> aVar) {
        this.f2629s = aVar;
    }

    private boolean d(int i10) {
        int i11;
        if (i10 < 64) {
            return ((1 << i10) & this.f2626p) != 0;
        }
        long[] jArr = this.f2627q;
        if (jArr != null && (i11 = (i10 / 64) - 1) < jArr.length) {
            return ((1 << (i10 % 64)) & jArr[i11]) != 0;
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void g(T t10, int i10, A a10, int i11, int i12, long j10) {
        long j11 = 1;
        while (i11 < i12) {
            if ((j10 & j11) == 0) {
                this.f2629s.a(this.f2625o.get(i11), t10, i10, a10);
            }
            j11 <<= 1;
            i11++;
        }
    }

    private void h(T t10, int i10, A a10) {
        g(t10, i10, a10, 0, Math.min(64, this.f2625o.size()), this.f2626p);
    }

    private void i(T t10, int i10, A a10) {
        int size = this.f2625o.size();
        int length = this.f2627q == null ? -1 : r0.length - 1;
        j(t10, i10, a10, length);
        g(t10, i10, a10, (length + 2) * 64, size, 0L);
    }

    private void j(T t10, int i10, A a10, int i11) {
        if (i11 < 0) {
            h(t10, i10, a10);
            return;
        }
        long j10 = this.f2627q[i11];
        int i12 = (i11 + 1) * 64;
        int iMin = Math.min(this.f2625o.size(), i12 + 64);
        j(t10, i10, a10, i11 - 1);
        g(t10, i10, a10, i12, iMin, j10);
    }

    private void l(int i10, long j10) {
        long j11 = Long.MIN_VALUE;
        for (int i11 = (i10 + 64) - 1; i11 >= i10; i11--) {
            if ((j10 & j11) != 0) {
                this.f2625o.remove(i11);
            }
            j11 >>>= 1;
        }
    }

    private void m(int i10) {
        if (i10 < 64) {
            this.f2626p = (1 << i10) | this.f2626p;
            return;
        }
        int i11 = (i10 / 64) - 1;
        long[] jArr = this.f2627q;
        if (jArr == null) {
            this.f2627q = new long[this.f2625o.size() / 64];
        } else if (jArr.length <= i11) {
            long[] jArr2 = new long[this.f2625o.size() / 64];
            long[] jArr3 = this.f2627q;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f2627q = jArr2;
        }
        long j10 = 1 << (i10 % 64);
        long[] jArr4 = this.f2627q;
        jArr4[i11] = j10 | jArr4[i11];
    }

    public synchronized void a(C c10) {
        if (c10 == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        int iLastIndexOf = this.f2625o.lastIndexOf(c10);
        if (iLastIndexOf < 0 || d(iLastIndexOf)) {
            this.f2625o.add(c10);
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized c<C, T, A> clone() {
        c<C, T, A> cVar;
        CloneNotSupportedException e10;
        try {
            cVar = (c) super.clone();
            try {
                cVar.f2626p = 0L;
                cVar.f2627q = null;
                cVar.f2628r = 0;
                cVar.f2625o = new ArrayList();
                int size = this.f2625o.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (!d(i10)) {
                        cVar.f2625o.add(this.f2625o.get(i10));
                    }
                }
            } catch (CloneNotSupportedException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (CloneNotSupportedException e12) {
            cVar = null;
            e10 = e12;
        }
        return cVar;
    }

    public synchronized void f(T t10, int i10, A a10) {
        this.f2628r++;
        i(t10, i10, a10);
        int i11 = this.f2628r - 1;
        this.f2628r = i11;
        if (i11 == 0) {
            long[] jArr = this.f2627q;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j10 = this.f2627q[length];
                    if (j10 != 0) {
                        l((length + 1) * 64, j10);
                        this.f2627q[length] = 0;
                    }
                }
            }
            long j11 = this.f2626p;
            if (j11 != 0) {
                l(0, j11);
                this.f2626p = 0L;
            }
        }
    }

    public synchronized void k(C c10) {
        if (this.f2628r == 0) {
            this.f2625o.remove(c10);
        } else {
            int iLastIndexOf = this.f2625o.lastIndexOf(c10);
            if (iLastIndexOf >= 0) {
                m(iLastIndexOf);
            }
        }
    }
}
