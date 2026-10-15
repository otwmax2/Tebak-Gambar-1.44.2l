package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzauf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f9973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f9974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f9975c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f9976d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9977e;

    @VisibleForTesting
    public zzauf(float f10, float f11, float f12, float f13, int i10) {
        this.f9973a = f10;
        this.f9974b = f11;
        this.f9975c = f10 + f12;
        this.f9976d = f11 + f13;
        this.f9977e = i10;
    }

    final float a() {
        return this.f9976d;
    }

    final float b() {
        return this.f9973a;
    }

    final float c() {
        return this.f9975c;
    }

    final float d() {
        return this.f9974b;
    }

    final int e() {
        return this.f9977e;
    }
}
