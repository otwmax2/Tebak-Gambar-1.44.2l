package b6;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends a6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GoogleApi<Api.ApiOptions.NoOptions> f4691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e5.a f4692b;

    public f(b5.g gVar, e5.a aVar) {
        this(new d(gVar.l()), aVar);
    }

    @Override // a6.a
    public final Task<a6.b> a(Intent intent) {
        Task taskO = this.f4691a.o(new j(this.f4692b, intent.getDataString()));
        a aVar = (a) SafeParcelableSerializer.b(intent, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA", a.CREATOR);
        a6.b bVar = aVar != null ? new a6.b(aVar) : null;
        return bVar != null ? Tasks.e(bVar) : taskO;
    }

    @VisibleForTesting
    private f(GoogleApi<Api.ApiOptions.NoOptions> googleApi, e5.a aVar) {
        this.f4691a = googleApi;
        this.f4692b = aVar;
        if (aVar == null) {
            Log.w("FDL", "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events.");
        }
    }
}
