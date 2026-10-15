package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaiz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9331e;

    public zzaiz(int i10, int i11, int i12) {
        String str;
        if (i10 != Integer.MIN_VALUE) {
            str = i10 + "/";
        } else {
            str = BuildConfig.FLAVOR;
        }
        this.f9327a = str;
        this.f9328b = i11;
        this.f9329c = i12;
        this.f9330d = Integer.MIN_VALUE;
        this.f9331e = BuildConfig.FLAVOR;
    }

    private final void d() {
        if (this.f9330d == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    public final int a() {
        d();
        return this.f9330d;
    }

    public final String b() {
        d();
        return this.f9331e;
    }

    public final void c() {
        int i10 = this.f9330d;
        int i11 = i10 == Integer.MIN_VALUE ? this.f9328b : i10 + this.f9329c;
        this.f9330d = i11;
        this.f9331e = this.f9327a + i11;
    }
}
