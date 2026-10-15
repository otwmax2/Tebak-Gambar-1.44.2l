package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdw {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Date f5812g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f5813h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f5816k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f5817l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5819n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f5820o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f5806a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f5807b = new Bundle();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f5808c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f5809d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f5810e = new Bundle();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet f5811f = new HashSet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f5814i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f5815j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f5818m = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f5821p = 60000;

    @Deprecated
    public final void a(int i10) {
        this.f5815j = i10;
    }

    @Deprecated
    public final void b(boolean z10) {
        this.f5819n = z10;
    }

    public final void c(String str) {
        this.f5817l = str;
    }

    @Deprecated
    public final void d(boolean z10) {
        this.f5818m = z10 ? 1 : 0;
    }

    public final void u(String str) {
        this.f5806a.add(str);
    }

    public final void v(Class cls, Bundle bundle) {
        this.f5807b.putBundle(cls.getName(), bundle);
    }

    public final void w(String str) {
        this.f5809d.add(str);
    }

    public final void x(String str) {
        this.f5809d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }

    @Deprecated
    public final void y(Date date) {
        this.f5812g = date;
    }
}
