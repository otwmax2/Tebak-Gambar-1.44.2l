package com.google.android.gms.ads;

import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class VersionInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f5623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f5624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f5625c;

    public VersionInfo(int i10, int i11, int i12) {
        this.f5623a = i10;
        this.f5624b = i11;
        this.f5625c = i12;
    }

    public int a() {
        return this.f5623a;
    }

    public int b() {
        return this.f5625c;
    }

    public int c() {
        return this.f5624b;
    }

    public String toString() {
        return String.format(Locale.US, "%d.%d.%d", Integer.valueOf(this.f5623a), Integer.valueOf(this.f5624b), Integer.valueOf(this.f5625c));
    }
}
