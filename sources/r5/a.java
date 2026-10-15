package r5;

import java.io.IOException;

/* JADX INFO: compiled from: AutoRolloutAssignmentEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements e6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e6.a f34245a = new a();

    /* JADX INFO: renamed from: r5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoRolloutAssignmentEncoder.java */
    private static final class C0226a implements d6.d<i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0226a f34246a = new C0226a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34247b = d6.c.d("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34248c = d6.c.d("parameterKey");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34249d = d6.c.d("parameterValue");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34250e = d6.c.d("variantId");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34251f = d6.c.d("templateVersion");

        private C0226a() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(i iVar, d6.e eVar) throws IOException {
            eVar.e(f34247b, iVar.e());
            eVar.e(f34248c, iVar.c());
            eVar.e(f34249d, iVar.d());
            eVar.e(f34250e, iVar.g());
            eVar.c(f34251f, iVar.f());
        }
    }

    private a() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        C0226a c0226a = C0226a.f34246a;
        bVar.a(i.class, c0226a);
        bVar.a(b.class, c0226a);
    }
}
