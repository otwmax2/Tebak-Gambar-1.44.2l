package i1;

import android.os.Build;
import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: WorkRequest.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UUID f30382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q1.p f30383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set<String> f30384c;

    /* JADX INFO: compiled from: WorkRequest.java */
    public static abstract class a<B extends a<?, ?>, W extends u> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        q1.p f30387c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Class<? extends ListenableWorker> f30389e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f30385a = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Set<String> f30388d = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        UUID f30386b = UUID.randomUUID();

        a(Class<? extends ListenableWorker> cls) {
            this.f30389e = cls;
            this.f30387c = new q1.p(this.f30386b.toString(), cls.getName());
            a(cls.getName());
        }

        public final B a(String str) {
            this.f30388d.add(str);
            return (B) d();
        }

        public final W b() {
            W w10 = (W) c();
            b bVar = this.f30387c.f33787j;
            int i10 = Build.VERSION.SDK_INT;
            boolean z10 = (i10 >= 24 && bVar.e()) || bVar.f() || bVar.g() || (i10 >= 23 && bVar.h());
            if (this.f30387c.f33794q && z10) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            this.f30386b = UUID.randomUUID();
            q1.p pVar = new q1.p(this.f30387c);
            this.f30387c = pVar;
            pVar.f33778a = this.f30386b.toString();
            return w10;
        }

        abstract W c();

        abstract B d();

        public final B e(b bVar) {
            this.f30387c.f33787j = bVar;
            return (B) d();
        }

        public B f(long j10, TimeUnit timeUnit) {
            this.f30387c.f33784g = timeUnit.toMillis(j10);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f30387c.f33784g) {
                return (B) d();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        public final B g(androidx.work.b bVar) {
            this.f30387c.f33782e = bVar;
            return (B) d();
        }
    }

    protected u(UUID uuid, q1.p pVar, Set<String> set) {
        this.f30382a = uuid;
        this.f30383b = pVar;
        this.f30384c = set;
    }

    public String a() {
        return this.f30382a.toString();
    }

    public Set<String> b() {
        return this.f30384c;
    }

    public q1.p c() {
        return this.f30383b;
    }
}
