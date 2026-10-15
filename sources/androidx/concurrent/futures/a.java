package androidx.concurrent.futures;

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

/* JADX INFO: compiled from: AbstractResolvableFuture.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<V> implements a5.a<V> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final boolean f1336r = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Logger f1337s = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final b f1338t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Object f1339u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    volatile Object f1340o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile e f1341p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    volatile i f1342q;

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static abstract class b {
        private b() {
        }

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean b(a<?> aVar, Object obj, Object obj2);

        abstract boolean c(a<?> aVar, i iVar, i iVar2);

        abstract void d(i iVar, i iVar2);

        abstract void e(i iVar, Thread thread);
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final c f1343c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final c f1344d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f1345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Throwable f1346b;

        static {
            if (a.f1336r) {
                f1344d = null;
                f1343c = null;
            } else {
                f1344d = new c(false, null);
                f1343c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th) {
            this.f1345a = z10;
            this.f1346b = th;
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final d f1347b = new d(new C0019a("Failure occurred while trying to finish a future."));

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f1348a;

        /* JADX INFO: renamed from: androidx.concurrent.futures.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractResolvableFuture.java */
        class C0019a extends Throwable {
            C0019a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th) {
            this.f1348a = (Throwable) a.j(th);
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final e f1349d = new e(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f1350a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f1351b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e f1352c;

        e(Runnable runnable, Executor executor) {
            this.f1350a = runnable;
            this.f1351b = executor;
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class f extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, Thread> f1353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, i> f1354b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, i> f1355c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, e> f1356d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, Object> f1357e;

        f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f1353a = atomicReferenceFieldUpdater;
            this.f1354b = atomicReferenceFieldUpdater2;
            this.f1355c = atomicReferenceFieldUpdater3;
            this.f1356d = atomicReferenceFieldUpdater4;
            this.f1357e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.b.a(this.f1356d, aVar, eVar, eVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.b.a(this.f1357e, aVar, obj, obj2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a<?> aVar, i iVar, i iVar2) {
            return androidx.concurrent.futures.b.a(this.f1355c, aVar, iVar, iVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void d(i iVar, i iVar2) {
            this.f1354b.lazySet(iVar, iVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void e(i iVar, Thread thread) {
            this.f1353a.lazySet(iVar, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class g<V> implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final a<V> f1358o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final a5.a<? extends V> f1359p;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1358o.f1340o != this) {
                return;
            }
            if (a.f1338t.b(this.f1358o, this, a.o(this.f1359p))) {
                a.l(this.f1358o);
            }
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class h extends b {
        h() {
            super();
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (aVar.f1341p != eVar) {
                    return false;
                }
                aVar.f1341p = eVar2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f1340o != obj) {
                    return false;
                }
                aVar.f1340o = obj2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a<?> aVar, i iVar, i iVar2) {
            synchronized (aVar) {
                if (aVar.f1342q != iVar) {
                    return false;
                }
                aVar.f1342q = iVar2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        void d(i iVar, i iVar2) {
            iVar.f1362b = iVar2;
        }

        @Override // androidx.concurrent.futures.a.b
        void e(i iVar, Thread thread) {
            iVar.f1361a = thread;
        }
    }

    /* JADX INFO: compiled from: AbstractResolvableFuture.java */
    private static final class i {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final i f1360c = new i(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile Thread f1361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile i f1362b;

        i(boolean z10) {
        }

        void a(i iVar) {
            a.f1338t.d(this, iVar);
        }

        void b() {
            Thread thread = this.f1361a;
            if (thread != null) {
                this.f1361a = null;
                LockSupport.unpark(thread);
            }
        }

        i() {
            a.f1338t.e(this, Thread.currentThread());
        }
    }

    static {
        b hVar;
        try {
            hVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, i.class, "q"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "p"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "o"));
            th = null;
        } catch (Throwable th) {
            th = th;
            hVar = new h();
        }
        f1338t = hVar;
        if (th != null) {
            f1337s.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f1339u = new Object();
    }

    protected a() {
    }

    private String K(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    private void c(StringBuilder sb) {
        try {
            Object objP = p(this);
            sb.append("SUCCESS, result=[");
            sb.append(K(objP));
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

    private static CancellationException i(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static <T> T j(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    private e k(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f1341p;
        } while (!f1338t.a(this, eVar2, e.f1349d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f1352c;
            eVar4.f1352c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static void l(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.s();
            aVar.g();
            e eVarK = aVar.k(eVar);
            while (eVarK != null) {
                eVar = eVarK.f1352c;
                Runnable runnable = eVarK.f1350a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    aVar = gVar.f1358o;
                    if (aVar.f1340o == gVar) {
                        if (f1338t.b(aVar, gVar, o(gVar.f1359p))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m(runnable, eVarK.f1351b);
                }
                eVarK = eVar;
            }
            return;
        }
    }

    private static void m(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f1337s.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V n(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw i("Task was cancelled.", ((c) obj).f1346b);
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f1348a);
        }
        if (obj == f1339u) {
            return null;
        }
        return obj;
    }

    static Object o(a5.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f1340o;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.f1345a ? cVar.f1346b != null ? new c(false, cVar.f1346b) : c.f1344d : obj;
        }
        boolean zIsCancelled = aVar.isCancelled();
        if ((!f1336r) && zIsCancelled) {
            return c.f1344d;
        }
        try {
            Object objP = p(aVar);
            return objP == null ? f1339u : objP;
        } catch (CancellationException e10) {
            if (zIsCancelled) {
                return new c(false, e10);
            }
            return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + aVar, e10));
        } catch (ExecutionException e11) {
            return new d(e11.getCause());
        } catch (Throwable th) {
            return new d(th);
        }
    }

    static <V> V p(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
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
        return v10;
    }

    private void s() {
        i iVar;
        do {
            iVar = this.f1342q;
        } while (!f1338t.c(this, iVar, i.f1360c));
        while (iVar != null) {
            iVar.b();
            iVar = iVar.f1362b;
        }
    }

    private void u(i iVar) {
        iVar.f1361a = null;
        while (true) {
            i iVar2 = this.f1342q;
            if (iVar2 == i.f1360c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.f1362b;
                if (iVar2.f1361a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f1362b = iVar4;
                    if (iVar3.f1361a == null) {
                        break;
                    }
                } else if (!f1338t.c(this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected boolean I(V v10) {
        if (v10 == null) {
            v10 = (V) f1339u;
        }
        if (!f1338t.b(this, null, v10)) {
            return false;
        }
        l(this);
        return true;
    }

    protected boolean J(Throwable th) {
        if (!f1338t.b(this, null, new d((Throwable) j(th)))) {
            return false;
        }
        l(this);
        return true;
    }

    protected final boolean L() {
        Object obj = this.f1340o;
        return (obj instanceof c) && ((c) obj).f1345a;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        Object obj = this.f1340o;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = f1336r ? new c(z10, new CancellationException("Future.cancel() was called.")) : z10 ? c.f1343c : c.f1344d;
        boolean z11 = false;
        a<V> aVar = this;
        while (true) {
            if (f1338t.b(aVar, obj, cVar)) {
                if (z10) {
                    aVar.q();
                }
                l(aVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                a5.a<? extends V> aVar2 = ((g) obj).f1359p;
                if (!(aVar2 instanceof a)) {
                    aVar2.cancel(z10);
                    return true;
                }
                aVar = (a) aVar2;
                obj = aVar.f1340o;
                if (!(obj == null) && !(obj instanceof g)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = aVar.f1340o;
                if (!(obj instanceof g)) {
                    return z11;
                }
            }
        }
    }

    @Override // a5.a
    public final void e(Runnable runnable, Executor executor) {
        j(runnable);
        j(executor);
        e eVar = this.f1341p;
        if (eVar != e.f1349d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f1352c = eVar;
                if (f1338t.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f1341p;
                }
            } while (eVar != e.f1349d);
        }
        m(runnable, executor);
    }

    protected void g() {
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f1340o;
        if ((obj != null) && (!(obj instanceof g))) {
            return n(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            i iVar = this.f1342q;
            if (iVar != i.f1360c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f1338t.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                u(iVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f1340o;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return n(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        u(iVar2);
                    } else {
                        iVar = this.f1342q;
                    }
                } while (iVar != i.f1360c);
            }
            return n(this.f1340o);
        }
        while (nanos > 0) {
            Object obj3 = this.f1340o;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return n(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String str2 = str + " (plus ";
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            boolean z10 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z10) {
                    str3 = str3 + ",";
                }
                str2 = str3 + " ";
            }
            if (z10) {
                str2 = str2 + nanos2 + " nanoseconds ";
            }
            str = str2 + "delay)";
        }
        if (isDone()) {
            throw new TimeoutException(str + " but future completed as timeout expired");
        }
        throw new TimeoutException(str + " for " + string);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1340o instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.f1340o != null);
    }

    protected void q() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String r() {
        Object obj = this.f1340o;
        if (obj instanceof g) {
            return "setFuture=[" + K(((g) obj).f1359p) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public String toString() {
        String strR;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            c(sb);
        } else {
            try {
                strR = r();
            } catch (RuntimeException e10) {
                strR = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strR != null && !strR.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strR);
                sb.append("]");
            } else if (isDone()) {
                c(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1340o;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return n(obj2);
            }
            i iVar = this.f1342q;
            if (iVar != i.f1360c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f1338t.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f1340o;
                            } else {
                                u(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return n(obj);
                    }
                    iVar = this.f1342q;
                } while (iVar != i.f1360c);
            }
            return n(this.f1340o);
        }
        throw new InterruptedException();
    }
}
