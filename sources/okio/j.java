package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ForwardingTimeout.java */
/* JADX INFO: loaded from: classes2.dex */
public class j extends v {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v f33367e;

    public j(v vVar) {
        if (vVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f33367e = vVar;
    }

    @Override // okio.v
    public v a() {
        return this.f33367e.a();
    }

    @Override // okio.v
    public v b() {
        return this.f33367e.b();
    }

    @Override // okio.v
    public long c() {
        return this.f33367e.c();
    }

    @Override // okio.v
    public v d(long j10) {
        return this.f33367e.d(j10);
    }

    @Override // okio.v
    public boolean e() {
        return this.f33367e.e();
    }

    @Override // okio.v
    public void f() throws IOException {
        this.f33367e.f();
    }

    @Override // okio.v
    public v g(long j10, TimeUnit timeUnit) {
        return this.f33367e.g(j10, timeUnit);
    }

    public final v i() {
        return this.f33367e;
    }

    public final j j(v vVar) {
        if (vVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f33367e = vVar;
        return this;
    }
}
