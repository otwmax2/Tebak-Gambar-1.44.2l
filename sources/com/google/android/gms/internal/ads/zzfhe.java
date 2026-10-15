package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue f18217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadPoolExecutor f18218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f18219c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfhd f18220d = null;

    public zzfhe() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f18217a = linkedBlockingQueue;
        this.f18218b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private final void c() {
        zzfhd zzfhdVar = (zzfhd) this.f18219c.poll();
        this.f18220d = zzfhdVar;
        if (zzfhdVar != null) {
            zzfhdVar.executeOnExecutor(this.f18218b, new Object[0]);
        }
    }

    public final void a(zzfhd zzfhdVar) {
        this.f18220d = null;
        c();
    }

    public final void b(zzfhd zzfhdVar) {
        zzfhdVar.b(this);
        this.f18219c.add(zzfhdVar);
        if (this.f18220d == null) {
            c();
        }
    }
}
