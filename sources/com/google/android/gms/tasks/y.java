package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y extends LifecycleCallback {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f25004p;

    private y(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f25004p = new ArrayList();
        this.f7031o.a("TaskOnStopCallback", this);
    }

    public static y l(Activity activity) {
        LifecycleFragment lifecycleFragmentC = LifecycleCallback.c(activity);
        y yVar = (y) lifecycleFragmentC.b("TaskOnStopCallback", y.class);
        return yVar == null ? new y(lifecycleFragmentC) : yVar;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        synchronized (this.f25004p) {
            Iterator it = this.f25004p.iterator();
            while (it.hasNext()) {
                u uVar = (u) ((WeakReference) it.next()).get();
                if (uVar != null) {
                    uVar.a();
                }
            }
            this.f25004p.clear();
        }
    }

    public final void m(u uVar) {
        synchronized (this.f25004p) {
            this.f25004p.add(new WeakReference(uVar));
        }
    }
}
