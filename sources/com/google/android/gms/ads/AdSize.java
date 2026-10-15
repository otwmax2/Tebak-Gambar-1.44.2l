package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.internal.ads.zzbyt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f5596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AdSize f5578i = new AdSize(320, 50, "320x50_mb");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AdSize f5579j = new AdSize(468, 60, "468x60_as");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AdSize f5580k = new AdSize(320, 100, "320x100_as");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final AdSize f5581l = new AdSize(728, 90, "728x90_as");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final AdSize f5582m = new AdSize(300, 250, "300x250_as");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final AdSize f5583n = new AdSize(160, 600, "160x600_as");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Deprecated
    public static final AdSize f5584o = new AdSize(-1, -2, "smart_banner");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final AdSize f5585p = new AdSize(-3, -4, "fluid");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final AdSize f5586q = new AdSize(0, 0, "invalid");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final AdSize f5588s = new AdSize(50, 50, "50x50_mb");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final AdSize f5587r = new AdSize(-3, 0, "search_v2");

    public AdSize(int i10, int i11) {
        this(i10, i11, (i10 == -1 ? "FULL" : String.valueOf(i10)) + "x" + (i11 == -2 ? "AUTO" : String.valueOf(i11)) + "_as");
    }

    public static AdSize a(Context context, int i10) {
        AdSize adSizeH = zzbyt.h(context, i10, 50, 0);
        adSizeH.f5592d = true;
        return adSizeH;
    }

    public int b() {
        return this.f5590b;
    }

    public int c(Context context) {
        int i10 = this.f5590b;
        if (i10 == -4 || i10 == -3) {
            return -1;
        }
        if (i10 == -2) {
            return zzq.V3(context.getResources().getDisplayMetrics());
        }
        zzay.b();
        return zzbyt.D(context, this.f5590b);
    }

    public int d() {
        return this.f5589a;
    }

    public int e(Context context) {
        int i10 = this.f5589a;
        if (i10 == -3) {
            return -1;
        }
        if (i10 != -1) {
            zzay.b();
            return zzbyt.D(context, this.f5589a);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<zzq> creator = zzq.CREATOR;
        return displayMetrics.widthPixels;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.f5589a == adSize.f5589a && this.f5590b == adSize.f5590b && this.f5591c.equals(adSize.f5591c);
    }

    public boolean f() {
        return this.f5589a == -3 && this.f5590b == -4;
    }

    final int g() {
        return this.f5596h;
    }

    final int h() {
        return this.f5594f;
    }

    public int hashCode() {
        return this.f5591c.hashCode();
    }

    final void i(int i10) {
        this.f5594f = i10;
    }

    final void j(int i10) {
        this.f5596h = i10;
    }

    final void k(boolean z10) {
        this.f5593e = true;
    }

    final void l(boolean z10) {
        this.f5595g = true;
    }

    final boolean m() {
        return this.f5592d;
    }

    final boolean n() {
        return this.f5593e;
    }

    final boolean o() {
        return this.f5595g;
    }

    public String toString() {
        return this.f5591c;
    }

    AdSize(int i10, int i11, String str) {
        if (i10 < 0 && i10 != -1 && i10 != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i10);
        }
        if (i11 < 0 && i11 != -2 && i11 != -4) {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i11);
        }
        this.f5589a = i10;
        this.f5590b = i11;
        this.f5591c = str;
    }
}
