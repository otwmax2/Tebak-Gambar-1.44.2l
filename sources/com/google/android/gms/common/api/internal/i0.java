package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
abstract class i0<T> extends zac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final TaskCompletionSource<T> f7111b;

    public i0(int i10, TaskCompletionSource<T> taskCompletionSource) {
        super(i10);
        this.f7111b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        this.f7111b.d(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.f7111b.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void c(zabq<?> zabqVar) throws DeadObjectException {
        try {
            h(zabqVar);
        } catch (DeadObjectException e10) {
            a(zai.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(zai.e(e11));
        } catch (RuntimeException e12) {
            this.f7111b.d(e12);
        }
    }

    protected abstract void h(zabq<?> zabqVar) throws RemoteException;
}
