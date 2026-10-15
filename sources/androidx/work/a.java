package androidx.work;

import android.os.Build;
import i1.g;
import i1.i;
import i1.q;
import i1.v;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: Configuration.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f4358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Executor f4359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final v f4360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final i f4361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final q f4362e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final g f4363f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final String f4364g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f4365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final int f4366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f4367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final int f4368k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f4369l;

    /* JADX INFO: renamed from: androidx.work.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Configuration.java */
    class ThreadFactoryC0072a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f4370a = new AtomicInteger(0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f4371b;

        ThreadFactoryC0072a(boolean z10) {
            this.f4371b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, (this.f4371b ? "WM.task-" : "androidx.work-") + this.f4370a.incrementAndGet());
        }
    }

    /* JADX INFO: compiled from: Configuration.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Executor f4373a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        v f4374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        i f4375c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Executor f4376d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        q f4377e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        g f4378f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f4379g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f4380h = 4;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f4381i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f4382j = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f4383k = 20;

        public a a() {
            return new a(this);
        }
    }

    /* JADX INFO: compiled from: Configuration.java */
    public interface c {
        a a();
    }

    a(b bVar) {
        Executor executor = bVar.f4373a;
        if (executor == null) {
            this.f4358a = a(false);
        } else {
            this.f4358a = executor;
        }
        Executor executor2 = bVar.f4376d;
        if (executor2 == null) {
            this.f4369l = true;
            this.f4359b = a(true);
        } else {
            this.f4369l = false;
            this.f4359b = executor2;
        }
        v vVar = bVar.f4374b;
        if (vVar == null) {
            this.f4360c = v.c();
        } else {
            this.f4360c = vVar;
        }
        i iVar = bVar.f4375c;
        if (iVar == null) {
            this.f4361d = i.c();
        } else {
            this.f4361d = iVar;
        }
        q qVar = bVar.f4377e;
        if (qVar == null) {
            this.f4362e = new j1.a();
        } else {
            this.f4362e = qVar;
        }
        this.f4365h = bVar.f4380h;
        this.f4366i = bVar.f4381i;
        this.f4367j = bVar.f4382j;
        this.f4368k = bVar.f4383k;
        this.f4363f = bVar.f4378f;
        this.f4364g = bVar.f4379g;
    }

    private Executor a(boolean z10) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), b(z10));
    }

    private ThreadFactory b(boolean z10) {
        return new ThreadFactoryC0072a(z10);
    }

    public String c() {
        return this.f4364g;
    }

    public g d() {
        return this.f4363f;
    }

    public Executor e() {
        return this.f4358a;
    }

    public i f() {
        return this.f4361d;
    }

    public int g() {
        return this.f4367j;
    }

    public int h() {
        return Build.VERSION.SDK_INT == 23 ? this.f4368k / 2 : this.f4368k;
    }

    public int i() {
        return this.f4366i;
    }

    public int j() {
        return this.f4365h;
    }

    public q k() {
        return this.f4362e;
    }

    public Executor l() {
        return this.f4359b;
    }

    public v m() {
        return this.f4360c;
    }
}
