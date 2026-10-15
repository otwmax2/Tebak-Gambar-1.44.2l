package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Deque f17779a = new LinkedBlockingDeque();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Callable f17780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfuu f17781c;

    public zzezt(Callable callable, zzfuu zzfuuVar) {
        this.f17780b = callable;
        this.f17781c = zzfuuVar;
    }

    public final synchronized zzfut a() {
        c(1);
        return (zzfut) this.f17779a.poll();
    }

    public final synchronized void b(zzfut zzfutVar) {
        this.f17779a.addFirst(zzfutVar);
    }

    public final synchronized void c(int i10) {
        int size = i10 - this.f17779a.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f17779a.add(this.f17781c.e(this.f17780b));
        }
    }
}
