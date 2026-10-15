package com.google.android.gms.internal.auth;

import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcz<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f21429f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final AtomicReference<Collection<zzcz<?>>> f21430g = new AtomicReference<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final zzdb f21431h = new zzdb(zzcr.f21418a, null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final AtomicInteger f21432i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f21433j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzcx f21434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f21435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final T f21436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f21437d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f21438e;

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ zzcz(zzcx zzcxVar, String str, Object obj, boolean z10, zzct zzctVar) {
        if (zzcxVar.f21421b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f21434a = zzcxVar;
        this.f21435b = str;
        this.f21436c = obj;
        this.f21438e = true;
    }

    static void a() {
        f21432i.incrementAndGet();
    }
}
