package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e0 extends FutureTask implements Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f24053o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final boolean f24054p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f24055q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzgf f24056r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e0(zzgf zzgfVar, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        this.f24056r = zzgfVar;
        Preconditions.k(str);
        long andIncrement = zzgf.f24695l.getAndIncrement();
        this.f24053o = andIncrement;
        this.f24055q = str;
        this.f24054p = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzgfVar.f24394a.U().m().a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        e0 e0Var = (e0) obj;
        boolean z10 = this.f24054p;
        if (z10 != e0Var.f24054p) {
            return !z10 ? 1 : -1;
        }
        long j10 = this.f24053o;
        long j11 = e0Var.f24053o;
        if (j10 < j11) {
            return -1;
        }
        if (j10 > j11) {
            return 1;
        }
        this.f24056r.f24394a.U().o().b("Two tasks share the same index. index", Long.valueOf(this.f24053o));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f24056r.f24394a.U().m().b(this.f24055q, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e0(zzgf zzgfVar, Callable callable, boolean z10, String str) {
        super(callable);
        this.f24056r = zzgfVar;
        Preconditions.k("Task exception on worker thread");
        long andIncrement = zzgf.f24695l.getAndIncrement();
        this.f24053o = andIncrement;
        this.f24055q = "Task exception on worker thread";
        this.f24054p = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzgfVar.f24394a.U().m().a("Tasks index overflow");
        }
    }
}
