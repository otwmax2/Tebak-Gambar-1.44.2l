package n5;

import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import k6.a;
import s5.f0;
import s5.g0;

/* JADX INFO: compiled from: CrashlyticsNativeComponentDeferredProxy.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d implements n5.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final h f32452c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k6.a<n5.a> f32453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference<n5.a> f32454b = new AtomicReference<>(null);

    /* JADX INFO: compiled from: CrashlyticsNativeComponentDeferredProxy.java */
    private static final class b implements h {
        private b() {
        }

        @Override // n5.h
        public File a() {
            return null;
        }

        @Override // n5.h
        public File b() {
            return null;
        }

        @Override // n5.h
        public File c() {
            return null;
        }

        @Override // n5.h
        public f0.a d() {
            return null;
        }

        @Override // n5.h
        public File e() {
            return null;
        }

        @Override // n5.h
        public File f() {
            return null;
        }

        @Override // n5.h
        public File g() {
            return null;
        }
    }

    public d(k6.a<n5.a> aVar) {
        this.f32453a = aVar;
        aVar.a(new a.InterfaceC0188a() { // from class: n5.c
            @Override // k6.a.InterfaceC0188a
            public final void a(k6.b bVar) {
                this.f32451a.g(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(k6.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.f32454b.set((n5.a) bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, String str2, long j10, g0 g0Var, k6.b bVar) {
        ((n5.a) bVar.get()).d(str, str2, j10, g0Var);
    }

    @Override // n5.a
    public h a(String str) {
        n5.a aVar = this.f32454b.get();
        return aVar == null ? f32452c : aVar.a(str);
    }

    @Override // n5.a
    public boolean b() {
        n5.a aVar = this.f32454b.get();
        return aVar != null && aVar.b();
    }

    @Override // n5.a
    public boolean c(String str) {
        n5.a aVar = this.f32454b.get();
        return aVar != null && aVar.c(str);
    }

    @Override // n5.a
    public void d(final String str, final String str2, final long j10, final g0 g0Var) {
        g.f().i("Deferring native open session: " + str);
        this.f32453a.a(new a.InterfaceC0188a() { // from class: n5.b
            @Override // k6.a.InterfaceC0188a
            public final void a(k6.b bVar) {
                d.h(str, str2, j10, g0Var, bVar);
            }
        });
    }
}
