package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o.a<ApiKey<?>, ConnectionResult> f7275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o.a<ApiKey<?>, String> f7276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TaskCompletionSource<Map<ApiKey<?>, String>> f7277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7279e;

    public final Set<ApiKey<?>> a() {
        return this.f7275a.keySet();
    }

    public final void b(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
        this.f7275a.put(apiKey, connectionResult);
        this.f7276b.put(apiKey, str);
        this.f7278d--;
        if (!connectionResult.Z3()) {
            this.f7279e = true;
        }
        if (this.f7278d == 0) {
            if (!this.f7279e) {
                this.f7277c.c(this.f7276b);
            } else {
                this.f7277c.b(new AvailabilityException(this.f7275a));
            }
        }
    }
}
