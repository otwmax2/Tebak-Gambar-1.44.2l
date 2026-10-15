package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.internal.base.zad;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zao extends GoogleApi<TelemetryLoggingOptions> implements TelemetryLoggingClient {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zap> f7471k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zap, TelemetryLoggingOptions> f7472l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<TelemetryLoggingOptions> f7473m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f7474n = 0;

    static {
        Api.ClientKey<zap> clientKey = new Api.ClientKey<>();
        f7471k = clientKey;
        b bVar = new b();
        f7472l = bVar;
        f7473m = new Api<>("ClientTelemetry.API", bVar, clientKey);
    }

    public zao(Context context, TelemetryLoggingOptions telemetryLoggingOptions) {
        super(context, f7473m, telemetryLoggingOptions, GoogleApi.Settings.f6960c);
    }

    @Override // com.google.android.gms.common.internal.TelemetryLoggingClient
    public final Task<Void> c(final TelemetryData telemetryData) {
        TaskApiCall.Builder builderA = TaskApiCall.a();
        builderA.d(zad.f21648a);
        builderA.c(false);
        builderA.b(new RemoteCall() { // from class: com.google.android.gms.common.internal.service.zam
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void a(Object obj, Object obj2) throws RemoteException {
                TelemetryData telemetryData2 = telemetryData;
                int i10 = zao.f7474n;
                ((zai) ((zap) obj).I()).A9(telemetryData2);
                ((TaskCompletionSource) obj2).c(null);
            }
        });
        return i(builderA.a());
    }
}
