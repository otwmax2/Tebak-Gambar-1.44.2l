package b9;

import android.app.Activity;
import com.twitter.sdk.android.core.o;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: AuthState.java */
/* JADX INFO: loaded from: classes2.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicReference<a> f4704a = new AtomicReference<>(null);

    b() {
    }

    public boolean a(Activity activity, a aVar) {
        if (d()) {
            o.g().a("Twitter", "Authorize already in progress");
        } else if (aVar.a(activity)) {
            boolean zCompareAndSet = this.f4704a.compareAndSet(null, aVar);
            if (zCompareAndSet) {
                return zCompareAndSet;
            }
            o.g().a("Twitter", "Failed to update authHandler, authorize already in progress.");
            return zCompareAndSet;
        }
        return false;
    }

    public void b() {
        this.f4704a.set(null);
    }

    public a c() {
        return this.f4704a.get();
    }

    public boolean d() {
        return this.f4704a.get() != null;
    }
}
