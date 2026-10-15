package u2;

import u2.c;

/* JADX INFO: compiled from: NoAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class e<R> implements c<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e<?> f35586a = new e<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d<?> f35587b = new a();

    /* JADX INFO: compiled from: NoAnimation.java */
    public static class a<R> implements d<R> {
        @Override // u2.d
        public c<R> a(boolean z10, boolean z11) {
            return e.f35586a;
        }
    }

    public static <R> c<R> c() {
        return f35586a;
    }

    public static <R> d<R> d() {
        return (d<R>) f35587b;
    }

    @Override // u2.c
    public boolean a(Object obj, c.a aVar) {
        return false;
    }
}
