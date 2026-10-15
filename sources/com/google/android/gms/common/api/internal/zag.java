package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zag<ResultT> extends zac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TaskApiCall<Api.AnyClient, ResultT> f7269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TaskCompletionSource<ResultT> f7270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final StatusExceptionMapper f7271d;

    public zag(int i10, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i10);
        this.f7270c = taskCompletionSource;
        this.f7269b = taskApiCall;
        this.f7271d = statusExceptionMapper;
        if (i10 == 2 && taskApiCall.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        this.f7270c.d(this.f7271d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.f7270c.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void c(zabq<?> zabqVar) throws DeadObjectException {
        try {
            this.f7269b.b(zabqVar.s(), this.f7270c);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(zai.e(e11));
        } catch (RuntimeException e12) {
            this.f7270c.d(e12);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zaad zaadVar, boolean z10) {
        zaadVar.d(this.f7270c, z10);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean f(zabq<?> zabqVar) {
        return this.f7269b.c();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] g(zabq<?> zabqVar) {
        return this.f7269b.e();
    }
}
