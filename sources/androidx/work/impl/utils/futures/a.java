package androidx.work.impl.utils.futures;

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

/* JADX INFO: compiled from: AbstractFuture.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<V> implements a5.a<V> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final boolean f4494r = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Logger f4495s = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final b f4496t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Object f4497u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    volatile Object f4498o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile e f4499p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    volatile i f4500q;

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static abstract class b {
        private b() {
        }

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean b(a<?> aVar, Object obj, Object obj2);

        abstract boolean c(a<?> aVar, i iVar, i iVar2);

        abstract void d(i iVar, i iVar2);

        abstract void e(i iVar, Thread thread);
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final c f4501c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final c f4502d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f4503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Throwable f4504b;

        static {
            if (a.f4494r) {
                f4502d = null;
                f4501c = null;
            } else {
                f4502d = new c(false, null);
                f4501c = new c(true, null);
            }
        }

        c(boolean z10, Throwable th) {
            this.f4503a = z10;
            this.f4504b = th;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final d f4505b = new d(new C0076a("Failure occurred while trying to finish a future."));

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Throwable f4506a;

        /* JADX INFO: renamed from: androidx.work.impl.utils.futures.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractFuture.java */
        class C0076a extends Throwable {
            C0076a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th) {
            this.f4506a = (Throwable) a.d(th);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final e f4507d = new e(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f4508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f4509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e f4510c;

        e(Runnable runnable, Executor executor) {
            this.f4508a = runnable;
            this.f4509b = executor;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class f extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, Thread> f4511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<i, i> f4512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, i> f4513c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, e> f4514d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, Object> f4515e;

        f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f4511a = atomicReferenceFieldUpdater;
            this.f4512b = atomicReferenceFieldUpdater2;
            this.f4513c = atomicReferenceFieldUpdater3;
            this.f4514d = atomicReferenceFieldUpdater4;
            this.f4515e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.b.a(this.f4514d, aVar, eVar, eVar2);
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.b.a(this.f4515e, aVar, obj, obj2);
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean c(a<?> aVar, i iVar, i iVar2) {
            return androidx.concurrent.futures.b.a(this.f4513c, aVar, iVar, iVar2);
        }

        @Override // androidx.work.impl.utils.futures.a.b
        void d(i iVar, i iVar2) {
            this.f4512b.lazySet(iVar, iVar2);
        }

        @Override // androidx.work.impl.utils.futures.a.b
        void e(i iVar, Thread thread) {
            this.f4511a.lazySet(iVar, thread);
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class g<V> implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final a<V> f4516o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final a5.a<? extends V> f4517p;

        g(a<V> aVar, a5.a<? extends V> aVar2) {
            this.f4516o = aVar;
            this.f4517p = aVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4516o.f4498o != this) {
                return;
            }
            if (a.f4496t.b(this.f4516o, this, a.k(this.f4517p))) {
                a.h(this.f4516o);
            }
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class h extends b {
        h() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (aVar.f4499p != eVar) {
                    return false;
                }
                aVar.f4499p = eVar2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f4498o != obj) {
                    return false;
                }
                aVar.f4498o = obj2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.a.b
        boolean c(a<?> aVar, i iVar, i iVar2) {
            synchronized (aVar) {
                if (aVar.f4500q != iVar) {
                    return false;
                }
                aVar.f4500q = iVar2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.a.b
        void d(i iVar, i iVar2) {
            iVar.f4520b = iVar2;
        }

        @Override // androidx.work.impl.utils.futures.a.b
        void e(i iVar, Thread thread) {
            iVar.f4519a = thread;
        }
    }

    /* JADX INFO: compiled from: AbstractFuture.java */
    private static final class i {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final i f4518c = new i(false);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile Thread f4519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile i f4520b;

        i(boolean z10) {
        }

        void a(i iVar) {
            a.f4496t.d(this, iVar);
        }

        void b() {
            Thread thread = this.f4519a;
            if (thread != null) {
                this.f4519a = null;
                LockSupport.unpark(thread);
            }
        }

        i() {
            a.f4496t.e(this, Thread.currentThread());
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
        f4496t = hVar;
        if (th != null) {
            f4495s.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f4497u = new Object();
    }

    protected a() {
    }

    private void a(StringBuilder sb) {
        try {
            Object objL = l(this);
            sb.append("SUCCESS, result=[");
            sb.append(t(objL));
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

    private static CancellationException c(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static <T> T d(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    private e g(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f4499p;
        } while (!f4496t.a(this, eVar2, e.f4507d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f4510c;
            eVar4.f4510c = eVar3;
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
    static void h(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.o();
            aVar.b();
            e eVarG = aVar.g(eVar);
            while (eVarG != null) {
                eVar = eVarG.f4510c;
                Runnable runnable = eVarG.f4508a;
                if (runnable instanceof g) {
                    g gVar = (g) runnable;
                    aVar = gVar.f4516o;
                    if (aVar.f4498o == gVar) {
                        if (f4496t.b(aVar, gVar, k(gVar.f4517p))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    i(runnable, eVarG.f4509b);
                }
                eVarG = eVar;
            }
            return;
        }
    }

    private static void i(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            f4495s.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V j(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            throw c("Task was cancelled.", ((c) obj).f4504b);
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f4506a);
        }
        if (obj == f4497u) {
            return null;
        }
        return obj;
    }

    static Object k(a5.a<?> aVar) {
        if (aVar instanceof a) {
            Object obj = ((a) aVar).f4498o;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.f4503a ? cVar.f4504b != null ? new c(false, cVar.f4504b) : c.f4502d : obj;
        }
        boolean zIsCancelled = aVar.isCancelled();
        if ((!f4494r) && zIsCancelled) {
            return c.f4502d;
        }
        try {
            Object objL = l(aVar);
            return objL == null ? f4497u : objL;
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

    private static <V> V l(Future<V> future) throws ExecutionException {
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

    private void o() {
        i iVar;
        do {
            iVar = this.f4500q;
        } while (!f4496t.c(this, iVar, i.f4518c));
        while (iVar != null) {
            iVar.b();
            iVar = iVar.f4520b;
        }
    }

    private void p(i iVar) {
        iVar.f4519a = null;
        while (true) {
            i iVar2 = this.f4500q;
            if (iVar2 == i.f4518c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.f4520b;
                if (iVar2.f4519a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f4520b = iVar4;
                    if (iVar3.f4519a == null) {
                        break;
                    }
                } else if (!f4496t.c(this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    private String t(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    protected void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        Object obj = this.f4498o;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = f4494r ? new c(z10, new CancellationException("Future.cancel() was called.")) : z10 ? c.f4501c : c.f4502d;
        boolean z11 = false;
        a<V> aVar = this;
        while (true) {
            if (f4496t.b(aVar, obj, cVar)) {
                if (z10) {
                    aVar.m();
                }
                h(aVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                a5.a<? extends V> aVar2 = ((g) obj).f4517p;
                if (!(aVar2 instanceof a)) {
                    aVar2.cancel(z10);
                    return true;
                }
                aVar = (a) aVar2;
                obj = aVar.f4498o;
                if (!(obj == null) && !(obj instanceof g)) {
                    return true;
                }
                z11 = true;
            } else {
                obj = aVar.f4498o;
                if (!(obj instanceof g)) {
                    return z11;
                }
            }
        }
    }

    @Override // a5.a
    public final void e(Runnable runnable, Executor executor) {
        d(runnable);
        d(executor);
        e eVar = this.f4499p;
        if (eVar != e.f4507d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f4510c = eVar;
                if (f4496t.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f4499p;
                }
            } while (eVar != e.f4507d);
        }
        i(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f4498o;
        if ((obj != null) && (!(obj instanceof g))) {
            return j(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            i iVar = this.f4500q;
            if (iVar != i.f4518c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f4496t.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                p(iVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f4498o;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return j(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        p(iVar2);
                    } else {
                        iVar = this.f4500q;
                    }
                } while (iVar != i.f4518c);
            }
            return j(this.f4498o);
        }
        while (nanos > 0) {
            Object obj3 = this.f4498o;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return j(obj3);
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
        return this.f4498o instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.f4498o != null);
    }

    protected void m() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String n() {
        Object obj = this.f4498o;
        if (obj instanceof g) {
            return "setFuture=[" + t(((g) obj).f4517p) + "]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
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
    protected boolean q(V v10) {
        if (v10 == null) {
            v10 = (V) f4497u;
        }
        if (!f4496t.b(this, null, v10)) {
            return false;
        }
        h(this);
        return true;
    }

    protected boolean r(Throwable th) {
        if (!f4496t.b(this, null, new d((Throwable) d(th)))) {
            return false;
        }
        h(this);
        return true;
    }

    protected boolean s(a5.a<? extends V> aVar) {
        d dVar;
        d(aVar);
        Object obj = this.f4498o;
        if (obj == null) {
            if (aVar.isDone()) {
                if (!f4496t.b(this, null, k(aVar))) {
                    return false;
                }
                h(this);
                return true;
            }
            g gVar = new g(this, aVar);
            if (f4496t.b(this, null, gVar)) {
                try {
                    aVar.e(gVar, androidx.work.impl.utils.futures.b.INSTANCE);
                } catch (Throwable th) {
                    try {
                        dVar = new d(th);
                    } catch (Throwable unused) {
                        dVar = d.f4505b;
                    }
                    f4496t.b(this, gVar, dVar);
                }
                return true;
            }
            obj = this.f4498o;
        }
        if (obj instanceof c) {
            aVar.cancel(((c) obj).f4503a);
        }
        return false;
    }

    public String toString() {
        String strN;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strN = n();
            } catch (RuntimeException e10) {
                strN = "Exception thrown from implementation: " + e10.getClass();
            }
            if (strN != null && !strN.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strN);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
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
            Object obj2 = this.f4498o;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return j(obj2);
            }
            i iVar = this.f4500q;
            if (iVar != i.f4518c) {
                i iVar2 = new i();
                do {
                    iVar2.a(iVar);
                    if (f4496t.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f4498o;
                            } else {
                                p(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return j(obj);
                    }
                    iVar = this.f4500q;
                } while (iVar != i.f4518c);
            }
            return j(this.f4498o);
        }
        throw new InterruptedException();
    }
}
