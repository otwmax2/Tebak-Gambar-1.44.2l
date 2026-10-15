package h0;

import da.o0;
import da.x1;
import fa.h;
import h9.t;
import java.util.concurrent.atomic.AtomicInteger;
import s9.p;

/* JADX INFO: compiled from: SimpleActor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o0 f30129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p<T, k9.d<? super t>, Object> f30130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final fa.f<T> f30131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f30132d;

    /* JADX INFO: compiled from: SimpleActor.kt */
    static final class a extends t9.n implements s9.l<Throwable, t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ s9.l<Throwable, t> f30133o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ l<T> f30134p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ p<T, Throwable, t> f30135q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(s9.l<? super Throwable, t> lVar, l<T> lVar2, p<? super T, ? super Throwable, t> pVar) {
            super(1);
            this.f30133o = lVar;
            this.f30134p = lVar2;
            this.f30135q = pVar;
        }

        public final void c(Throwable th) {
            t tVar;
            this.f30133o.invoke(th);
            ((l) this.f30134p).f30131c.b(th);
            do {
                Object objF = fa.h.f(((l) this.f30134p).f30131c.a());
                if (objF == null) {
                    tVar = null;
                } else {
                    this.f30135q.invoke((T) objF, th);
                    tVar = t.f30301a;
                }
            } while (tVar != null);
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(Throwable th) {
            c(th);
            return t.f30301a;
        }
    }

    /* JADX INFO: compiled from: SimpleActor.kt */
    @m9.f(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {122, 122}, m = "invokeSuspend")
    static final class b extends m9.k implements p<o0, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30136s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f30137t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ l<T> f30138u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(l<T> lVar, k9.d<? super b> dVar) {
            super(2, dVar);
            this.f30138u = lVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            return new b(this.f30138u, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006c -> B:24:0x006e). Please report as a decompilation issue!!! */
        @Override // m9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object i(java.lang.Object r8) throws java.lang.Throwable {
            /*
                r7 = this;
                java.lang.Object r0 = l9.b.c()
                int r1 = r7.f30137t
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L26
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                h9.o.b(r8)
                r8 = r7
                goto L6e
            L13:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1b:
                java.lang.Object r1 = r7.f30136s
                s9.p r1 = (s9.p) r1
                h9.o.b(r8)
                r4 = r1
                r1 = r0
                r0 = r7
                goto L60
            L26:
                h9.o.b(r8)
                h0.l<T> r8 = r7.f30138u
                java.util.concurrent.atomic.AtomicInteger r8 = h0.l.c(r8)
                int r8 = r8.get()
                if (r8 <= 0) goto L37
                r8 = 1
                goto L38
            L37:
                r8 = 0
            L38:
                if (r8 == 0) goto L7d
                r8 = r7
            L3b:
                h0.l<T> r1 = r8.f30138u
                da.o0 r1 = h0.l.d(r1)
                da.p0.b(r1)
                h0.l<T> r1 = r8.f30138u
                s9.p r1 = h0.l.a(r1)
                h0.l<T> r4 = r8.f30138u
                fa.f r4 = h0.l.b(r4)
                r8.f30136s = r1
                r8.f30137t = r3
                java.lang.Object r4 = r4.c(r8)
                if (r4 != r0) goto L5b
                return r0
            L5b:
                r6 = r0
                r0 = r8
                r8 = r4
                r4 = r1
                r1 = r6
            L60:
                r5 = 0
                r0.f30136s = r5
                r0.f30137t = r2
                java.lang.Object r8 = r4.invoke(r8, r0)
                if (r8 != r1) goto L6c
                return r1
            L6c:
                r8 = r0
                r0 = r1
            L6e:
                h0.l<T> r1 = r8.f30138u
                java.util.concurrent.atomic.AtomicInteger r1 = h0.l.c(r1)
                int r1 = r1.decrementAndGet()
                if (r1 != 0) goto L3b
                h9.t r8 = h9.t.f30301a
                return r8
            L7d:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "Check failed."
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                goto L8a
            L89:
                throw r8
            L8a:
                goto L89
            */
            throw new UnsupportedOperationException("Method not decompiled: h0.l.b.i(java.lang.Object):java.lang.Object");
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super t> dVar) {
            return ((b) d(o0Var, dVar)).i(t.f30301a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(o0 o0Var, s9.l<? super Throwable, t> lVar, p<? super T, ? super Throwable, t> pVar, p<? super T, ? super k9.d<? super t>, ? extends Object> pVar2) {
        t9.m.e(o0Var, "scope");
        t9.m.e(lVar, "onComplete");
        t9.m.e(pVar, "onUndeliveredElement");
        t9.m.e(pVar2, "consumeMessage");
        this.f30129a = o0Var;
        this.f30130b = pVar2;
        this.f30131c = fa.g.b(Integer.MAX_VALUE, null, null, 6, null);
        this.f30132d = new AtomicInteger(0);
        x1 x1Var = (x1) o0Var.a().b(x1.f28875m);
        if (x1Var == null) {
            return;
        }
        x1Var.f(new a(lVar, this, pVar));
    }

    public final void e(T t10) throws Throwable {
        Object objD = this.f30131c.d(t10);
        if (objD instanceof h.a) {
            Throwable thE = fa.h.e(objD);
            if (thE != null) {
                throw thE;
            }
            throw new fa.k("Channel was closed normally");
        }
        if (!fa.h.h(objD)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.f30132d.getAndIncrement() == 0) {
            da.j.b(this.f30129a, null, null, new b(this, null), 3, null);
        }
    }
}
