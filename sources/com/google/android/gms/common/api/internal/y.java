package com.google.android.gms.common.api.internal;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ApiKey<?> f7152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Feature f7153b;

    /* synthetic */ y(ApiKey apiKey, Feature feature, zabr zabrVar) {
        this.f7152a = apiKey;
        this.f7153b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof y)) {
            y yVar = (y) obj;
            if (Objects.b(this.f7152a, yVar.f7152a) && Objects.b(this.f7153b, yVar.f7153b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f7152a, this.f7153b);
    }

    public final String toString() {
        return Objects.d(this).a(SDKConstants.PARAM_KEY, this.f7152a).a("feature", this.f7153b).toString();
    }
}
