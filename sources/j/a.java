package j;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ArchTaskExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f30554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f30555d = new ExecutorC0179a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f30556e = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f30557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f30558b;

    /* JADX INFO: renamed from: j.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArchTaskExecutor.java */
    static class ExecutorC0179a implements Executor {
        ExecutorC0179a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.e().c(runnable);
        }
    }

    /* JADX INFO: compiled from: ArchTaskExecutor.java */
    static class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a.e().a(runnable);
        }
    }

    private a() {
        j.b bVar = new j.b();
        this.f30558b = bVar;
        this.f30557a = bVar;
    }

    public static Executor d() {
        return f30556e;
    }

    public static a e() {
        if (f30554c != null) {
            return f30554c;
        }
        synchronized (a.class) {
            if (f30554c == null) {
                f30554c = new a();
            }
        }
        return f30554c;
    }

    @Override // j.c
    public void a(Runnable runnable) {
        this.f30557a.a(runnable);
    }

    @Override // j.c
    public boolean b() {
        return this.f30557a.b();
    }

    @Override // j.c
    public void c(Runnable runnable) {
        this.f30557a.c(runnable);
    }
}
