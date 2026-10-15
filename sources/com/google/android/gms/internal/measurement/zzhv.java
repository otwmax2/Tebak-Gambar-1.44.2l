package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.vungle.mediation.BuildConfig;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzhv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f23542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Uri f23543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f23544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f23545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f23546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f23547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f23548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f23549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    final zzic f23550i;

    public zzhv(Uri uri) {
        this(null, uri, BuildConfig.FLAVOR, BuildConfig.FLAVOR, false, false, false, false, null);
    }

    private zzhv(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable zzic zzicVar) {
        this.f23542a = null;
        this.f23543b = uri;
        this.f23544c = BuildConfig.FLAVOR;
        this.f23545d = BuildConfig.FLAVOR;
        this.f23546e = z10;
        this.f23547f = false;
        this.f23548g = z12;
        this.f23549h = false;
        this.f23550i = null;
    }

    public final zzhv a() {
        return new zzhv(null, this.f23543b, this.f23544c, this.f23545d, this.f23546e, false, true, false, null);
    }

    public final zzhv b() {
        if (this.f23544c.isEmpty()) {
            return new zzhv(null, this.f23543b, this.f23544c, this.f23545d, true, false, this.f23548g, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final zzhy c(String str, double d10) {
        return new zzht(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final zzhy d(String str, long j10) {
        return new zzhr(this, str, Long.valueOf(j10), true);
    }

    public final zzhy e(String str, String str2) {
        return new zzhu(this, str, str2, true);
    }

    public final zzhy f(String str, boolean z10) {
        return new zzhs(this, str, Boolean.valueOf(z10), true);
    }
}
