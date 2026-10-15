package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfui {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f18740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfqk f18741b;

    /* synthetic */ zzfui(boolean z10, zzfqk zzfqkVar, zzfuh zzfuhVar) {
        this.f18740a = z10;
        this.f18741b = zzfqkVar;
    }

    public final zzfut a(Callable callable, Executor executor) {
        return new zzftw(this.f18741b, this.f18740a, executor, callable);
    }
}
