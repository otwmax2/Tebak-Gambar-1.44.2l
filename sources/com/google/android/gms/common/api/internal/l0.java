package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectionResult f7123b;

    l0(ConnectionResult connectionResult, int i10) {
        Preconditions.k(connectionResult);
        this.f7123b = connectionResult;
        this.f7122a = i10;
    }

    final int a() {
        return this.f7122a;
    }

    final ConnectionResult b() {
        return this.f7123b;
    }
}
