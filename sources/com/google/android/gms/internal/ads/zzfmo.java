package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfmo extends zzfml {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f18433p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfml f18434q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfmv f18435r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfmo(zzfmv zzfmvVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzfml zzfmlVar) {
        super(taskCompletionSource);
        this.f18435r = zzfmvVar;
        this.f18433p = taskCompletionSource2;
        this.f18434q = zzfmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfml
    public final void a() {
        synchronized (this.f18435r.f18447f) {
            zzfmv.n(this.f18435r, this.f18433p);
            if (this.f18435r.f18452k.getAndIncrement() > 0) {
                this.f18435r.f18443b.c("Already connected to the service.", new Object[0]);
            }
            zzfmv.p(this.f18435r, this.f18434q);
        }
    }
}
