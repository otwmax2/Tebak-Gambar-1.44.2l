package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.stats.zzb;
import com.google.android.gms.internal.stats.zzh;
import com.google.android.gms.internal.stats.zzi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-stats@@17.0.1 */
/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
@ThreadSafe
@KeepForSdk
public class WakeLock {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f24925r = TimeUnit.DAYS.toMillis(366);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static volatile ScheduledExecutorService f24926s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Object f24927t = new Object();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static volatile zzd f24928u = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f24929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PowerManager.WakeLock f24930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f24931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Future<?> f24932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f24933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<zze> f24934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f24935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f24936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    zzb f24937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Clock f24938j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WorkSource f24939k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f24940l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f24941m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Context f24942n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map<String, b> f24943o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AtomicInteger f24944p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ScheduledExecutorService f24945q;

    @KeepForSdk
    public WakeLock(Context context, int i10, String str) {
        String packageName = context.getPackageName();
        this.f24929a = new Object();
        this.f24931c = 0;
        this.f24934f = new HashSet();
        this.f24935g = true;
        this.f24938j = DefaultClock.d();
        this.f24943o = new HashMap();
        this.f24944p = new AtomicInteger(0);
        Preconditions.l(context, "WakeLock: context must not be null");
        Preconditions.h(str, "WakeLock: wakeLockName must not be empty");
        this.f24942n = context.getApplicationContext();
        this.f24941m = str;
        this.f24937i = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f24940l = str;
        } else {
            String strValueOf = String.valueOf(str);
            this.f24940l = strValueOf.length() != 0 ? "*gcore*:".concat(strValueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb.toString());
        }
        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(i10, str);
        this.f24930b = wakeLockNewWakeLock;
        if (WorkSourceUtil.c(context)) {
            WorkSource workSourceB = WorkSourceUtil.b(context, Strings.b(packageName) ? context.getPackageName() : packageName);
            this.f24939k = workSourceB;
            if (workSourceB != null) {
                i(wakeLockNewWakeLock, workSourceB);
            }
        }
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = f24926s;
        if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
            synchronized (f24927t) {
                scheduledExecutorServiceUnconfigurableScheduledExecutorService = f24926s;
                if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
                    zzh.a();
                    scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                    f24926s = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
                }
            }
        }
        this.f24945q = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    public static /* synthetic */ void e(WakeLock wakeLock) {
        synchronized (wakeLock.f24929a) {
            if (wakeLock.b()) {
                Log.e("WakeLock", String.valueOf(wakeLock.f24940l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                wakeLock.g();
                if (wakeLock.b()) {
                    wakeLock.f24931c = 1;
                    wakeLock.h(0);
                }
            }
        }
    }

    private final String f(String str) {
        if (this.f24935g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    private final void g() {
        if (this.f24934f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f24934f);
        this.f24934f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    private final void h(int i10) {
        synchronized (this.f24929a) {
            if (b()) {
                if (this.f24935g) {
                    int i11 = this.f24931c - 1;
                    this.f24931c = i11;
                    if (i11 > 0) {
                        return;
                    }
                } else {
                    this.f24931c = 0;
                }
                g();
                Iterator<b> it = this.f24943o.values().iterator();
                while (it.hasNext()) {
                    it.next().f24946a = 0;
                }
                this.f24943o.clear();
                Future<?> future = this.f24932d;
                if (future != null) {
                    future.cancel(false);
                    this.f24932d = null;
                    this.f24933e = 0L;
                }
                this.f24936h = 0;
                try {
                    if (this.f24930b.isHeld()) {
                        try {
                            this.f24930b.release();
                            if (this.f24937i != null) {
                                this.f24937i = null;
                            }
                        } catch (RuntimeException e10) {
                            if (!e10.getClass().equals(RuntimeException.class)) {
                                throw e10;
                            }
                            Log.e("WakeLock", String.valueOf(this.f24940l).concat(" failed to release!"), e10);
                            if (this.f24937i != null) {
                                this.f24937i = null;
                            }
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.f24940l).concat(" should be held!"));
                    }
                } catch (Throwable th) {
                    if (this.f24937i != null) {
                        this.f24937i = null;
                    }
                    throw th;
                }
            }
        }
    }

    private static void i(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e10) {
            Log.wtf("WakeLock", e10.toString());
        }
    }

    @KeepForSdk
    public void a(long j10) {
        this.f24944p.incrementAndGet();
        long jMax = Math.max(Math.min(Long.MAX_VALUE, f24925r), 1L);
        if (j10 > 0) {
            jMax = Math.min(j10, jMax);
        }
        synchronized (this.f24929a) {
            if (!b()) {
                this.f24937i = zzb.b(false, null);
                this.f24930b.acquire();
                this.f24938j.b();
            }
            this.f24931c++;
            this.f24936h++;
            f(null);
            b bVar = this.f24943o.get(null);
            if (bVar == null) {
                bVar = new b(null);
                this.f24943o.put(null, bVar);
            }
            bVar.f24946a++;
            long jB = this.f24938j.b();
            long j11 = Long.MAX_VALUE - jB > jMax ? jB + jMax : Long.MAX_VALUE;
            if (j11 > this.f24933e) {
                this.f24933e = j11;
                Future<?> future = this.f24932d;
                if (future != null) {
                    future.cancel(false);
                }
                this.f24932d = this.f24945q.schedule(new Runnable() { // from class: com.google.android.gms.stats.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        WakeLock.e(this.f24947o);
                    }
                }, jMax, TimeUnit.MILLISECONDS);
            }
        }
    }

    @KeepForSdk
    public boolean b() {
        boolean z10;
        synchronized (this.f24929a) {
            z10 = this.f24931c > 0;
        }
        return z10;
    }

    @KeepForSdk
    public void c() {
        if (this.f24944p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f24940l).concat(" release without a matched acquire!"));
        }
        synchronized (this.f24929a) {
            f(null);
            if (this.f24943o.containsKey(null)) {
                b bVar = this.f24943o.get(null);
                if (bVar != null) {
                    int i10 = bVar.f24946a - 1;
                    bVar.f24946a = i10;
                    if (i10 == 0) {
                        this.f24943o.remove(null);
                    }
                }
            } else {
                Log.w("WakeLock", String.valueOf(this.f24940l).concat(" counter does not exist"));
            }
            h(0);
        }
    }

    @KeepForSdk
    public void d(boolean z10) {
        synchronized (this.f24929a) {
            this.f24935g = z10;
        }
    }
}
