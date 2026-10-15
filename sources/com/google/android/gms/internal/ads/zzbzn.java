package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbzn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzfuu f11614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzfuu f11615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzfuu f11616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ScheduledExecutorService f11617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzfuu f11618e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzfuu f11619f;

    static {
        Executor threadPoolExecutor;
        ExecutorService executorServiceA;
        ExecutorService executorServiceB;
        if (ClientLibraryUtils.a()) {
            zzfkq.a();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzbzj("Default")));
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzbzj("Default"));
        }
        zzbzl zzbzlVar = null;
        f11614a = new zzbzm(threadPoolExecutor, zzbzlVar);
        if (ClientLibraryUtils.a()) {
            executorServiceA = zzfkq.a().a(5, new zzbzj("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzj("Loader"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            executorServiceA = threadPoolExecutor2;
        }
        f11615b = new zzbzm(executorServiceA, zzbzlVar);
        if (ClientLibraryUtils.a()) {
            executorServiceB = zzfkq.a().b(new zzbzj("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzj("Activeview"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executorServiceB = threadPoolExecutor3;
        }
        f11616c = new zzbzm(executorServiceB, zzbzlVar);
        f11617d = new zzbzi(3, new zzbzj(AppEventsConstants.EVENT_NAME_SCHEDULE));
        f11618e = new zzbzm(new zzbzk(), zzbzlVar);
        f11619f = new zzbzm(zzfva.b(), zzbzlVar);
    }
}
