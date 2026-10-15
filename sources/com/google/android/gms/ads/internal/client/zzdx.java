package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ads.zzbyt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f5822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f5824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f5826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bundle f5827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map f5828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f5829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f5830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotOnlyInitialized
    private final SearchAdRequest f5831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f5832k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Set f5833l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Bundle f5834m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f5835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f5836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f5837p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f5838q;

    public zzdx(zzdw zzdwVar, SearchAdRequest searchAdRequest) {
        this.f5822a = zzdwVar.f5812g;
        this.f5823b = zzdwVar.f5813h;
        this.f5824c = zzdwVar.f5814i;
        this.f5825d = zzdwVar.f5815j;
        this.f5826e = Collections.unmodifiableSet(zzdwVar.f5806a);
        this.f5827f = zzdwVar.f5807b;
        this.f5828g = Collections.unmodifiableMap(zzdwVar.f5808c);
        this.f5829h = zzdwVar.f5816k;
        this.f5830i = zzdwVar.f5817l;
        this.f5831j = searchAdRequest;
        this.f5832k = zzdwVar.f5818m;
        this.f5833l = Collections.unmodifiableSet(zzdwVar.f5809d);
        this.f5834m = zzdwVar.f5810e;
        this.f5835n = Collections.unmodifiableSet(zzdwVar.f5811f);
        this.f5836o = zzdwVar.f5819n;
        this.f5837p = zzdwVar.f5820o;
        this.f5838q = zzdwVar.f5821p;
    }

    @Deprecated
    public final int a() {
        return this.f5825d;
    }

    public final int b() {
        return this.f5838q;
    }

    public final int c() {
        return this.f5832k;
    }

    public final Bundle d() {
        return this.f5834m;
    }

    public final Bundle e(Class cls) {
        return this.f5827f.getBundle(cls.getName());
    }

    public final Bundle f() {
        return this.f5827f;
    }

    public final SearchAdRequest g() {
        return this.f5831j;
    }

    public final String h() {
        return this.f5837p;
    }

    public final String i() {
        return this.f5823b;
    }

    public final String j() {
        return this.f5829h;
    }

    public final String k() {
        return this.f5830i;
    }

    @Deprecated
    public final Date l() {
        return this.f5822a;
    }

    public final List m() {
        return new ArrayList(this.f5824c);
    }

    public final Set n() {
        return this.f5835n;
    }

    public final Set o() {
        return this.f5826e;
    }

    @Deprecated
    public final boolean p() {
        return this.f5836o;
    }

    public final boolean q(Context context) {
        RequestConfiguration requestConfigurationB = zzej.e().b();
        zzay.b();
        String strE = zzbyt.E(context);
        return this.f5833l.contains(strE) || requestConfigurationB.d().contains(strE);
    }
}
