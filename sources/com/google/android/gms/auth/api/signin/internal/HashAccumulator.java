package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class HashAccumulator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    static int f6763b = 31;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6764a = 1;

    @KeepForSdk
    public HashAccumulator a(Object obj) {
        this.f6764a = (f6763b * this.f6764a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @KeepForSdk
    public int b() {
        return this.f6764a;
    }

    public final HashAccumulator c(boolean z10) {
        this.f6764a = (f6763b * this.f6764a) + (z10 ? 1 : 0);
        return this;
    }
}
