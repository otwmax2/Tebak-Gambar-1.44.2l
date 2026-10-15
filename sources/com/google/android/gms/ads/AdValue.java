package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f5599c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface PrecisionType {
    }

    private AdValue(int i10, String str, long j10) {
        this.f5597a = i10;
        this.f5598b = str;
        this.f5599c = j10;
    }

    public static AdValue a(int i10, String str, long j10) {
        return new AdValue(i10, str, j10);
    }
}
