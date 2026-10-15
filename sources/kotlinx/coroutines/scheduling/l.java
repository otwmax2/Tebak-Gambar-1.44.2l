package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.internal.h0;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f31833a = h0.e("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f31834b = h0.d("kotlinx.coroutines.scheduler.core.pool.size", y9.l.a(f0.a(), 2), 1, 0, 8, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f31835c = h0.d("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f31836d = TimeUnit.SECONDS.toNanos(h0.e("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static g f31837e = e.f31823a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i f31838f = new j(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i f31839g = new j(1);
}
