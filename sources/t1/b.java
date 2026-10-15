package t1;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: BoltsExecutors.java */
/* JADX INFO: loaded from: classes.dex */
final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final b f35181d = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f35182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f35183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f35184c;

    /* JADX INFO: renamed from: t1.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BoltsExecutors.java */
    private static class ExecutorC0254b implements Executor {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private ThreadLocal<Integer> f35185o;

        private ExecutorC0254b() {
            this.f35185o = new ThreadLocal<>();
        }

        private int a() {
            Integer num = this.f35185o.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() - 1;
            if (iIntValue == 0) {
                this.f35185o.remove();
            } else {
                this.f35185o.set(Integer.valueOf(iIntValue));
            }
            return iIntValue;
        }

        private int b() {
            Integer num = this.f35185o.get();
            if (num == null) {
                num = 0;
            }
            int iIntValue = num.intValue() + 1;
            this.f35185o.set(Integer.valueOf(iIntValue));
            return iIntValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (b() <= 15) {
                    runnable.run();
                } else {
                    b.a().execute(runnable);
                }
            } finally {
                a();
            }
        }
    }

    private b() {
        this.f35182a = !c() ? Executors.newCachedThreadPool() : t1.a.b();
        this.f35183b = Executors.newSingleThreadScheduledExecutor();
        this.f35184c = new ExecutorC0254b();
    }

    public static ExecutorService a() {
        return f35181d.f35182a;
    }

    static Executor b() {
        return f35181d.f35184c;
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }

    static ScheduledExecutorService d() {
        return f35181d.f35183b;
    }
}
