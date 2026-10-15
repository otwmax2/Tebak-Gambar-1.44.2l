package k0;

import h9.o;
import h9.t;
import m9.k;
import s9.p;

/* JADX INFO: compiled from: Preferences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: compiled from: Preferences.kt */
    @m9.f(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {329}, m = "invokeSuspend")
    static final class a extends k implements p<d, k9.d<? super d>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f31287s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f31288t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ p<k0.a, k9.d<? super t>, Object> f31289u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(p<? super k0.a, ? super k9.d<? super t>, ? extends Object> pVar, k9.d<? super a> dVar) {
            super(2, dVar);
            this.f31289u = pVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            a aVar = new a(this.f31289u, dVar);
            aVar.f31288t = obj;
            return aVar;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f31287s;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k0.a aVar = (k0.a) this.f31288t;
                o.b(obj);
                return aVar;
            }
            o.b(obj);
            k0.a aVarC = ((d) this.f31288t).c();
            p<k0.a, k9.d<? super t>, Object> pVar = this.f31289u;
            this.f31288t = aVarC;
            this.f31287s = 1;
            return pVar.invoke(aVarC, this) == objC ? objC : aVarC;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(d dVar, k9.d<? super d> dVar2) {
            return ((a) d(dVar, dVar2)).i(t.f30301a);
        }
    }

    public static final Object a(h0.f<d> fVar, p<? super k0.a, ? super k9.d<? super t>, ? extends Object> pVar, k9.d<? super d> dVar) {
        return fVar.a(new a(pVar, null), dVar);
    }
}
