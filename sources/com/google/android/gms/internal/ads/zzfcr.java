package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfcr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f17901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfut f17903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f17904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfut f17905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzfcs f17906f;

    private zzfcr(zzfcs zzfcsVar, Object obj, String str, zzfut zzfutVar, List list, zzfut zzfutVar2) {
        this.f17906f = zzfcsVar;
        this.f17901a = obj;
        this.f17902b = str;
        this.f17903c = zzfutVar;
        this.f17904d = list;
        this.f17905e = zzfutVar2;
    }

    public final zzfcf a() {
        Object obj = this.f17901a;
        String strF = this.f17902b;
        if (strF == null) {
            strF = this.f17906f.f(obj);
        }
        final zzfcf zzfcfVar = new zzfcf(obj, strF, this.f17905e);
        this.f17906f.f17910c.D0(zzfcfVar);
        zzfut zzfutVar = this.f17903c;
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcl
            @Override // java.lang.Runnable
            public final void run() {
                zzfcr zzfcrVar = this.f17894o;
                zzfcrVar.f17906f.f17910c.o0(zzfcfVar);
            }
        };
        zzfuu zzfuuVar = zzbzn.f11619f;
        zzfutVar.f(runnable, zzfuuVar);
        zzfuj.q(zzfcfVar, new zzfcp(this, zzfcfVar), zzfuuVar);
        return zzfcfVar;
    }

    public final zzfcr b(Object obj) {
        return this.f17906f.b(obj, a());
    }

    public final zzfcr c(Class cls, zzftq zzftqVar) {
        zzfcs zzfcsVar = this.f17906f;
        return new zzfcr(zzfcsVar, this.f17901a, this.f17902b, this.f17903c, this.f17904d, zzfuj.f(this.f17905e, cls, zzftqVar, zzfcsVar.f17908a));
    }

    public final zzfcr d(final zzfut zzfutVar) {
        return g(new zzftq() { // from class: com.google.android.gms.internal.ads.zzfcm
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfutVar;
            }
        }, zzbzn.f11619f);
    }

    public final zzfcr e(final zzfcd zzfcdVar) {
        return f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzfco
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(zzfcdVar.a(obj));
            }
        });
    }

    public final zzfcr f(zzftq zzftqVar) {
        return g(zzftqVar, this.f17906f.f17908a);
    }

    public final zzfcr g(zzftq zzftqVar, Executor executor) {
        return new zzfcr(this.f17906f, this.f17901a, this.f17902b, this.f17903c, this.f17904d, zzfuj.m(this.f17905e, zzftqVar, executor));
    }

    public final zzfcr h(String str) {
        return new zzfcr(this.f17906f, this.f17901a, str, this.f17903c, this.f17904d, this.f17905e);
    }

    public final zzfcr i(long j10, TimeUnit timeUnit) {
        zzfcs zzfcsVar = this.f17906f;
        return new zzfcr(zzfcsVar, this.f17901a, this.f17902b, this.f17903c, this.f17904d, zzfuj.n(this.f17905e, j10, timeUnit, zzfcsVar.f17909b));
    }
}
