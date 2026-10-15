package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class zzbzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbzs f11627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f11628b;

    public zzbzz() {
        zzbzs zzbzsVar = new zzbzs();
        this.f11627a = zzbzsVar;
        this.f11628b = new AtomicInteger(0);
        zzfuj.q(zzbzsVar, new zzbzx(this), zzbzn.f11619f);
    }

    @Deprecated
    public final int a() {
        return this.f11628b.get();
    }

    @Deprecated
    public final void c() {
        this.f11627a.d(new Exception());
    }

    @Deprecated
    public final void d(Object obj) {
        this.f11627a.c(obj);
    }

    @Deprecated
    public final void e(zzbzw zzbzwVar, zzbzu zzbzuVar) {
        zzfuj.q(this.f11627a, new zzbzy(this, zzbzwVar, zzbzuVar), zzbzn.f11619f);
    }
}
