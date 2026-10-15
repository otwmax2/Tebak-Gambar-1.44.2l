package y8;

import android.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SingleLiveEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public class u<T> extends androidx.lifecycle.t<T> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AtomicBoolean f37065l = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(androidx.lifecycle.u uVar, Object obj) {
        if (this.f37065l.compareAndSet(true, false)) {
            uVar.d(obj);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void h(androidx.lifecycle.n nVar, final androidx.lifecycle.u<? super T> uVar) {
        if (g()) {
            Log.w("SingleLiveEvent", "Multiple observers registered but only one will be notified of changes.");
        }
        super.h(nVar, new androidx.lifecycle.u() { // from class: y8.t
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f37063a.p(uVar, obj);
            }
        });
    }

    @Override // androidx.lifecycle.t, androidx.lifecycle.LiveData
    public void n(T t10) {
        this.f37065l.set(true);
        super.n(t10);
    }
}
