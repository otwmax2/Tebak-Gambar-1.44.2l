package fa;

import da.t0;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.r;

/* JADX INFO: compiled from: AbstractChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i<E> extends r implements p<E> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Throwable f29638r;

    public i(Throwable th) {
        this.f29638r = th;
    }

    @Override // fa.r
    public void C() {
    }

    @Override // fa.r
    public e0 E(r.b bVar) {
        return da.o.f28842a;
    }

    @Override // fa.p
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public i<E> d() {
        return this;
    }

    @Override // fa.r
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public i<E> D() {
        return this;
    }

    public final Throwable I() {
        Throwable th = this.f29638r;
        return th == null ? new j("Channel was closed") : th;
    }

    public final Throwable J() {
        Throwable th = this.f29638r;
        return th == null ? new k("Channel was closed") : th;
    }

    @Override // fa.p
    public void g(E e10) {
    }

    @Override // fa.p
    public e0 j(E e10, r.b bVar) {
        return da.o.f28842a;
    }

    @Override // kotlinx.coroutines.internal.r
    public String toString() {
        return "Closed@" + t0.b(this) + '[' + this.f29638r + ']';
    }
}
