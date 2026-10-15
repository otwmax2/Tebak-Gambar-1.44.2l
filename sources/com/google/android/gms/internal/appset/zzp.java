package com.google.android.gms.internal.appset;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> implements AppSetIdClient {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api.ClientKey<zzd> f21232m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzd, Api.ApiOptions.NoOptions> f21233n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f21234o;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Context f21235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final GoogleApiAvailabilityLight f21236l;

    static {
        Api.ClientKey<zzd> clientKey = new Api.ClientKey<>();
        f21232m = clientKey;
        zzn zznVar = new zzn();
        f21233n = zznVar;
        f21234o = new Api<>("AppSet.API", zznVar, clientKey);
    }

    zzp(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        super(context, f21234o, Api.ApiOptions.f6942b, GoogleApi.Settings.f6960c);
        this.f21235k = context;
        this.f21236l = googleApiAvailabilityLight;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> a() {
        return this.f21236l.j(this.f21235k, 212800000) == 0 ? k(TaskApiCall.a().d(com.google.android.gms.appset.zze.f6507a).b(new RemoteCall() { // from class: com.google.android.gms.internal.appset.zzm
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) throws RemoteException {
                ((zzg) ((zzd) obj).I()).t1(new com.google.android.gms.appset.zza(null, null), new zzo(this.f21230a, (TaskCompletionSource) obj2));
            }
        }).c(false).e(27601).a()) : Tasks.d(new ApiException(new Status(17)));
    }
}
