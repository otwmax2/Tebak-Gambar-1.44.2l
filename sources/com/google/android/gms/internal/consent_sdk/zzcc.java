package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcc implements Executor {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ThreadPoolExecutor f21770p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicInteger f21769o = new AtomicInteger(1);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WeakReference<Thread> f21771q = new WeakReference<>(null);

    zzcc(String str) {
        final String str2 = "Google consent worker";
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(str2) { // from class: com.google.android.gms.internal.consent_sdk.zzcb

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f21768b = "Google consent worker";

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return this.f21767a.a(this.f21768b, runnable);
            }
        });
        this.f21770p = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public final /* synthetic */ Thread a(String str, Runnable runnable) {
        int andIncrement = this.f21769o.getAndIncrement();
        StringBuilder sb = new StringBuilder(34);
        sb.append("Google consent worker #");
        sb.append(andIncrement);
        Thread thread = new Thread(runnable, sb.toString());
        this.f21771q = new WeakReference<>(thread);
        return thread;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f21771q.get()) {
            runnable.run();
        } else {
            this.f21770p.execute(runnable);
        }
    }
}
