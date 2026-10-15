package s3;

import android.app.job.JobInfo;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import s3.d;

/* JADX INFO: compiled from: SchedulerConfig.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class g {

    /* JADX INFO: compiled from: SchedulerConfig.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private v3.a f34499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map<j3.d, b> f34500b = new HashMap();

        public a a(j3.d dVar, b bVar) {
            this.f34500b.put(dVar, bVar);
            return this;
        }

        public g b() {
            Objects.requireNonNull(this.f34499a, "missing required property: clock");
            if (this.f34500b.keySet().size() < j3.d.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map<j3.d, b> map = this.f34500b;
            this.f34500b = new HashMap();
            return g.d(this.f34499a, map);
        }

        public a c(v3.a aVar) {
            this.f34499a = aVar;
            return this;
        }
    }

    /* JADX INFO: compiled from: SchedulerConfig.java */
    @AutoValue
    public static abstract class b {

        /* JADX INFO: compiled from: SchedulerConfig.java */
        @AutoValue.Builder
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set<c> set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new d.b().c(Collections.emptySet());
        }

        abstract long b();

        abstract Set<c> c();

        abstract long d();
    }

    /* JADX INFO: compiled from: SchedulerConfig.java */
    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    private long a(int i10, long j10) {
        int i11 = i10 - 1;
        double dMax = Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * ((long) i11)));
        double dPow = Math.pow(3.0d, i11);
        double d10 = j10;
        Double.isNaN(d10);
        return (long) (dPow * d10 * dMax);
    }

    public static a b() {
        return new a();
    }

    static g d(v3.a aVar, Map<j3.d, b> map) {
        return new s3.c(aVar, map);
    }

    public static g f(v3.a aVar) {
        return b().a(j3.d.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(j3.d.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(j3.d.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static <T> Set<T> i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    private void j(JobInfo.Builder builder, Set<c> set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public JobInfo.Builder c(JobInfo.Builder builder, j3.d dVar, long j10, int i10) {
        builder.setMinimumLatency(g(dVar, j10, i10));
        j(builder, h().get(dVar).c());
        return builder;
    }

    abstract v3.a e();

    public long g(j3.d dVar, long j10, int i10) {
        long jA = j10 - e().a();
        b bVar = h().get(dVar);
        return Math.min(Math.max(a(i10, bVar.b()), jA), bVar.d());
    }

    abstract Map<j3.d, b> h();
}
