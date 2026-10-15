package androidx.room;

import androidx.room.h0;
import b1.h;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: QueryInterceptorOpenHelperFactory.java */
/* JADX INFO: loaded from: classes.dex */
final class b0 implements h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h.c f4028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0.f f4029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f4030c;

    b0(h.c cVar, h0.f fVar, Executor executor) {
        this.f4028a = cVar;
        this.f4029b = fVar;
        this.f4030c = executor;
    }

    @Override // b1.h.c
    public b1.h a(h.b bVar) {
        return new a0(this.f4028a.a(bVar), this.f4029b, this.f4030c);
    }
}
