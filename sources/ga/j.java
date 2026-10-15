package ga;

import h9.t;
import s9.q;
import t9.c0;

/* JADX INFO: compiled from: SafeCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q<kotlinx.coroutines.flow.c<Object>, Object, k9.d<? super t>, Object> f30055a = (q) c0.b(a.f30056x, 3);

    /* JADX INFO: compiled from: SafeCollector.kt */
    /* synthetic */ class a extends t9.j implements q<kotlinx.coroutines.flow.c<? super Object>, Object, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final a f30056x = new a();

        a() {
            super(3, kotlinx.coroutines.flow.c.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // s9.q
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object b(kotlinx.coroutines.flow.c<Object> cVar, Object obj, k9.d<? super t> dVar) {
            return cVar.c(obj, dVar);
        }
    }
}
