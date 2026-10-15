package l9;

import h9.o;
import h9.t;
import k9.g;
import m9.h;
import m9.j;
import s9.p;
import t9.c0;
import t9.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: IntrinsicsJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    public static final class a extends j {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f32056p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ p f32057q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ Object f32058r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(k9.d dVar, p pVar, Object obj) {
            super(dVar);
            this.f32057q = pVar;
            this.f32058r = obj;
            m.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // m9.a
        protected Object i(Object obj) throws Throwable {
            int i10 = this.f32056p;
            if (i10 == 0) {
                this.f32056p = 1;
                o.b(obj);
                m.c(this.f32057q, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
                return ((p) c0.b(this.f32057q, 2)).invoke(this.f32058r, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f32056p = 2;
            o.b(obj);
            return obj;
        }
    }

    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    public static final class b extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f32059r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ p f32060s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ Object f32061t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(k9.d dVar, g gVar, p pVar, Object obj) {
            super(dVar, gVar);
            this.f32060s = pVar;
            this.f32061t = obj;
            m.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // m9.a
        protected Object i(Object obj) throws Throwable {
            int i10 = this.f32059r;
            if (i10 == 0) {
                this.f32059r = 1;
                o.b(obj);
                m.c(this.f32060s, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
                return ((p) c0.b(this.f32060s, 2)).invoke(this.f32061t, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f32059r = 2;
            o.b(obj);
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <R, T> k9.d<t> a(p<? super R, ? super k9.d<? super T>, ? extends Object> pVar, R r10, k9.d<? super T> dVar) {
        m.e(pVar, "<this>");
        m.e(dVar, "completion");
        k9.d<?> dVarA = h.a(dVar);
        if (pVar instanceof m9.a) {
            return ((m9.a) pVar).d(r10, dVarA);
        }
        g context = dVarA.getContext();
        return context == k9.h.f31635o ? new a(dVarA, pVar, r10) : new b(dVarA, context, pVar, r10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> k9.d<T> b(k9.d<? super T> dVar) {
        k9.d<T> dVar2;
        m.e(dVar, "<this>");
        m9.d dVar3 = dVar instanceof m9.d ? (m9.d) dVar : null;
        return (dVar3 == null || (dVar2 = (k9.d<T>) dVar3.k()) == null) ? dVar : dVar2;
    }
}
