package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f6108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f6109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f6110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6111e;

    public zzbc(String str, double d10, double d11, double d12, int i10) {
        this.f6107a = str;
        this.f6109c = d10;
        this.f6108b = d11;
        this.f6110d = d12;
        this.f6111e = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbc)) {
            return false;
        }
        zzbc zzbcVar = (zzbc) obj;
        return Objects.b(this.f6107a, zzbcVar.f6107a) && this.f6108b == zzbcVar.f6108b && this.f6109c == zzbcVar.f6109c && this.f6111e == zzbcVar.f6111e && Double.compare(this.f6110d, zzbcVar.f6110d) == 0;
    }

    public final int hashCode() {
        return Objects.c(this.f6107a, Double.valueOf(this.f6108b), Double.valueOf(this.f6109c), Double.valueOf(this.f6110d), Integer.valueOf(this.f6111e));
    }

    public final String toString() {
        return Objects.d(this).a("name", this.f6107a).a("minBound", Double.valueOf(this.f6109c)).a("maxBound", Double.valueOf(this.f6108b)).a("percent", Double.valueOf(this.f6110d)).a("count", Integer.valueOf(this.f6111e)).toString();
    }
}
