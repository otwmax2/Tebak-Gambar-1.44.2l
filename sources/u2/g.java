package u2;

import u2.f;

/* JADX INFO: compiled from: ViewAnimationFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class g<R> implements d<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f.a f35589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c<R> f35590b;

    g(f.a aVar) {
        this.f35589a = aVar;
    }

    @Override // u2.d
    public c<R> a(boolean z10, boolean z11) {
        if (z10 || !z11) {
            return e.c();
        }
        if (this.f35590b == null) {
            this.f35590b = new f(this.f35589a);
        }
        return this.f35590b;
    }
}
