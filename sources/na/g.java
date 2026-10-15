package na;

import ja.a0;
import ja.c0;
import ja.p;
import ja.u;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: RealInterceptorChain.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g implements u.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<u> f32521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ma.g f32522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f32523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ma.c f32524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a0 f32526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ja.e f32527g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final p f32528h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f32529i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f32530j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f32531k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f32532l;

    public g(List<u> list, ma.g gVar, c cVar, ma.c cVar2, int i10, a0 a0Var, ja.e eVar, p pVar, int i11, int i12, int i13) {
        this.f32521a = list;
        this.f32524d = cVar2;
        this.f32522b = gVar;
        this.f32523c = cVar;
        this.f32525e = i10;
        this.f32526f = a0Var;
        this.f32527g = eVar;
        this.f32528h = pVar;
        this.f32529i = i11;
        this.f32530j = i12;
        this.f32531k = i13;
    }

    @Override // ja.u.a
    public int a() {
        return this.f32530j;
    }

    @Override // ja.u.a
    public int b() {
        return this.f32531k;
    }

    @Override // ja.u.a
    public ja.i c() {
        return this.f32524d;
    }

    @Override // ja.u.a
    public int d() {
        return this.f32529i;
    }

    @Override // ja.u.a
    public c0 e(a0 a0Var) throws IOException {
        return j(a0Var, this.f32522b, this.f32523c, this.f32524d);
    }

    @Override // ja.u.a
    public a0 f() {
        return this.f32526f;
    }

    public ja.e g() {
        return this.f32527g;
    }

    public p h() {
        return this.f32528h;
    }

    public c i() {
        return this.f32523c;
    }

    public c0 j(a0 a0Var, ma.g gVar, c cVar, ma.c cVar2) throws IOException {
        if (this.f32525e >= this.f32521a.size()) {
            throw new AssertionError();
        }
        this.f32532l++;
        if (this.f32523c != null && !this.f32524d.t(a0Var.h())) {
            throw new IllegalStateException("network interceptor " + this.f32521a.get(this.f32525e - 1) + " must retain the same host and port");
        }
        if (this.f32523c != null && this.f32532l > 1) {
            throw new IllegalStateException("network interceptor " + this.f32521a.get(this.f32525e - 1) + " must call proceed() exactly once");
        }
        g gVar2 = new g(this.f32521a, gVar, cVar, cVar2, this.f32525e + 1, a0Var, this.f32527g, this.f32528h, this.f32529i, this.f32530j, this.f32531k);
        u uVar = this.f32521a.get(this.f32525e);
        c0 c0VarIntercept = uVar.intercept(gVar2);
        if (cVar != null && this.f32525e + 1 < this.f32521a.size() && gVar2.f32532l != 1) {
            throw new IllegalStateException("network interceptor " + uVar + " must call proceed() exactly once");
        }
        if (c0VarIntercept == null) {
            throw new NullPointerException("interceptor " + uVar + " returned null");
        }
        if (c0VarIntercept.b() != null) {
            return c0VarIntercept;
        }
        throw new IllegalStateException("interceptor " + uVar + " returned a response with no body");
    }

    public ma.g k() {
        return this.f32522b;
    }
}
