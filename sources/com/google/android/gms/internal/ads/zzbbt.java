package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbbt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MotionEvent f10481a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MotionEvent f10482b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f10483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f10484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfen f10485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbbv f10486f;

    public zzbbt(Context context, ScheduledExecutorService scheduledExecutorService, zzbbv zzbbvVar, zzfen zzfenVar, byte[] bArr) {
        this.f10483c = context;
        this.f10484d = scheduledExecutorService;
        this.f10486f = zzbbvVar;
        this.f10485e = zzfenVar;
    }

    public final zzfut a() {
        return (zzfua) zzfuj.n(zzfua.D(zzfuj.h(null)), ((Long) zzbcj.f10560c.e()).longValue(), TimeUnit.MILLISECONDS, this.f10484d);
    }

    public final void b(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.f10481a.getEventTime()) {
            this.f10481a = MotionEvent.obtain(motionEvent);
        } else {
            if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.f10482b.getEventTime()) {
                return;
            }
            this.f10482b = MotionEvent.obtain(motionEvent);
        }
    }
}
