package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabv<O extends Api.ApiOptions> extends zaag {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotOnlyInitialized
    private final GoogleApi<O> f7231c;

    public zabv(GoogleApi<O> googleApi) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f7231c = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T g(T t10) {
        return (T) this.f7231c.j(t10);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        return (T) this.f7231c.n(t10);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper j() {
        return this.f7231c.t();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void n(zada zadaVar) {
    }
}
