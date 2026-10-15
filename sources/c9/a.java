package c9;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ActivityLifecycleManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final C0097a f4968a;

    /* JADX INFO: renamed from: c9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityLifecycleManager.java */
    private static class C0097a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<Application.ActivityLifecycleCallbacks> f4969a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Application f4970b;

        /* JADX INFO: renamed from: c9.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ActivityLifecycleManager.java */
        class C0098a implements Application.ActivityLifecycleCallbacks {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ b f4971o;

            C0098a(b bVar) {
                this.f4971o = bVar;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                this.f4971o.a(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                this.f4971o.b(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                this.f4971o.c(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                this.f4971o.d(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                this.f4971o.e(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                this.f4971o.f(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                this.f4971o.g(activity);
            }
        }

        C0097a(Application application) {
            this.f4970b = application;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(b bVar) {
            if (this.f4970b == null) {
                return false;
            }
            C0098a c0098a = new C0098a(bVar);
            this.f4970b.registerActivityLifecycleCallbacks(c0098a);
            this.f4969a.add(c0098a);
            return true;
        }
    }

    /* JADX INFO: compiled from: ActivityLifecycleManager.java */
    public static abstract class b {
        public void a(Activity activity, Bundle bundle) {
        }

        public void b(Activity activity) {
        }

        public void c(Activity activity) {
        }

        public void d(Activity activity) {
        }

        public void e(Activity activity, Bundle bundle) {
        }

        public abstract void f(Activity activity);

        public void g(Activity activity) {
        }
    }

    public a(Context context) {
        this.f4968a = new C0097a((Application) context.getApplicationContext());
    }

    public boolean a(b bVar) {
        C0097a c0097a = this.f4968a;
        return c0097a != null && c0097a.b(bVar);
    }
}
