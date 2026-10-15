package androidx.room;

import androidx.room.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: QueryInterceptorStatement.java */
/* JADX INFO: loaded from: classes.dex */
final class f0 implements b1.k {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b1.k f4047o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final h0.f f4048p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f4049q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final List<Object> f4050r = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Executor f4051s;

    f0(b1.k kVar, h0.f fVar, String str, Executor executor) {
        this.f4047o = kVar;
        this.f4048p = fVar;
        this.f4049q = str;
        this.f4051s = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f4048p.a(this.f4049q, this.f4050r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f4048p.a(this.f4049q, this.f4050r);
    }

    private void f(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.f4050r.size()) {
            for (int size = this.f4050r.size(); size <= i11; size++) {
                this.f4050r.add(null);
            }
        }
        this.f4050r.set(i11, obj);
    }

    @Override // b1.i
    public void D1(int i10, byte[] bArr) {
        f(i10, bArr);
        this.f4047o.D1(i10, bArr);
    }

    @Override // b1.k
    public long I3() {
        this.f4051s.execute(new Runnable() { // from class: androidx.room.d0
            @Override // java.lang.Runnable
            public final void run() {
                this.f4035o.d();
            }
        });
        return this.f4047o.I3();
    }

    @Override // b1.i
    public void L0(int i10, double d10) {
        f(i10, Double.valueOf(d10));
        this.f4047o.L0(i10, d10);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4047o.close();
    }

    @Override // b1.i
    public void k0(int i10, String str) {
        f(i10, str);
        this.f4047o.k0(i10, str);
    }

    @Override // b1.i
    public void s1(int i10, long j10) {
        f(i10, Long.valueOf(j10));
        this.f4047o.s1(i10, j10);
    }

    @Override // b1.k
    public int u0() {
        this.f4051s.execute(new Runnable() { // from class: androidx.room.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.f4037o.e();
            }
        });
        return this.f4047o.u0();
    }

    @Override // b1.i
    public void z2(int i10) {
        f(i10, this.f4050r.toArray());
        this.f4047o.z2(i10);
    }
}
