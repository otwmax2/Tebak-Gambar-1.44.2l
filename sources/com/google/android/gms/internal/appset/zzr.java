package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzr implements AppSetIdClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AppSetIdClient f21238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AppSetIdClient f21239b;

    public zzr(Context context) {
        this.f21238a = new zzp(context, GoogleApiAvailabilityLight.h());
        this.f21239b = zzl.d(context);
    }

    public static /* synthetic */ Task b(zzr zzrVar, Task task) {
        if (task.t() || task.r()) {
            return task;
        }
        Exception excO = task.o();
        if (!(excO instanceof ApiException)) {
            return task;
        }
        int iB = ((ApiException) excO).b();
        return (iB == 43001 || iB == 43002 || iB == 43003 || iB == 17) ? zzrVar.f21239b.a() : iB == 43000 ? Tasks.d(new Exception("Failed to get app set ID due to an internal error. Please try again later.")) : iB != 15 ? task : Tasks.d(new Exception("The operation to get app set ID timed out. Please try again later."));
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> a() {
        return this.f21238a.a().m(new Continuation() { // from class: com.google.android.gms.internal.appset.zzq
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task) {
                return zzr.b(this.f21237a, task);
            }
        });
    }
}
