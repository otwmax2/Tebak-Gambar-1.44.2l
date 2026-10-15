package k0;

import h9.o;
import h9.t;
import m9.k;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: PreferenceDataStoreFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements h0.f<d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0.f<d> f31278a;

    /* JADX INFO: compiled from: PreferenceDataStoreFactory.kt */
    @m9.f(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {85}, m = "invokeSuspend")
    static final class a extends k implements p<d, k9.d<? super d>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f31279s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f31280t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ p<d, k9.d<? super d>, Object> f31281u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(p<? super d, ? super k9.d<? super d>, ? extends Object> pVar, k9.d<? super a> dVar) {
            super(2, dVar);
            this.f31281u = pVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            a aVar = new a(this.f31281u, dVar);
            aVar.f31280t = obj;
            return aVar;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f31279s;
            if (i10 == 0) {
                o.b(obj);
                d dVar = (d) this.f31280t;
                p<d, k9.d<? super d>, Object> pVar = this.f31281u;
                this.f31279s = 1;
                obj = pVar.invoke(dVar, this);
                if (obj == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                o.b(obj);
            }
            d dVar2 = (d) obj;
            ((k0.a) dVar2).f();
            return dVar2;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(d dVar, k9.d<? super d> dVar2) {
            return ((a) d(dVar, dVar2)).i(t.f30301a);
        }
    }

    public b(h0.f<d> fVar) {
        m.e(fVar, "delegate");
        this.f31278a = fVar;
    }

    @Override // h0.f
    public Object a(p<? super d, ? super k9.d<? super d>, ? extends Object> pVar, k9.d<? super d> dVar) {
        return this.f31278a.a(new a(pVar, null), dVar);
    }

    @Override // h0.f
    public kotlinx.coroutines.flow.b<d> b() {
        return this.f31278a.b();
    }
}
