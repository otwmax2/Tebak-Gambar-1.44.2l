package kotlinx.coroutines.flow;

import h9.t;
import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: StateFlow.kt */
/* JADX INFO: loaded from: classes2.dex */
final class m<T> extends ga.b<o> implements k<T>, b {
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f31695r;

    /* JADX INFO: compiled from: StateFlow.kt */
    @m9.f(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {386, 398, 403}, m = "collect")
    static final class a extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f31696r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f31697s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f31698t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        Object f31699u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Object f31700v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        /* synthetic */ Object f31701w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        final /* synthetic */ m<T> f31702x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f31703y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m<T> mVar, k9.d<? super a> dVar) {
            super(dVar);
            this.f31702x = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f31701w = obj;
            this.f31703y |= Integer.MIN_VALUE;
            return this.f31702x.a(null, this);
        }
    }

    public m(Object obj) {
        this._state = obj;
    }

    private final boolean j(Object obj, Object obj2) {
        int i10;
        o[] oVarArrG;
        g();
        synchronized (this) {
            Object obj3 = this._state;
            if (obj != null && !t9.m.a(obj3, obj)) {
                return false;
            }
            if (t9.m.a(obj3, obj2)) {
                return true;
            }
            this._state = obj2;
            int i11 = this.f31695r;
            if ((i11 & 1) != 0) {
                this.f31695r = i11 + 2;
                return true;
            }
            int i12 = i11 + 1;
            this.f31695r = i12;
            o[] oVarArrG2 = g();
            t tVar = t.f30301a;
            while (true) {
                o[] oVarArr = oVarArrG2;
                if (oVarArr != null) {
                    for (o oVar : oVarArr) {
                        if (oVar != null) {
                            oVar.f();
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.f31695r;
                    if (i10 == i12) {
                        this.f31695r = i12 + 1;
                        return true;
                    }
                    oVarArrG = g();
                    t tVar2 = t.f30301a;
                }
                oVarArrG2 = oVarArrG;
                i12 = i10;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:38:0x00af, B:40:0x00b5], limit reached: 57 */
    /* JADX WARN: Path cross not found for [B:40:0x00b5, B:38:0x00af], limit reached: 57 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:36:0x00aa, B:38:0x00af, B:48:0x00d0, B:50:0x00d6, B:40:0x00b5, B:44:0x00bc, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00af A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:36:0x00aa, B:38:0x00af, B:48:0x00d0, B:50:0x00d6, B:40:0x00b5, B:44:0x00bc, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ce A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d6 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:14:0x003e, B:34:0x00a6, B:36:0x00aa, B:38:0x00af, B:48:0x00d0, B:50:0x00d6, B:40:0x00b5, B:44:0x00bc, B:19:0x005c, B:22:0x006f, B:33:0x0097), top: B:58:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [ga.d] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.flow.o] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, kotlinx.coroutines.flow.c] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00d4 -> B:34:0x00a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00e6 -> B:34:0x00a6). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(kotlinx.coroutines.flow.c<? super T> r11, k9.d<?> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m.a(kotlinx.coroutines.flow.c, k9.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.c
    public Object c(T t10, k9.d<? super t> dVar) {
        setValue(t10);
        return t.f30301a;
    }

    @Override // kotlinx.coroutines.flow.k
    public T getValue() {
        e0 e0Var = ga.h.f30046a;
        T t10 = (T) this._state;
        if (t10 == e0Var) {
            return null;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ga.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public o d() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ga.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public o[] e(int i10) {
        return new o[i10];
    }

    @Override // kotlinx.coroutines.flow.k
    public void setValue(T t10) {
        if (t10 == null) {
            t10 = (T) ga.h.f30046a;
        }
        j(null, t10);
    }
}
