package da;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f28773b = AtomicIntegerFieldUpdater.newUpdater(a0.class, "_handled");
    private volatile /* synthetic */ int _handled;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f28774a;

    public a0(Throwable th, boolean z10) {
        this.f28774a = th;
        this._handled = z10 ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f28773b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return t0.a(this) + '[' + this.f28774a + ']';
    }

    public /* synthetic */ a0(Throwable th, boolean z10, int i10, t9.g gVar) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
