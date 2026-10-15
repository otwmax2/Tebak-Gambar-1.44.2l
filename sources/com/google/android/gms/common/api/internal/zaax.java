package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Collections;
import java.util.Iterator;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaax implements zabf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotOnlyInitialized
    private final zabi f7184a;

    public zaax(zabi zabiVar) {
        this.f7184a = zabiVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void b() {
        this.f7184a.l();
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void c(ConnectionResult connectionResult, Api<?> api, boolean z10) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void d(int i10) {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void e() {
        Iterator<Api.Client> it = this.f7184a.f7210t.values().iterator();
        while (it.hasNext()) {
            it.next().i();
        }
        this.f7184a.B.f7196m = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T f(T t10) {
        this.f7184a.B.f7191h.add(t10);
        return t10;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final boolean g() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T h(T t10) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
