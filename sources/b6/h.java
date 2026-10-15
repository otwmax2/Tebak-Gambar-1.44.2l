package b6;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class h extends g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final TaskCompletionSource<a6.b> f4693o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final e5.a f4694p;

    public h(e5.a aVar, TaskCompletionSource<a6.b> taskCompletionSource) {
        this.f4694p = aVar;
        this.f4693o = taskCompletionSource;
    }

    @Override // b6.i
    public final void I6(Status status, a aVar) {
        Bundle bundle;
        TaskUtil.b(status, aVar == null ? null : new a6.b(aVar), this.f4693o);
        if (aVar == null || (bundle = aVar.Y3().getBundle("scionData")) == null || bundle.keySet() == null || this.f4694p == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            this.f4694p.c("fdl", str, bundle.getBundle(str));
        }
    }
}
