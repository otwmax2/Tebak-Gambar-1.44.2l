package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9380b;

    private zzajj(int i10, long j10) {
        this.f9379a = i10;
        this.f9380b = j10;
    }

    public static zzajj a(zzzv zzzvVar, zzen zzenVar) throws IOException {
        ((zzzk) zzzvVar).k(zzenVar.h(), 0, 8, false);
        zzenVar.f(0);
        return new zzajj(zzenVar.m(), zzenVar.y());
    }
}
