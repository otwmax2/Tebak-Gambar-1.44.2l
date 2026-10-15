package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfsx<V> extends zzfvm implements zzfut<V> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final boolean f18668r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Logger f18669s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final zza f18670t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Object f18671u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private volatile Object f18672o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    private volatile zzd f18673p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    private volatile zzk f18674q;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    abstract class zza {
        /* synthetic */ zza(zzfsw zzfswVar) {
        }

        abstract zzd a(zzfsx zzfsxVar, zzd zzdVar);

        abstract zzk b(zzfsx zzfsxVar, zzk zzkVar);

        abstract void c(zzk zzkVar, @CheckForNull zzk zzkVar2);

        abstract void d(zzk zzkVar, Thread thread);

        abstract boolean e(zzfsx zzfsxVar, @CheckForNull zzd zzdVar, zzd zzdVar2);

        abstract boolean f(zzfsx zzfsxVar, @CheckForNull Object obj, Object obj2);

        abstract boolean g(zzfsx zzfsxVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zzb {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @CheckForNull
        static final zzb f18675c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @CheckForNull
        static final zzb f18676d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f18677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @CheckForNull
        final Throwable f18678b;

        static {
            if (zzfsx.f18668r) {
                f18676d = null;
                f18675c = null;
            } else {
                f18676d = new zzb(false, null);
                f18675c = new zzb(true, null);
            }
        }

        zzb(boolean z10, @CheckForNull Throwable th) {
            this.f18677a = z10;
            this.f18678b = th;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    /* JADX INFO: loaded from: classes2.dex */
    final class zzc {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final zzc f18679b = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzfsx.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f18680a;

        zzc(Throwable th) {
            Objects.requireNonNull(th);
            this.f18680a = th;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zzd {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final zzd f18681d = new zzd();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @CheckForNull
        final Runnable f18682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @CheckForNull
        final Executor f18683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @CheckForNull
        zzd f18684c;

        zzd() {
            this.f18682a = null;
            this.f18683b = null;
        }

        zzd(Runnable runnable, Executor executor) {
            this.f18682a = runnable;
            this.f18683b = executor;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zze extends zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<zzk, Thread> f18685a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<zzk, zzk> f18686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<zzfsx, zzk> f18687c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<zzfsx, zzd> f18688d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<zzfsx, Object> f18689e;

        zze(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(null);
            this.f18685a = atomicReferenceFieldUpdater;
            this.f18686b = atomicReferenceFieldUpdater2;
            this.f18687c = atomicReferenceFieldUpdater3;
            this.f18688d = atomicReferenceFieldUpdater4;
            this.f18689e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzd a(zzfsx zzfsxVar, zzd zzdVar) {
            return this.f18688d.getAndSet(zzfsxVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzk b(zzfsx zzfsxVar, zzk zzkVar) {
            return this.f18687c.getAndSet(zzfsxVar, zzkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void c(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            this.f18686b.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void d(zzk zzkVar, Thread thread) {
            this.f18685a.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean e(zzfsx zzfsxVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzfsy.a(this.f18688d, zzfsxVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean f(zzfsx zzfsxVar, @CheckForNull Object obj, Object obj2) {
            return zzfsy.a(this.f18689e, zzfsxVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean g(zzfsx zzfsxVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzfsy.a(this.f18687c, zzfsxVar, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    /* JADX INFO: loaded from: classes2.dex */
    final class zzf<V> implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final zzfsx<V> f18690o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final zzfut<? extends V> f18691p;

        zzf(zzfsx zzfsxVar, zzfut zzfutVar) {
            this.f18690o = zzfsxVar;
            this.f18691p = zzfutVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzfsx) this.f18690o).f18672o != this) {
                return;
            }
            if (zzfsx.f18670t.f(this.f18690o, this, zzfsx.j(this.f18691p))) {
                zzfsx.B(this.f18690o, false);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zzg extends zza {
        private zzg() {
            super(null);
        }

        /* synthetic */ zzg(zzfsz zzfszVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzd a(zzfsx zzfsxVar, zzd zzdVar) {
            zzd zzdVar2;
            synchronized (zzfsxVar) {
                zzdVar2 = zzfsxVar.f18673p;
                if (zzdVar2 != zzdVar) {
                    zzfsxVar.f18673p = zzdVar;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzk b(zzfsx zzfsxVar, zzk zzkVar) {
            zzk zzkVar2;
            synchronized (zzfsxVar) {
                zzkVar2 = zzfsxVar.f18674q;
                if (zzkVar2 != zzkVar) {
                    zzfsxVar.f18674q = zzkVar;
                }
            }
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void c(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zzkVar.f18700b = zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void d(zzk zzkVar, Thread thread) {
            zzkVar.f18699a = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean e(zzfsx zzfsxVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            synchronized (zzfsxVar) {
                if (zzfsxVar.f18673p != zzdVar) {
                    return false;
                }
                zzfsxVar.f18673p = zzdVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean f(zzfsx zzfsxVar, @CheckForNull Object obj, Object obj2) {
            synchronized (zzfsxVar) {
                if (zzfsxVar.f18672o != obj) {
                    return false;
                }
                zzfsxVar.f18672o = obj2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean g(zzfsx zzfsxVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            synchronized (zzfsxVar) {
                if (zzfsxVar.f18674q != zzkVar) {
                    return false;
                }
                zzfsxVar.f18674q = zzkVar2;
                return true;
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    /* JADX INFO: loaded from: classes2.dex */
    interface zzh<V> extends zzfut<V> {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    /* JADX INFO: loaded from: classes2.dex */
    abstract class zzi<V> extends zzfsx<V> implements zzh<V> {
        zzi() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zzj extends zza {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Unsafe f18692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final long f18693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final long f18694c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final long f18695d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final long f18696e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f18697f;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.ads.zzfsx.zzj.1
                    @Override // java.security.PrivilegedExceptionAction
                    public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            }
            try {
                f18694c = unsafe.objectFieldOffset(zzfsx.class.getDeclaredField("q"));
                f18693b = unsafe.objectFieldOffset(zzfsx.class.getDeclaredField("p"));
                f18695d = unsafe.objectFieldOffset(zzfsx.class.getDeclaredField("o"));
                f18696e = unsafe.objectFieldOffset(zzk.class.getDeclaredField("a"));
                f18697f = unsafe.objectFieldOffset(zzk.class.getDeclaredField("b"));
                f18692a = unsafe;
            } catch (NoSuchFieldException e11) {
                throw new RuntimeException(e11);
            } catch (RuntimeException e12) {
                throw e12;
            }
        }

        private zzj() {
            super(null);
        }

        /* synthetic */ zzj(zzftb zzftbVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzd a(zzfsx zzfsxVar, zzd zzdVar) {
            zzd zzdVar2;
            do {
                zzdVar2 = zzfsxVar.f18673p;
                if (zzdVar == zzdVar2) {
                    return zzdVar2;
                }
            } while (!e(zzfsxVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final zzk b(zzfsx zzfsxVar, zzk zzkVar) {
            zzk zzkVar2;
            do {
                zzkVar2 = zzfsxVar.f18674q;
                if (zzkVar == zzkVar2) {
                    return zzkVar2;
                }
            } while (!g(zzfsxVar, zzkVar2, zzkVar));
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void c(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            f18692a.putObject(zzkVar, f18697f, zzkVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final void d(zzk zzkVar, Thread thread) {
            f18692a.putObject(zzkVar, f18696e, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean e(zzfsx zzfsxVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzfta.a(f18692a, zzfsxVar, f18693b, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean f(zzfsx zzfsxVar, @CheckForNull Object obj, Object obj2) {
            return zzfta.a(f18692a, zzfsxVar, f18695d, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzfsx.zza
        final boolean g(zzfsx zzfsxVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzfta.a(f18692a, zzfsxVar, f18694c, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
    final class zzk {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final zzk f18698c = new zzk(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @CheckForNull
        volatile Thread f18699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @CheckForNull
        volatile zzk f18700b;

        zzk() {
            zzfsx.f18670t.d(this, Thread.currentThread());
        }

        zzk(boolean z10) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z10;
        Throwable th;
        Throwable th2;
        zza zzgVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z10 = false;
        }
        f18668r = z10;
        f18669s = Logger.getLogger(zzfsx.class.getName());
        Object[] objArr = 0;
        try {
            zzgVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Error | RuntimeException e10) {
            try {
                th2 = e10;
                zzgVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, "b"), AtomicReferenceFieldUpdater.newUpdater(zzfsx.class, zzk.class, "q"), AtomicReferenceFieldUpdater.newUpdater(zzfsx.class, zzd.class, "p"), AtomicReferenceFieldUpdater.newUpdater(zzfsx.class, Object.class, "o"));
                th = null;
            } catch (Error | RuntimeException e11) {
                th = e11;
                th2 = e10;
                zzgVar = new zzg(objArr == true ? 1 : 0);
            }
        }
        f18670t = zzgVar;
        if (th != null) {
            Logger logger = f18669s;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f18671u = new Object();
    }

    protected zzfsx() {
    }

    private final void A(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e10) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e10.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B(zzfsx zzfsxVar, boolean z10) {
        zzd zzdVar = null;
        while (true) {
            for (zzk zzkVarB = f18670t.b(zzfsxVar, zzk.f18698c); zzkVarB != null; zzkVarB = zzkVarB.f18700b) {
                Thread thread = zzkVarB.f18699a;
                if (thread != null) {
                    zzkVarB.f18699a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z10) {
                zzfsxVar.u();
            }
            zzfsxVar.g();
            zzd zzdVar2 = zzdVar;
            zzd zzdVarA = f18670t.a(zzfsxVar, zzd.f18681d);
            zzd zzdVar3 = zzdVar2;
            while (zzdVarA != null) {
                zzd zzdVar4 = zzdVarA.f18684c;
                zzdVarA.f18684c = zzdVar3;
                zzdVar3 = zzdVarA;
                zzdVarA = zzdVar4;
            }
            while (zzdVar3 != null) {
                zzdVar = zzdVar3.f18684c;
                Runnable runnable = zzdVar3.f18682a;
                runnable.getClass();
                if (runnable instanceof zzf) {
                    zzf zzfVar = (zzf) runnable;
                    zzfsxVar = zzfVar.f18690o;
                    if (zzfsxVar.f18672o == zzfVar) {
                        if (f18670t.f(zzfsxVar, zzfVar, j(zzfVar.f18691p))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.f18683b;
                    executor.getClass();
                    C(runnable, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z10 = false;
        }
    }

    private static void C(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f18669s.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e10);
        }
    }

    private final void b(zzk zzkVar) {
        zzkVar.f18699a = null;
        while (true) {
            zzk zzkVar2 = this.f18674q;
            if (zzkVar2 != zzk.f18698c) {
                zzk zzkVar3 = null;
                while (zzkVar2 != null) {
                    zzk zzkVar4 = zzkVar2.f18700b;
                    if (zzkVar2.f18699a != null) {
                        zzkVar3 = zzkVar2;
                    } else if (zzkVar3 != null) {
                        zzkVar3.f18700b = zzkVar4;
                        if (zzkVar3.f18699a == null) {
                            break;
                        }
                    } else if (!f18670t.g(this, zzkVar2, zzkVar4)) {
                        break;
                    }
                    zzkVar2 = zzkVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object c(Object obj) throws ExecutionException {
        if (obj instanceof zzb) {
            Throwable th = ((zzb) obj).f18678b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).f18680a);
        }
        if (obj == f18671u) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object j(zzfut zzfutVar) {
        Throwable thA;
        if (zzfutVar instanceof zzh) {
            Object zzbVar = ((zzfsx) zzfutVar).f18672o;
            if (zzbVar instanceof zzb) {
                zzb zzbVar2 = (zzb) zzbVar;
                if (zzbVar2.f18677a) {
                    Throwable th = zzbVar2.f18678b;
                    zzbVar = th != null ? new zzb(false, th) : zzb.f18676d;
                }
            }
            zzbVar.getClass();
            return zzbVar;
        }
        if ((zzfutVar instanceof zzfvm) && (thA = ((zzfvm) zzfutVar).a()) != null) {
            return new zzc(thA);
        }
        boolean zIsCancelled = zzfutVar.isCancelled();
        if ((!f18668r) && zIsCancelled) {
            zzb zzbVar3 = zzb.f18676d;
            zzbVar3.getClass();
            return zzbVar3;
        }
        try {
            Object objK = k(zzfutVar);
            if (!zIsCancelled) {
                return objK == null ? f18671u : objK;
            }
            return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + String.valueOf(zzfutVar)));
        } catch (Error e10) {
            e = e10;
            return new zzc(e);
        } catch (CancellationException e11) {
            return !zIsCancelled ? new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzfutVar)), e11)) : new zzb(false, e11);
        } catch (RuntimeException e12) {
            e = e12;
            return new zzc(e);
        } catch (ExecutionException e13) {
            return zIsCancelled ? new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzfutVar)), e13)) : new zzc(e13.getCause());
        }
    }

    private static Object k(Future future) throws ExecutionException {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final void y(StringBuilder sb) {
        try {
            Object objK = k(this);
            sb.append("SUCCESS, result=[");
            if (objK == null) {
                sb.append("null");
            } else if (objK == this) {
                sb.append("this future");
            } else {
                sb.append(objK.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objK)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e10.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb.append("FAILURE, cause=[");
            sb.append(e11.getCause());
            sb.append("]");
        }
    }

    private final void z(StringBuilder sb) {
        String strConcat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f18672o;
        if (obj instanceof zzf) {
            sb.append(", setFuture=[");
            A(sb, ((zzf) obj).f18691p);
            sb.append("]");
        } else {
            try {
                strConcat = zzfoj.a(d());
            } catch (RuntimeException | StackOverflowError e10) {
                strConcat = "Exception thrown from implementation: ".concat(String.valueOf(e10.getClass()));
            }
            if (strConcat != null) {
                sb.append(", info=[");
                sb.append(strConcat);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            y(sb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    @CheckForNull
    protected final Throwable a() {
        if (!(this instanceof zzh)) {
            return null;
        }
        Object obj = this.f18672o;
        if (obj instanceof zzc) {
            return ((zzc) obj).f18680a;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        zzb zzbVar;
        Object obj = this.f18672o;
        if (!(obj instanceof zzf) && !(obj == null)) {
            return false;
        }
        if (f18668r) {
            zzbVar = new zzb(z10, new CancellationException("Future.cancel() was called."));
        } else {
            zzbVar = z10 ? zzb.f18675c : zzb.f18676d;
            zzbVar.getClass();
        }
        boolean z11 = false;
        zzfsx<V> zzfsxVar = this;
        while (true) {
            if (f18670t.f(zzfsxVar, obj, zzbVar)) {
                B(zzfsxVar, z10);
                if (!(obj instanceof zzf)) {
                    break;
                }
                zzfut<? extends V> zzfutVar = ((zzf) obj).f18691p;
                if (!(zzfutVar instanceof zzh)) {
                    zzfutVar.cancel(z10);
                    break;
                }
                zzfsxVar = (zzfsx) zzfutVar;
                obj = zzfsxVar.f18672o;
                if (!(obj == null) && !(obj instanceof zzf)) {
                    break;
                }
                z11 = true;
            } else {
                obj = zzfsxVar.f18672o;
                if (!(obj instanceof zzf)) {
                    return z11;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    protected String d() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzfut
    public void f(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfnu.c(runnable, "Runnable was null.");
        zzfnu.c(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.f18673p) != zzd.f18681d) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.f18684c = zzdVar;
                if (f18670t.e(this, zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.f18673p;
                }
            } while (zzdVar != zzd.f18681d);
        }
        C(runnable, executor);
    }

    protected void g() {
    }

    @Override // java.util.concurrent.Future
    public Object get() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f18672o;
        if ((obj2 != null) && (!(obj2 instanceof zzf))) {
            return c(obj2);
        }
        zzk zzkVar = this.f18674q;
        if (zzkVar != zzk.f18698c) {
            zzk zzkVar2 = new zzk();
            do {
                zza zzaVar = f18670t;
                zzaVar.c(zzkVar2, zzkVar);
                if (zzaVar.g(this, zzkVar, zzkVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            b(zzkVar2);
                            throw new InterruptedException();
                        }
                        obj = this.f18672o;
                    } while (!((obj != null) & (!(obj instanceof zzf))));
                    return c(obj);
                }
                zzkVar = this.f18674q;
            } while (zzkVar != zzk.f18698c);
        }
        Object obj3 = this.f18672o;
        obj3.getClass();
        return c(obj3);
    }

    protected boolean h(Object obj) {
        if (obj == null) {
            obj = f18671u;
        }
        if (!f18670t.f(this, null, obj)) {
            return false;
        }
        B(this, false);
        return true;
    }

    protected boolean i(Throwable th) {
        Objects.requireNonNull(th);
        if (!f18670t.f(this, null, new zzc(th))) {
            return false;
        }
        B(this, false);
        return true;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f18672o instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (this.f18672o != null) & (!(r0 instanceof zzf));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            y(sb);
        } else {
            z(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    protected void u() {
    }

    final void v(@CheckForNull Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(x());
        }
    }

    protected final boolean w(zzfut zzfutVar) {
        zzc zzcVar;
        Objects.requireNonNull(zzfutVar);
        Object obj = this.f18672o;
        if (obj == null) {
            if (zzfutVar.isDone()) {
                if (!f18670t.f(this, null, j(zzfutVar))) {
                    return false;
                }
                B(this, false);
                return true;
            }
            zzf zzfVar = new zzf(this, zzfutVar);
            if (f18670t.f(this, null, zzfVar)) {
                try {
                    zzfutVar.f(zzfVar, zzftx.INSTANCE);
                } catch (Error | RuntimeException e10) {
                    try {
                        zzcVar = new zzc(e10);
                    } catch (Error | RuntimeException unused) {
                        zzcVar = zzc.f18679b;
                    }
                    f18670t.f(this, zzfVar, zzcVar);
                }
                return true;
            }
            obj = this.f18672o;
        }
        if (obj instanceof zzb) {
            zzfutVar.cancel(((zzb) obj).f18677a);
        }
        return false;
    }

    protected final boolean x() {
        Object obj = this.f18672o;
        return (obj instanceof zzb) && ((zzb) obj).f18677a;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f18672o;
            boolean z10 = true;
            if ((obj != null) & (!(obj instanceof zzf))) {
                return c(obj);
            }
            long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzk zzkVar = this.f18674q;
                if (zzkVar != zzk.f18698c) {
                    zzk zzkVar2 = new zzk();
                    do {
                        zza zzaVar = f18670t;
                        zzaVar.c(zzkVar2, zzkVar);
                        if (zzaVar.g(this, zzkVar, zzkVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f18672o;
                                    if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                                        return c(obj2);
                                    }
                                    nanos = jNanoTime - System.nanoTime();
                                } else {
                                    b(zzkVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            b(zzkVar2);
                        } else {
                            zzkVar = this.f18674q;
                        }
                    } while (zzkVar != zzk.f18698c);
                }
                Object obj3 = this.f18672o;
                obj3.getClass();
                return c(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.f18672o;
                if ((obj4 != null) & (!(obj4 instanceof zzf))) {
                    return c(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = jNanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String string = toString();
            String string2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = string2.toLowerCase(locale);
            String strConcat = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String strConcat2 = strConcat.concat(" (plus ");
                long j11 = -nanos;
                long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(jConvert);
                if (jConvert != 0 && nanos2 <= 1000) {
                    z10 = false;
                }
                if (jConvert > 0) {
                    String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                    if (z10) {
                        strConcat3 = strConcat3.concat(",");
                    }
                    strConcat2 = strConcat3.concat(" ");
                }
                if (z10) {
                    strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
                }
                strConcat = strConcat2.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(strConcat + " for " + string);
        }
        throw new InterruptedException();
    }
}
