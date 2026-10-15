package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzctx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzeyx f14018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f14019c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzeyp f14020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzctr f14021e;

    public final zzctx d(Context context) {
        this.f14017a = context;
        return this;
    }

    public final zzctx e(Bundle bundle) {
        this.f14019c = bundle;
        return this;
    }

    public final zzctx f(zzctr zzctrVar) {
        this.f14021e = zzctrVar;
        return this;
    }

    public final zzctx g(zzeyp zzeypVar) {
        this.f14020d = zzeypVar;
        return this;
    }

    public final zzctx h(zzeyx zzeyxVar) {
        this.f14018b = zzeyxVar;
        return this;
    }

    public final zzctz i() {
        return new zzctz(this, null);
    }
}
