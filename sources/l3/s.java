package l3;

/* JADX INFO: compiled from: TransportImpl.java */
/* JADX INFO: loaded from: classes.dex */
final class s<T> implements j3.f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f31952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j3.b f31954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j3.e<T, byte[]> f31955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t f31956e;

    s(p pVar, String str, j3.b bVar, j3.e<T, byte[]> eVar, t tVar) {
        this.f31952a = pVar;
        this.f31953b = str;
        this.f31954c = bVar;
        this.f31955d = eVar;
        this.f31956e = tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Exception exc) {
    }

    @Override // j3.f
    public void a(j3.c<T> cVar, j3.h hVar) {
        this.f31956e.a(o.a().e(this.f31952a).c(cVar).f(this.f31953b).d(this.f31955d).b(this.f31954c).a(), hVar);
    }

    @Override // j3.f
    public void b(j3.c<T> cVar) {
        a(cVar, new j3.h() { // from class: l3.r
            @Override // j3.h
            public final void a(Exception exc) {
                s.e(exc);
            }
        });
    }

    p d() {
        return this.f31952a;
    }
}
