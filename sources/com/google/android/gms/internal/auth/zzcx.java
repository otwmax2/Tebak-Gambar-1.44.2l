package com.google.android.gms.internal.auth;

import android.content.Context;
import android.net.Uri;
import com.vungle.mediation.BuildConfig;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f21420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Uri f21421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f21422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f21423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f21424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f21425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f21426g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f21427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    final zzdd<Context, Boolean> f21428i;

    public zzcx(Uri uri) {
        this(null, uri, BuildConfig.FLAVOR, BuildConfig.FLAVOR, false, false, false, false, null);
    }

    private zzcx(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable zzdd<Context, Boolean> zzddVar) {
        this.f21420a = null;
        this.f21421b = uri;
        this.f21422c = BuildConfig.FLAVOR;
        this.f21423d = BuildConfig.FLAVOR;
        this.f21424e = z10;
        this.f21425f = false;
        this.f21426g = false;
        this.f21427h = false;
        this.f21428i = null;
    }

    public final zzcx a() {
        if (this.f21422c.isEmpty()) {
            return new zzcx(null, this.f21421b, this.f21422c, this.f21423d, true, false, false, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final zzcz<Double> b(String str, double d10) {
        return new zzcv(this, str, Double.valueOf(0.0d), true);
    }

    public final zzcz<Long> c(String str, long j10) {
        return new zzct(this, str, Long.valueOf(j10), true);
    }

    public final zzcz<Boolean> d(String str, boolean z10) {
        return new zzcu(this, str, Boolean.valueOf(z10), true);
    }

    public final <T> zzcz<T> e(String str, T t10, zzhl zzhlVar) {
        return new zzcw(this, "getTokenRefactor__blocked_packages", t10, true, zzhlVar, null);
    }
}
