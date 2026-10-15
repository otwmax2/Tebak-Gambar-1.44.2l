package kotlinx.coroutines.internal;

import da.r2;

/* JADX INFO: compiled from: ThreadContext.kt */
/* JADX INFO: loaded from: classes2.dex */
final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k9.g f31755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f31756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r2<Object>[] f31757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f31758d;

    public l0(k9.g gVar, int i10) {
        this.f31755a = gVar;
        this.f31756b = new Object[i10];
        this.f31757c = new r2[i10];
    }

    public final void a(r2<?> r2Var, Object obj) {
        Object[] objArr = this.f31756b;
        int i10 = this.f31758d;
        objArr[i10] = obj;
        r2<Object>[] r2VarArr = this.f31757c;
        this.f31758d = i10 + 1;
        r2VarArr[i10] = r2Var;
    }

    public final void b(k9.g gVar) {
        int length = this.f31757c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            r2<Object> r2Var = this.f31757c[length];
            t9.m.b(r2Var);
            r2Var.C(gVar, this.f31756b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
