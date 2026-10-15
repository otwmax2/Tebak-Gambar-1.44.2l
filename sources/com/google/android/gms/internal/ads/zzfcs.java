package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfcs {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzfut f17907d = zzfuj.h(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f17909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfct f17910c;

    public zzfcs(zzfuu zzfuuVar, ScheduledExecutorService scheduledExecutorService, zzfct zzfctVar) {
        this.f17908a = zzfuuVar;
        this.f17909b = scheduledExecutorService;
        this.f17910c = zzfctVar;
    }

    public final zzfci a(Object obj, zzfut... zzfutVarArr) {
        return new zzfci(this, obj, Arrays.asList(zzfutVarArr), null);
    }

    public final zzfcr b(Object obj, zzfut zzfutVar) {
        return new zzfcr(this, obj, zzfutVar, Collections.singletonList(zzfutVar), zzfutVar);
    }

    protected abstract String f(Object obj);
}
