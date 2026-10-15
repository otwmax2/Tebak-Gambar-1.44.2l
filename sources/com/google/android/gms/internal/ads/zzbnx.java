package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbnx implements MediationAdRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f11027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f11029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f11030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Location f11031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f11032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f11033g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f11034h;

    public zzbnx(Date date, int i10, Set set, Location location, boolean z10, int i11, boolean z11, int i12, String str) {
        this.f11027a = date;
        this.f11028b = i10;
        this.f11029c = set;
        this.f11031e = location;
        this.f11030d = z10;
        this.f11032f = i11;
        this.f11033g = z11;
        this.f11034h = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int b() {
        return this.f11032f;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean d() {
        return this.f11033g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date e() {
        return this.f11027a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean f() {
        return this.f11030d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> g() {
        return this.f11029c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int i() {
        return this.f11028b;
    }
}
