package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import androidx.emoji2.text.d;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements d1.a<Boolean> {

    static class a extends d.c {
        protected a(Context context) {
            super(new b(context));
            b(1);
        }
    }

    static class b implements d.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2993a;

        class a extends d.h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ d.h f2994a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ThreadPoolExecutor f2995b;

            a(d.h hVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f2994a = hVar;
                this.f2995b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.d.h
            public void a(Throwable th) {
                try {
                    this.f2994a.a(th);
                } finally {
                    this.f2995b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.d.h
            public void b(l lVar) {
                try {
                    this.f2994a.b(lVar);
                } finally {
                    this.f2995b.shutdown();
                }
            }
        }

        b(Context context) {
            this.f2993a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.d.g
        public void a(final d.h hVar) {
            final ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.b.b("EmojiCompatInitializer");
            threadPoolExecutorB.execute(new Runnable() { // from class: androidx.emoji2.text.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3031o.d(hVar, threadPoolExecutorB);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void d(d.h hVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                i iVarA = androidx.emoji2.text.c.a(this.f2993a);
                if (iVarA == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                iVarA.c(threadPoolExecutor);
                iVarA.a().a(new a(hVar, threadPoolExecutor));
            } catch (Throwable th) {
                hVar.a(th);
                threadPoolExecutor.shutdown();
            }
        }
    }

    static class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.core.os.m.a("EmojiCompat.EmojiCompatInitializer.run");
                if (d.h()) {
                    d.b().k();
                }
            } finally {
                androidx.core.os.m.b();
            }
        }
    }

    @Override // d1.a
    public List<Class<? extends d1.a<?>>> a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // d1.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean b(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return Boolean.FALSE;
        }
        d.g(new a(context));
        d(context);
        return Boolean.TRUE;
    }

    void d(Context context) {
        final androidx.lifecycle.j lifecycle = ((androidx.lifecycle.n) androidx.startup.a.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new androidx.lifecycle.d() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.f
            public void a(androidx.lifecycle.n nVar) {
                EmojiCompatInitializer.this.e();
                lifecycle.c(this);
            }

            @Override // androidx.lifecycle.f
            public /* synthetic */ void b(androidx.lifecycle.n nVar) {
                androidx.lifecycle.c.a(this, nVar);
            }

            @Override // androidx.lifecycle.f
            public /* synthetic */ void d(androidx.lifecycle.n nVar) {
                androidx.lifecycle.c.c(this, nVar);
            }

            @Override // androidx.lifecycle.f
            public /* synthetic */ void e(androidx.lifecycle.n nVar) {
                androidx.lifecycle.c.e(this, nVar);
            }

            @Override // androidx.lifecycle.f
            public /* synthetic */ void f(androidx.lifecycle.n nVar) {
                androidx.lifecycle.c.b(this, nVar);
            }

            @Override // androidx.lifecycle.f
            public /* synthetic */ void g(androidx.lifecycle.n nVar) {
                androidx.lifecycle.c.d(this, nVar);
            }
        });
    }

    void e() {
        androidx.emoji2.text.b.d().postDelayed(new c(), 500L);
    }
}
