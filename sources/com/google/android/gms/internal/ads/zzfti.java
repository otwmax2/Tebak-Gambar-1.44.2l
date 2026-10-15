package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfti extends zzfto {
    private static final Logger C = Logger.getLogger(zzfti.class.getName());
    private final boolean A;
    private final boolean B;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @CheckForNull
    private zzfqf f18722z;

    zzfti(zzfqf zzfqfVar, boolean z10, boolean z11) {
        super(zzfqfVar.size());
        this.f18722z = zzfqfVar;
        this.A = z10;
        this.B = z11;
    }

    private final void L(int i10, Future future) {
        try {
            Q(i10, zzfuj.o(future));
        } catch (Error e10) {
            e = e10;
            N(e);
        } catch (RuntimeException e11) {
            e = e11;
            N(e);
        } catch (ExecutionException e12) {
            N(e12.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final void U(@CheckForNull zzfqf zzfqfVar) {
        int iE = E();
        int i10 = 0;
        zzfnu.i(iE >= 0, "Less than 0 remaining futures");
        if (iE == 0) {
            if (zzfqfVar != null) {
                zzfsj it = zzfqfVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        L(i10, future);
                    }
                    i10++;
                }
            }
            J();
            R();
            V(2);
        }
    }

    private final void N(Throwable th) {
        Objects.requireNonNull(th);
        if (this.A && !i(th) && P(G(), th)) {
            O(th);
        } else if (th instanceof Error) {
            O(th);
        }
    }

    private static void O(Throwable th) {
        C.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean P(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfto
    final void K(Set set) {
        Objects.requireNonNull(set);
        if (isCancelled()) {
            return;
        }
        Throwable thA = a();
        thA.getClass();
        P(set, thA);
    }

    abstract void Q(int i10, Object obj);

    abstract void R();

    final void S() {
        zzfqf zzfqfVar = this.f18722z;
        zzfqfVar.getClass();
        if (zzfqfVar.isEmpty()) {
            R();
            return;
        }
        if (!this.A) {
            final zzfqf zzfqfVar2 = this.B ? this.f18722z : null;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfth
                @Override // java.lang.Runnable
                public final void run() {
                    this.f18720o.U(zzfqfVar2);
                }
            };
            zzfsj it = this.f18722z.iterator();
            while (it.hasNext()) {
                ((zzfut) it.next()).f(runnable, zzftx.INSTANCE);
            }
            return;
        }
        zzfsj it2 = this.f18722z.iterator();
        final int i10 = 0;
        while (it2.hasNext()) {
            final zzfut zzfutVar = (zzfut) it2.next();
            zzfutVar.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftg
                @Override // java.lang.Runnable
                public final void run() {
                    this.f18717o.T(zzfutVar, i10);
                }
            }, zzftx.INSTANCE);
            i10++;
        }
    }

    final /* synthetic */ void T(zzfut zzfutVar, int i10) {
        try {
            if (zzfutVar.isCancelled()) {
                this.f18722z = null;
                cancel(false);
            } else {
                L(i10, zzfutVar);
            }
        } finally {
            U(null);
        }
    }

    void V(int i10) {
        this.f18722z = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    @CheckForNull
    protected final String d() {
        zzfqf zzfqfVar = this.f18722z;
        return zzfqfVar != null ? "futures=".concat(zzfqfVar.toString()) : super.d();
    }

    @Override // com.google.android.gms.internal.ads.zzfsx
    protected final void g() {
        zzfqf zzfqfVar = this.f18722z;
        V(1);
        if ((zzfqfVar != null) && isCancelled()) {
            boolean zX = x();
            zzfsj it = zzfqfVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zX);
            }
        }
    }
}
