package q5;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: CrashlyticsUncaughtExceptionHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class v implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f34032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x5.i f34033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f34034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n5.a f34035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f34036e = new AtomicBoolean(false);

    /* JADX INFO: compiled from: CrashlyticsUncaughtExceptionHandler.java */
    interface a {
        void a(x5.i iVar, Thread thread, Throwable th);
    }

    public v(a aVar, x5.i iVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, n5.a aVar2) {
        this.f34032a = aVar;
        this.f34033b = iVar;
        this.f34034c = uncaughtExceptionHandler;
        this.f34035d = aVar2;
    }

    private boolean b(Thread thread, Throwable th) {
        if (thread == null) {
            n5.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        }
        if (th == null) {
            n5.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        }
        if (!this.f34035d.b()) {
            return true;
        }
        n5.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
        return false;
    }

    boolean a() {
        return this.f34036e.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Thread$UncaughtExceptionHandler] */
    /* JADX WARN: Type inference failed for: r2v3, types: [n5.g] */
    /* JADX WARN: Type inference failed for: r3v1, types: [n5.g] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Thread] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.concurrent.atomic.AtomicBoolean] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        ?? r02 = "Completed exception processing. Invoking default exception handler.";
        this.f34036e.set(true);
        try {
            try {
                if (b(thread, th)) {
                    this.f34032a.a(this.f34033b, thread, th);
                } else {
                    n5.g.f().b("Uncaught exception will not be recorded by Crashlytics.");
                }
            } catch (Exception e10) {
                n5.g.f().e("An error occurred in the uncaught exception handler", e10);
            }
        } finally {
            n5.g.f().b(r02);
            this.f34034c.uncaughtException(thread, th);
            this.f34036e.set(false);
        }
    }
}
