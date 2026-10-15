package ga;

import da.x1;
import k9.g;
import kotlinx.coroutines.internal.c0;
import s9.p;
import t9.n;

/* JADX INFO: compiled from: SafeCollector.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: compiled from: SafeCollector.common.kt */
    static final class a extends n implements p<Integer, g.b, Integer> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ i<?> f30057o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(i<?> iVar) {
            super(2);
            this.f30057o = iVar;
        }

        public final Integer c(int i10, g.b bVar) {
            g.c<?> key = bVar.getKey();
            g.b bVarB = this.f30057o.f30050s.b(key);
            if (key != x1.f28875m) {
                return Integer.valueOf(bVar != bVarB ? Integer.MIN_VALUE : i10 + 1);
            }
            x1 x1Var = (x1) bVarB;
            x1 x1VarB = k.b((x1) bVar, x1Var);
            if (x1VarB == x1Var) {
                if (x1Var != null) {
                    i10++;
                }
                return Integer.valueOf(i10);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + x1VarB + ", expected child of " + x1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, g.b bVar) {
            return c(num.intValue(), bVar);
        }
    }

    public static final void a(i<?> iVar, k9.g gVar) {
        if (((Number) gVar.s(0, new a(iVar))).intValue() == iVar.f30051t) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + iVar.f30050s + ",\n\t\tbut emission happened in " + gVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final x1 b(x1 x1Var, x1 x1Var2) {
        while (x1Var != null) {
            if (x1Var == x1Var2 || !(x1Var instanceof c0)) {
                return x1Var;
            }
            x1Var = ((c0) x1Var).N0();
        }
        return null;
    }
}
