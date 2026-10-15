package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f10063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f10064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f10065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f10066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f10067e;

    private zzawc(InputStream inputStream, boolean z10, boolean z11, long j10, boolean z12) {
        this.f10063a = inputStream;
        this.f10064b = z10;
        this.f10065c = z11;
        this.f10066d = j10;
        this.f10067e = z12;
    }

    public static zzawc b(InputStream inputStream, boolean z10, boolean z11, long j10, boolean z12) {
        return new zzawc(inputStream, z10, z11, j10, z12);
    }

    public final long a() {
        return this.f10066d;
    }

    public final InputStream c() {
        return this.f10063a;
    }

    public final boolean d() {
        return this.f10064b;
    }

    public final boolean e() {
        return this.f10067e;
    }

    public final boolean f() {
        return this.f10065c;
    }
}
