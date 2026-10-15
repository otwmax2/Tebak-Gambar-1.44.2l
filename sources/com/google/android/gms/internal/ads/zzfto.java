package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfsx;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfto extends zzfsx.zzi {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final zzftk f18725x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Logger f18726y = Logger.getLogger(zzfto.class.getName());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    private volatile Set<Throwable> f18727v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private volatile int f18728w;

    static {
        Throwable th;
        zzftk zzftnVar;
        zzftm zzftmVar = null;
        try {
            zzftnVar = new zzftl(AtomicReferenceFieldUpdater.newUpdater(zzfto.class, Set.class, "v"), AtomicIntegerFieldUpdater.newUpdater(zzfto.class, "w"));
            th = null;
        } catch (Error | RuntimeException e10) {
            th = e10;
            zzftnVar = new zzftn(zzftmVar);
        }
        f18725x = zzftnVar;
        if (th != null) {
            f18726y.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    zzfto(int i10) {
        this.f18728w = i10;
    }

    final int E() {
        return f18725x.a(this);
    }

    final Set G() {
        Set<Throwable> set = this.f18727v;
        if (set != null) {
            return set;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        K(setNewSetFromMap);
        f18725x.b(this, null, setNewSetFromMap);
        Set<Throwable> set2 = this.f18727v;
        set2.getClass();
        return set2;
    }

    final void J() {
        this.f18727v = null;
    }

    abstract void K(Set set);
}
