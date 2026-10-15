package androidx.room;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.room.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: QueryInterceptorDatabase.java */
/* JADX INFO: loaded from: classes.dex */
final class z implements b1.g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b1.g f4211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final h0.f f4212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f4213q;

    z(b1.g gVar, h0.f fVar, Executor executor) {
        this.f4211o = gVar;
        this.f4212p = fVar;
        this.f4213q = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.f4212p.a("BEGIN EXCLUSIVE TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.f4212p.a("BEGIN DEFERRED TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.f4212p.a("END TRANSACTION", Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(String str) {
        this.f4212p.a(str, new ArrayList(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(String str, List list) {
        this.f4212p.a(str, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(String str) {
        this.f4212p.a(str, Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(b1.j jVar, c0 c0Var) {
        this.f4212p.a(jVar.b(), c0Var.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(b1.j jVar, c0 c0Var) {
        this.f4212p.a(jVar.b(), c0Var.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        this.f4212p.a("TRANSACTION SUCCESSFUL", Collections.emptyList());
    }

    @Override // b1.g
    public String L2() {
        return this.f4211o.L2();
    }

    @Override // b1.g
    public boolean O2() {
        return this.f4211o.O2();
    }

    @Override // b1.g
    public Cursor P1(final String str) {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.x
            @Override // java.lang.Runnable
            public final void run() {
                this.f4206o.p(str);
            }
        });
        return this.f4211o.P1(str);
    }

    @Override // b1.g
    public void V() {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f4197o.k();
            }
        });
        this.f4211o.V();
    }

    @Override // b1.g
    public void X1() {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f4194o.m();
            }
        });
        this.f4211o.X1();
    }

    @Override // b1.g
    public Cursor c1(final b1.j jVar) {
        final c0 c0Var = new c0();
        jVar.c(c0Var);
        this.f4213q.execute(new Runnable() { // from class: androidx.room.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f4198o.q(jVar, c0Var);
            }
        });
        return this.f4211o.c1(jVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4211o.close();
    }

    @Override // b1.g
    public List<Pair<String, String>> d0() {
        return this.f4211o.d0();
    }

    @Override // b1.g
    public void execSQL(final String str) throws SQLException {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f4204o.n(str);
            }
        });
        this.f4211o.execSQL(str);
    }

    @Override // b1.g
    public boolean h3() {
        return this.f4211o.h3();
    }

    @Override // b1.g
    public boolean isOpen() {
        return this.f4211o.isOpen();
    }

    @Override // b1.g
    public Cursor s0(final b1.j jVar, CancellationSignal cancellationSignal) {
        final c0 c0Var = new c0();
        jVar.c(c0Var);
        this.f4213q.execute(new Runnable() { // from class: androidx.room.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f4201o.r(jVar, c0Var);
            }
        });
        return this.f4211o.c1(jVar);
    }

    @Override // b1.g
    public void u1() {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f4196o.s();
            }
        });
        this.f4211o.u1();
    }

    @Override // b1.g
    public b1.k w0(String str) {
        return new f0(this.f4211o.w0(str), this.f4212p, str, this.f4213q);
    }

    @Override // b1.g
    public void x1(final String str, Object[] objArr) throws SQLException {
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(objArr));
        this.f4213q.execute(new Runnable() { // from class: androidx.room.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f4208o.o(str, arrayList);
            }
        });
        this.f4211o.x1(str, arrayList.toArray());
    }

    @Override // b1.g
    public void z1() {
        this.f4213q.execute(new Runnable() { // from class: androidx.room.r
            @Override // java.lang.Runnable
            public final void run() {
                this.f4195o.l();
            }
        });
        this.f4211o.z1();
    }
}
