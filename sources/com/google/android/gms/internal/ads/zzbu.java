package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzbu extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f11350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f11351p;

    protected zzbu(String str, Throwable th, boolean z10, int i10) {
        super(str, th);
        this.f11350o = z10;
        this.f11351p = i10;
    }

    public static zzbu a(String str, Throwable th) {
        return new zzbu(str, th, true, 1);
    }

    public static zzbu b(String str, Throwable th) {
        return new zzbu(str, th, true, 0);
    }

    public static zzbu c(String str) {
        return new zzbu(str, null, false, 1);
    }
}
