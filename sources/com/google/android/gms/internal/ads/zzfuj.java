package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfuj extends zzful {
    public static zzfui a(Iterable iterable) {
        return new zzfui(false, zzfqk.r(iterable), null);
    }

    public static zzfui b(Iterable iterable) {
        return new zzfui(true, zzfqk.r(iterable), null);
    }

    @SafeVarargs
    public static zzfui c(zzfut... zzfutVarArr) {
        return new zzfui(true, zzfqk.t(zzfutVarArr), null);
    }

    public static zzfut d(Iterable iterable) {
        return new zzftr(zzfqk.r(iterable), true);
    }

    public static zzfut e(zzfut zzfutVar, Class cls, zzfnj zzfnjVar, Executor executor) {
        zzfsu zzfsuVar = new zzfsu(zzfutVar, cls, zzfnjVar);
        zzfutVar.f(zzfsuVar, zzfva.c(executor, zzfsuVar));
        return zzfsuVar;
    }

    public static zzfut f(zzfut zzfutVar, Class cls, zzftq zzftqVar, Executor executor) {
        zzfst zzfstVar = new zzfst(zzfutVar, cls, zzftqVar);
        zzfutVar.f(zzfstVar, zzfva.c(executor, zzfstVar));
        return zzfstVar;
    }

    public static zzfut g(Throwable th) {
        Objects.requireNonNull(th);
        return new zzfum(th);
    }

    public static zzfut h(Object obj) {
        return obj == null ? zzfun.f18742p : new zzfun(obj);
    }

    public static zzfut i() {
        return zzfun.f18742p;
    }

    public static zzfut j(Callable callable, Executor executor) {
        zzfvj zzfvjVar = new zzfvj(callable);
        executor.execute(zzfvjVar);
        return zzfvjVar;
    }

    public static zzfut k(zzftp zzftpVar, Executor executor) {
        zzfvj zzfvjVar = new zzfvj(zzftpVar);
        executor.execute(zzfvjVar);
        return zzfvjVar;
    }

    public static zzfut l(zzfut zzfutVar, zzfnj zzfnjVar, Executor executor) {
        int i10 = zzftf.f18714x;
        Objects.requireNonNull(zzfnjVar);
        zzfte zzfteVar = new zzfte(zzfutVar, zzfnjVar);
        zzfutVar.f(zzfteVar, zzfva.c(executor, zzfteVar));
        return zzfteVar;
    }

    public static zzfut m(zzfut zzfutVar, zzftq zzftqVar, Executor executor) {
        int i10 = zzftf.f18714x;
        Objects.requireNonNull(executor);
        zzftd zzftdVar = new zzftd(zzfutVar, zzftqVar);
        zzfutVar.f(zzftdVar, zzfva.c(executor, zzftdVar));
        return zzftdVar;
    }

    public static zzfut n(zzfut zzfutVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return zzfutVar.isDone() ? zzfutVar : zzfvg.F(zzfutVar, j10, timeUnit, scheduledExecutorService);
    }

    public static Object o(Future future) throws ExecutionException {
        if (future.isDone()) {
            return zzfvl.a(future);
        }
        throw new IllegalStateException(zzfoj.b("Future was expected to be done: %s", future));
    }

    public static Object p(Future future) {
        try {
            return zzfvl.a(future);
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof Error) {
                throw new zzfty((Error) cause);
            }
            throw new zzfvk(cause);
        }
    }

    public static void q(zzfut zzfutVar, zzfuf zzfufVar, Executor executor) {
        Objects.requireNonNull(zzfufVar);
        zzfutVar.f(new zzfug(zzfutVar, zzfufVar), executor);
    }
}
