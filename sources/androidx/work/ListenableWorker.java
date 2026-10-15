package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import androidx.work.impl.utils.futures.c;
import i1.e;
import i1.v;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListenableWorker {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f4335o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WorkerParameters f4336p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f4337q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4338r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f4339s;

    public static abstract class a {

        /* JADX INFO: renamed from: androidx.work.ListenableWorker$a$a, reason: collision with other inner class name */
        public static final class C0071a extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final androidx.work.b f4340a;

            public C0071a() {
                this(androidx.work.b.f4385c);
            }

            public androidx.work.b e() {
                return this.f4340a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0071a.class != obj.getClass()) {
                    return false;
                }
                return this.f4340a.equals(((C0071a) obj).f4340a);
            }

            public int hashCode() {
                return (C0071a.class.getName().hashCode() * 31) + this.f4340a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f4340a + '}';
            }

            public C0071a(androidx.work.b bVar) {
                this.f4340a = bVar;
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        public static final class c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final androidx.work.b f4341a;

            public c() {
                this(androidx.work.b.f4385c);
            }

            public androidx.work.b e() {
                return this.f4341a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.f4341a.equals(((c) obj).f4341a);
            }

            public int hashCode() {
                return (c.class.getName().hashCode() * 31) + this.f4341a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f4341a + '}';
            }

            public c(androidx.work.b bVar) {
                this.f4341a = bVar;
            }
        }

        a() {
        }

        public static a a() {
            return new C0071a();
        }

        public static a b() {
            return new b();
        }

        public static a c() {
            return new c();
        }

        public static a d(androidx.work.b bVar) {
            return new c(bVar);
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f4335o = context;
        this.f4336p = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.f4335o;
    }

    public Executor getBackgroundExecutor() {
        return this.f4336p.a();
    }

    public a5.a<e> getForegroundInfoAsync() {
        c cVarU = c.u();
        cVarU.r(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return cVarU;
    }

    public final UUID getId() {
        return this.f4336p.c();
    }

    public final b getInputData() {
        return this.f4336p.d();
    }

    public final Network getNetwork() {
        return this.f4336p.e();
    }

    public final int getRunAttemptCount() {
        return this.f4336p.g();
    }

    public final Set<String> getTags() {
        return this.f4336p.h();
    }

    public s1.a getTaskExecutor() {
        return this.f4336p.i();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f4336p.j();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f4336p.k();
    }

    public v getWorkerFactory() {
        return this.f4336p.l();
    }

    public boolean isRunInForeground() {
        return this.f4339s;
    }

    public final boolean isStopped() {
        return this.f4337q;
    }

    public final boolean isUsed() {
        return this.f4338r;
    }

    public void onStopped() {
    }

    public final a5.a<Void> setForegroundAsync(e eVar) {
        this.f4339s = true;
        return this.f4336p.b().a(getApplicationContext(), getId(), eVar);
    }

    public a5.a<Void> setProgressAsync(b bVar) {
        return this.f4336p.f().a(getApplicationContext(), getId(), bVar);
    }

    public void setRunInForeground(boolean z10) {
        this.f4339s = z10;
    }

    public final void setUsed() {
        this.f4338r = true;
    }

    public abstract a5.a<a> startWork();

    public final void stop() {
        this.f4337q = true;
        onStopped();
    }
}
