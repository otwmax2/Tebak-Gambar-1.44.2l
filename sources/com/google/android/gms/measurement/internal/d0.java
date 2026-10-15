package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d0 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgf f24035b;

    public d0(zzgf zzgfVar, String str) {
        this.f24035b = zzgfVar;
        Preconditions.k(str);
        this.f24034a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f24035b.f24394a.U().m().b(this.f24034a, th);
    }
}
