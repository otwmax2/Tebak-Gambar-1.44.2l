package q5;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: CrashlyticsCore.java */
/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f33998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b5.g f33999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f34000c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s f34003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s f34004g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f34005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private p f34006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f34007j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final v5.f f34008k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p5.b f34009l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final o5.a f34010m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ExecutorService f34011n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n f34012o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final m f34013p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final n5.a f34014q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final n5.k f34015r;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f34002e = System.currentTimeMillis();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g0 f34001d = new g0();

    /* JADX INFO: compiled from: CrashlyticsCore.java */
    class a implements Callable<Task<Void>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ x5.i f34016a;

        a(x5.i iVar) {
            this.f34016a = iVar;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> call() throws Exception {
            return r.this.f(this.f34016a);
        }
    }

    /* JADX INFO: compiled from: CrashlyticsCore.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ x5.i f34018o;

        b(x5.i iVar) {
            this.f34018o = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.f(this.f34018o);
        }
    }

    /* JADX INFO: compiled from: CrashlyticsCore.java */
    class c implements Callable<Boolean> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            try {
                boolean zD = r.this.f34003f.d();
                if (!zD) {
                    n5.g.f().k("Initialization marker file was not properly removed.");
                }
                return Boolean.valueOf(zD);
            } catch (Exception e10) {
                n5.g.f().e("Problem encountered deleting Crashlytics initialization marker.", e10);
                return Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: compiled from: CrashlyticsCore.java */
    class d implements Callable<Boolean> {
        d() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(r.this.f34006i.s());
        }
    }

    public r(b5.g gVar, b0 b0Var, n5.a aVar, x xVar, p5.b bVar, o5.a aVar2, v5.f fVar, ExecutorService executorService, m mVar, n5.k kVar) {
        this.f33999b = gVar;
        this.f34000c = xVar;
        this.f33998a = gVar.l();
        this.f34007j = b0Var;
        this.f34014q = aVar;
        this.f34009l = bVar;
        this.f34010m = aVar2;
        this.f34011n = executorService;
        this.f34008k = fVar;
        this.f34012o = new n(executorService);
        this.f34013p = mVar;
        this.f34015r = kVar;
    }

    private void d() {
        try {
            this.f34005h = Boolean.TRUE.equals((Boolean) q0.f(this.f34012o.h(new d())));
        } catch (Exception unused) {
            this.f34005h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> f(x5.i iVar) {
        n();
        try {
            this.f34009l.a(new p5.a() { // from class: q5.q
                @Override // p5.a
                public final void a(String str) {
                    this.f33996a.k(str);
                }
            });
            this.f34006i.S();
            if (!iVar.b().f36270b.f36277a) {
                n5.g.f().b("Collection of crash reports disabled in Crashlytics settings.");
                return Tasks.d(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f34006i.z(iVar)) {
                n5.g.f().k("Previous sessions could not be finalized.");
            }
            return this.f34006i.W(iVar.a());
        } catch (Exception e10) {
            n5.g.f().e("Crashlytics encountered a problem during asynchronous initialization.", e10);
            return Tasks.d(e10);
        } finally {
            m();
        }
    }

    private void h(x5.i iVar) {
        Future<?> futureSubmit = this.f34011n.submit(new b(iVar));
        n5.g.f().b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            n5.g.f().e("Crashlytics was interrupted during initialization.", e10);
        } catch (ExecutionException e11) {
            n5.g.f().e("Crashlytics encountered a problem during initialization.", e11);
        } catch (TimeoutException e12) {
            n5.g.f().e("Crashlytics timed out during initialization.", e12);
        }
    }

    public static String i() {
        return "18.6.0";
    }

    static boolean j(String str, boolean z10) {
        if (!z10) {
            n5.g.f().i("Configured not to require a build ID.");
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".     |  | ");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".   \\ |  | /");
        Log.e("FirebaseCrashlytics", ".    \\    /");
        Log.e("FirebaseCrashlytics", ".     \\  /");
        Log.e("FirebaseCrashlytics", ".      \\/");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".      /\\");
        Log.e("FirebaseCrashlytics", ".     /  \\");
        Log.e("FirebaseCrashlytics", ".    /    \\");
        Log.e("FirebaseCrashlytics", ".   / |  | \\");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".");
        return false;
    }

    boolean e() {
        return this.f34003f.c();
    }

    public Task<Void> g(x5.i iVar) {
        return q0.h(this.f34011n, new a(iVar));
    }

    public void k(String str) {
        this.f34006i.a0(System.currentTimeMillis() - this.f34002e, str);
    }

    public void l(Throwable th) {
        this.f34006i.Z(Thread.currentThread(), th);
    }

    void m() {
        this.f34012o.h(new c());
    }

    void n() {
        this.f34012o.b();
        this.f34003f.a();
        n5.g.f().i("Initialization marker file was created.");
    }

    public boolean o(q5.a aVar, x5.i iVar) {
        if (!j(aVar.f33864b, i.i(this.f33998a, "com.crashlytics.RequireBuildId", true))) {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        }
        String string = new h(this.f34007j).toString();
        try {
            this.f34004g = new s("crash_marker", this.f34008k);
            this.f34003f = new s("initialization_marker", this.f34008k);
            r5.m mVar = new r5.m(string, this.f34008k, this.f34012o);
            r5.e eVar = new r5.e(this.f34008k);
            y5.a aVar2 = new y5.a(1024, new y5.c(10));
            this.f34015r.c(mVar);
            this.f34006i = new p(this.f33998a, this.f34012o, this.f34007j, this.f34000c, this.f34008k, this.f34004g, aVar, mVar, eVar, j0.h(this.f33998a, this.f34007j, this.f34008k, aVar, eVar, mVar, aVar2, iVar, this.f34001d, this.f34013p), this.f34014q, this.f34010m, this.f34013p);
            boolean zE = e();
            d();
            this.f34006i.x(string, Thread.getDefaultUncaughtExceptionHandler(), iVar);
            if (!zE || !i.d(this.f33998a)) {
                n5.g.f().b("Successfully configured exception handler.");
                return true;
            }
            n5.g.f().b("Crashlytics did not finish previous background initialization. Initializing synchronously.");
            h(iVar);
            return false;
        } catch (Exception e10) {
            n5.g.f().e("Crashlytics was not started due to an exception during initialization", e10);
            this.f34006i = null;
            return false;
        }
    }

    public void p(String str, String str2) {
        this.f34006i.T(str, str2);
    }

    public void q(String str) {
        this.f34006i.V(str);
    }
}
