package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.j;
import androidx.lifecycle.x;

/* JADX INFO: compiled from: ProcessLifecycleOwner.java */
/* JADX INFO: loaded from: classes.dex */
public class w implements n {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final w f3563w = new w();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Handler f3568s;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f3564o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f3565p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f3566q = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3567r = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final o f3569t = new o(this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Runnable f3570u = new a();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    x.a f3571v = new b();

    /* JADX INFO: compiled from: ProcessLifecycleOwner.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.f();
            w.this.g();
        }
    }

    /* JADX INFO: compiled from: ProcessLifecycleOwner.java */
    class b implements x.a {
        b() {
        }

        @Override // androidx.lifecycle.x.a
        public void b() {
            w.this.c();
        }

        @Override // androidx.lifecycle.x.a
        public void c() {
        }

        @Override // androidx.lifecycle.x.a
        public void onResume() {
            w.this.b();
        }
    }

    /* JADX INFO: compiled from: ProcessLifecycleOwner.java */
    class c extends e {

        /* JADX INFO: compiled from: ProcessLifecycleOwner.java */
        class a extends e {
            a() {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                w.this.b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                w.this.c();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                x.f(activity).h(w.this.f3571v);
            }
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            w.this.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            w.this.d();
        }
    }

    private w() {
    }

    public static n h() {
        return f3563w;
    }

    static void i(Context context) {
        f3563w.e(context);
    }

    void a() {
        int i10 = this.f3565p - 1;
        this.f3565p = i10;
        if (i10 == 0) {
            this.f3568s.postDelayed(this.f3570u, 700L);
        }
    }

    void b() {
        int i10 = this.f3565p + 1;
        this.f3565p = i10;
        if (i10 == 1) {
            if (!this.f3566q) {
                this.f3568s.removeCallbacks(this.f3570u);
            } else {
                this.f3569t.h(j.b.ON_RESUME);
                this.f3566q = false;
            }
        }
    }

    void c() {
        int i10 = this.f3564o + 1;
        this.f3564o = i10;
        if (i10 == 1 && this.f3567r) {
            this.f3569t.h(j.b.ON_START);
            this.f3567r = false;
        }
    }

    void d() {
        this.f3564o--;
        g();
    }

    void e(Context context) {
        this.f3568s = new Handler();
        this.f3569t.h(j.b.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
    }

    void f() {
        if (this.f3565p == 0) {
            this.f3566q = true;
            this.f3569t.h(j.b.ON_PAUSE);
        }
    }

    void g() {
        if (this.f3564o == 0 && this.f3566q) {
            this.f3569t.h(j.b.ON_STOP);
            this.f3567r = true;
        }
    }

    @Override // androidx.lifecycle.n
    public j getLifecycle() {
        return this.f3569t;
    }
}
