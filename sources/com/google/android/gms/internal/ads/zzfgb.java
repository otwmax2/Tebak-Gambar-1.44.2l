package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfhi f18154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzffq f18156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f18157d = "Ad overlay";

    public zzfgb(View view, zzffq zzffqVar, String str) {
        this.f18154a = new zzfhi(view);
        this.f18155b = view.getClass().getCanonicalName();
        this.f18156c = zzffqVar;
    }

    public final zzffq a() {
        return this.f18156c;
    }

    public final zzfhi b() {
        return this.f18154a;
    }

    public final String c() {
        return this.f18157d;
    }

    public final String d() {
        return this.f18155b;
    }
}
