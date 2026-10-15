package androidx.room;

import androidx.room.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: QueryInterceptorOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
final class a0 implements b1.h, j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b1.h f4024o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final h0.f f4025p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Executor f4026q;

    a0(b1.h hVar, h0.f fVar, Executor executor) {
        this.f4024o = hVar;
        this.f4025p = fVar;
        this.f4026q = executor;
    }

    @Override // b1.h
    public b1.g K1() {
        return new z(this.f4024o.K1(), this.f4025p, this.f4026q);
    }

    @Override // androidx.room.j
    public b1.h b() {
        return this.f4024o;
    }

    @Override // b1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4024o.close();
    }

    @Override // b1.h
    public String getDatabaseName() {
        return this.f4024o.getDatabaseName();
    }

    @Override // b1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f4024o.setWriteAheadLoggingEnabled(z10);
    }
}
