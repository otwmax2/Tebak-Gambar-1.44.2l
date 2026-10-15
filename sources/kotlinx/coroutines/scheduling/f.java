package kotlinx.coroutines.scheduling;

import da.n1;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public class f extends n1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f31824r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f31825s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f31826t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final String f31827u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f31828v = x();

    public f(int i10, int i11, long j10, String str) {
        this.f31824r = i10;
        this.f31825s = i11;
        this.f31826t = j10;
        this.f31827u = str;
    }

    private final a x() {
        return new a(this.f31824r, this.f31825s, this.f31826t, this.f31827u);
    }

    @Override // da.i0
    public void m(k9.g gVar, Runnable runnable) {
        a.i(this.f31828v, runnable, null, false, 6, null);
    }

    public final void z(Runnable runnable, i iVar, boolean z10) {
        this.f31828v.h(runnable, iVar, z10);
    }
}
