package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class ApiKey<O extends Api.ApiOptions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Api<O> f6987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final O f6988c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6989d;

    private ApiKey(Api<O> api, O o10, String str) {
        this.f6987b = api;
        this.f6988c = o10;
        this.f6989d = str;
        this.f6986a = Objects.c(api, o10, str);
    }

    public static <O extends Api.ApiOptions> ApiKey<O> a(Api<O> api, O o10, String str) {
        return new ApiKey<>(api, o10, str);
    }

    public final String b() {
        return this.f6987b.d();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.b(this.f6987b, apiKey.f6987b) && Objects.b(this.f6988c, apiKey.f6988c) && Objects.b(this.f6989d, apiKey.f6989d);
    }

    public final int hashCode() {
        return this.f6986a;
    }
}
