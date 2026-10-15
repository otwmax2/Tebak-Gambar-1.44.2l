package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbtn f17298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f17299b;

    public zzesh(zzbtn zzbtnVar, int i10) {
        this.f17298a = zzbtnVar;
        this.f17299b = i10;
    }

    public final int a() {
        return this.f17299b;
    }

    public final PackageInfo b() {
        return this.f17298a.f11277t;
    }

    public final String c() {
        return this.f17298a.f11275r;
    }

    public final String d() {
        return zzfoj.c(this.f17298a.f11272o.getString("ms"));
    }

    public final String e() {
        return this.f17298a.f11279v;
    }

    public final List f() {
        return this.f17298a.f11276s;
    }

    final boolean g() {
        return this.f17298a.f11283z;
    }

    final boolean h() {
        return this.f17298a.f11272o.getBoolean("is_gbid");
    }

    final boolean i() {
        return this.f17298a.f11282y;
    }
}
