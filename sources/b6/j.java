package b6;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class j extends TaskApiCall<e, a6.b> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e5.a f4696e;

    j(e5.a aVar, String str) {
        this.f4695d = str;
        this.f4696e = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* synthetic */ void b(Api.AnyClient anyClient, TaskCompletionSource<a6.b> taskCompletionSource) throws RemoteException {
        e eVar = (e) anyClient;
        try {
            ((k) eVar.I()).a6(new h(this.f4696e, taskCompletionSource), this.f4695d);
        } catch (RemoteException unused) {
        }
    }
}
