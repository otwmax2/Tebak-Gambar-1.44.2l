package b6;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends GoogleApi<Api.ApiOptions.NoOptions> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<e> f4688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<e, Api.ApiOptions.NoOptions> f4689l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f4690m;

    static {
        Api.ClientKey<e> clientKey = new Api.ClientKey<>();
        f4688k = clientKey;
        c cVar = new c();
        f4689l = cVar;
        f4690m = new Api<>("DynamicLinks.API", cVar, clientKey);
    }

    @VisibleForTesting
    public d(Context context) {
        super(context, f4690m, (Api.ApiOptions) null, GoogleApi.Settings.f6960c);
    }
}
