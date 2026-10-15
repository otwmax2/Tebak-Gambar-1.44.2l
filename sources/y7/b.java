package y7;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import java.util.Iterator;
import x7.k;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static b f37018r = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f37019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f37020p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f37021q;

    public interface a {
        void b(boolean z10);
    }

    private b() {
    }

    public static b a() {
        return f37018r;
    }

    private void d(boolean z10) {
        if (this.f37020p != z10) {
            this.f37020p = z10;
            if (this.f37019o) {
                h();
                a aVar = this.f37021q;
                if (aVar != null) {
                    aVar.b(!z10);
                }
            }
        }
    }

    private void h() {
        boolean z10 = !this.f37020p;
        Iterator<k> it = y7.a.a().c().iterator();
        while (it.hasNext()) {
            it.next().k().h(z10);
        }
    }

    public void b(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void c(a aVar) {
        this.f37021q = aVar;
    }

    public void e() {
        this.f37019o = true;
        this.f37020p = false;
        h();
    }

    public void f() {
        this.f37019o = false;
        this.f37020p = false;
        this.f37021q = null;
    }

    ActivityManager.RunningAppProcessInfo g() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        View viewG;
        if (Build.VERSION.SDK_INT >= 16) {
            boolean z10 = g().importance != 100;
            boolean z11 = true;
            for (k kVar : y7.a.a().e()) {
                if (kVar.i() && (viewG = kVar.g()) != null && viewG.hasWindowFocus()) {
                    z11 = false;
                }
            }
            d(z10 && z11);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        d(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
