package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bundle f5918a = new Bundle();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f5919b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5920c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5921d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f5922e = new Bundle();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Bundle f5923f = new Bundle();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f5924g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f5925h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f5926i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f5927j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f5928k = 60000;

    public final zzl a() {
        return new zzl(8, -1L, this.f5918a, -1, this.f5919b, this.f5920c, this.f5921d, false, null, null, null, null, this.f5922e, this.f5923f, this.f5924g, null, null, false, null, this.f5925h, this.f5926i, this.f5927j, this.f5928k, null);
    }

    public final zzm b(Bundle bundle) {
        this.f5918a = bundle;
        return this;
    }

    public final zzm c(int i10) {
        this.f5928k = i10;
        return this;
    }

    public final zzm d(boolean z10) {
        this.f5920c = z10;
        return this;
    }

    public final zzm e(List list) {
        this.f5919b = list;
        return this;
    }

    public final zzm f(String str) {
        this.f5926i = str;
        return this;
    }

    public final zzm g(int i10) {
        this.f5921d = i10;
        return this;
    }

    public final zzm h(int i10) {
        this.f5925h = i10;
        return this;
    }
}
