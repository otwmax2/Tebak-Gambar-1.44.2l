package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zaq;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@KeepName
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final ThreadLocal<Boolean> f6997p = new o0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f6998q = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f6999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final CallbackHandler<R> f7000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final WeakReference<GoogleApiClient> f7001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CountDownLatch f7002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList<PendingResult.StatusListener> f7003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ResultCallback<? super R> f7004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference<j0> f7005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private R f7006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Status f7007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f7008j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f7009k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f7010l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ICancelToken f7011m;

    @KeepName
    private p0 mResultGuardian;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile zada<R> f7012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f7013o;

    @Deprecated
    BasePendingResult() {
        this.f6999a = new Object();
        this.f7002d = new CountDownLatch(1);
        this.f7003e = new ArrayList<>();
        this.f7005g = new AtomicReference<>();
        this.f7013o = false;
        this.f7000b = new CallbackHandler<>(Looper.getMainLooper());
        this.f7001c = new WeakReference<>(null);
    }

    private final R l() {
        R r10;
        synchronized (this.f6999a) {
            Preconditions.o(!this.f7008j, "Result has already been consumed.");
            Preconditions.o(i(), "Result is not ready.");
            r10 = this.f7006h;
            this.f7006h = null;
            this.f7004f = null;
            this.f7008j = true;
        }
        j0 andSet = this.f7005g.getAndSet(null);
        if (andSet != null) {
            andSet.f7113a.f7265a.remove(this);
        }
        return (R) Preconditions.k(r10);
    }

    private final void m(R r10) {
        this.f7006h = r10;
        this.f7007i = r10.V2();
        zar zarVar = null;
        this.f7011m = null;
        this.f7002d.countDown();
        if (this.f7009k) {
            this.f7004f = null;
        } else {
            ResultCallback<? super R> resultCallback = this.f7004f;
            if (resultCallback != null) {
                this.f7000b.removeMessages(2);
                this.f7000b.a(resultCallback, l());
            } else if (this.f7006h instanceof Releasable) {
                this.mResultGuardian = new p0(this, zarVar);
            }
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.f7003e;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.get(i10).a(this.f7007i);
        }
        this.f7003e.clear();
    }

    public static void p(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).c();
            } catch (RuntimeException e10) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(result)), e10);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void c(PendingResult.StatusListener statusListener) {
        Preconditions.b(statusListener != null, "Callback cannot be null.");
        synchronized (this.f6999a) {
            if (i()) {
                statusListener.a(this.f7007i);
            } else {
                this.f7003e.add(statusListener);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R d(long j10, TimeUnit timeUnit) {
        if (j10 > 0) {
            Preconditions.j("await must not be called on the UI thread when time is greater than zero.");
        }
        Preconditions.o(!this.f7008j, "Result has already been consumed.");
        Preconditions.o(this.f7012n == null, "Cannot await if then() has been called.");
        try {
            if (!this.f7002d.await(j10, timeUnit)) {
                g(Status.f6976x);
            }
        } catch (InterruptedException unused) {
            g(Status.f6974v);
        }
        Preconditions.o(i(), "Result is not ready.");
        return (R) l();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public void e() {
        synchronized (this.f6999a) {
            if (!this.f7009k && !this.f7008j) {
                ICancelToken iCancelToken = this.f7011m;
                if (iCancelToken != null) {
                    try {
                        iCancelToken.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                p(this.f7006h);
                this.f7009k = true;
                m(f(Status.f6977y));
            }
        }
    }

    @KeepForSdk
    protected abstract R f(Status status);

    @KeepForSdk
    @Deprecated
    public final void g(Status status) {
        synchronized (this.f6999a) {
            if (!i()) {
                k(f(status));
                this.f7010l = true;
            }
        }
    }

    public final boolean h() {
        boolean z10;
        synchronized (this.f6999a) {
            z10 = this.f7009k;
        }
        return z10;
    }

    @KeepForSdk
    public final boolean i() {
        return this.f7002d.getCount() == 0;
    }

    @KeepForSdk
    protected final void j(ICancelToken iCancelToken) {
        synchronized (this.f6999a) {
            this.f7011m = iCancelToken;
        }
    }

    @KeepForSdk
    public final void k(R r10) {
        synchronized (this.f6999a) {
            if (this.f7010l || this.f7009k) {
                p(r10);
                return;
            }
            i();
            Preconditions.o(!i(), "Results have already been set");
            Preconditions.o(!this.f7008j, "Result has already been consumed");
            m(r10);
        }
    }

    public final void o() {
        boolean z10 = true;
        if (!this.f7013o && !f6997p.get().booleanValue()) {
            z10 = false;
        }
        this.f7013o = z10;
    }

    public final boolean q() {
        boolean zH;
        synchronized (this.f6999a) {
            if (this.f7001c.get() == null || !this.f7013o) {
                e();
            }
            zH = h();
        }
        return zH;
    }

    public final void r(j0 j0Var) {
        this.f7005g.set(j0Var);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @VisibleForTesting
    public static class CallbackHandler<R extends Result> extends zaq {
        public CallbackHandler() {
            super(Looper.getMainLooper());
        }

        public final void a(ResultCallback<? super R> resultCallback, R r10) {
            int i10 = BasePendingResult.f6998q;
            sendMessage(obtainMessage(1, new Pair((ResultCallback) Preconditions.k(resultCallback), r10)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                Pair pair = (Pair) message.obj;
                ResultCallback resultCallback = (ResultCallback) pair.first;
                Result result = (Result) pair.second;
                try {
                    resultCallback.a(result);
                    return;
                } catch (RuntimeException e10) {
                    BasePendingResult.p(result);
                    throw e10;
                }
            }
            if (i10 == 2) {
                ((BasePendingResult) message.obj).g(Status.f6976x);
                return;
            }
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i10);
            Log.wtf("BasePendingResult", sb.toString(), new Exception());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }
    }

    @KeepForSdk
    protected BasePendingResult(GoogleApiClient googleApiClient) {
        this.f6999a = new Object();
        this.f7002d = new CountDownLatch(1);
        this.f7003e = new ArrayList<>();
        this.f7005g = new AtomicReference<>();
        this.f7013o = false;
        this.f7000b = new CallbackHandler<>(googleApiClient != null ? googleApiClient.j() : Looper.getMainLooper());
        this.f7001c = new WeakReference<>(googleApiClient);
    }
}
