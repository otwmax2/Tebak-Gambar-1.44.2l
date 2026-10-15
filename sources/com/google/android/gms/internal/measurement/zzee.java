package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzee {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile zzee f23475j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Clock f23477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final ExecutorService f23478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AppMeasurementSdk f23479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f23480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f23481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f23482g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f23483h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile zzcc f23484i;

    protected zzee(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !o(str2, str3)) {
            this.f23476a = "FA";
        } else {
            this.f23476a = str;
        }
        this.f23477b = DefaultClock.d();
        zzbx.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzdi(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f23478c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f23479d = new AppMeasurementSdk(this);
        this.f23480e = new ArrayList();
        try {
            if (com.google.android.gms.measurement.internal.zzit.c(context, "google_app_id", com.google.android.gms.measurement.internal.zzga.a(context)) != null && !k()) {
                this.f23483h = null;
                this.f23482g = true;
                Log.w(this.f23476a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException unused) {
        }
        if (o(str2, str3)) {
            this.f23483h = str2;
        } else {
            this.f23483h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.f23476a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f23476a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        n(new zzcx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f23476a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzed(this));
        }
    }

    protected static final boolean k() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(Exception exc, boolean z10, boolean z11) {
        this.f23482g |= z10;
        if (z10) {
            Log.w(this.f23476a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z11) {
            a(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f23476a, "Error with data collection. Data lost.", exc);
    }

    private final void m(String str, String str2, Bundle bundle, boolean z10, boolean z11, Long l10) {
        n(new zzdr(this, l10, str, str2, bundle, z10, z11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(zzdt zzdtVar) {
        this.f23478c.execute(zzdtVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(String str, String str2) {
        return (str2 == null || str == null || k()) ? false : true;
    }

    public static zzee v(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.k(context);
        if (f23475j == null) {
            synchronized (zzee.class) {
                if (f23475j == null) {
                    f23475j = new zzee(context, str, str2, str3, bundle);
                }
            }
        }
        return f23475j;
    }

    public final String A() {
        zzbz zzbzVar = new zzbz();
        n(new zzdd(this, zzbzVar));
        return zzbzVar.t1(500L);
    }

    public final String B() {
        zzbz zzbzVar = new zzbz();
        n(new zzda(this, zzbzVar));
        return zzbzVar.t1(500L);
    }

    public final List C(String str, String str2) {
        zzbz zzbzVar = new zzbz();
        n(new zzcp(this, str, str2, zzbzVar));
        List list = (List) zzbz.Q4(zzbzVar.X0(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map D(String str, String str2, boolean z10) {
        zzbz zzbzVar = new zzbz();
        n(new zzdf(this, str, str2, z10, zzbzVar));
        Bundle bundleX0 = zzbzVar.X0(5000L);
        if (bundleX0 == null || bundleX0.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleX0.size());
        for (String str3 : bundleX0.keySet()) {
            Object obj = bundleX0.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void H(String str) {
        n(new zzcy(this, str));
    }

    public final void I(String str, String str2, Bundle bundle) {
        n(new zzco(this, str, str2, bundle));
    }

    public final void J(String str) {
        n(new zzcz(this, str));
    }

    public final void K(String str, Bundle bundle) {
        m(null, str, bundle, false, true, null);
    }

    public final void L(String str, String str2, Bundle bundle) {
        m(str, str2, bundle, true, true, null);
    }

    public final void a(int i10, String str, Object obj, Object obj2, Object obj3) {
        n(new zzdg(this, false, 5, str, obj, null, null));
    }

    public final void b(com.google.android.gms.measurement.internal.zzhj zzhjVar) {
        Preconditions.k(zzhjVar);
        synchronized (this.f23480e) {
            for (int i10 = 0; i10 < this.f23480e.size(); i10++) {
                if (zzhjVar.equals(((Pair) this.f23480e.get(i10)).first)) {
                    Log.w(this.f23476a, "OnEventListener already registered.");
                    return;
                }
            }
            zzdv zzdvVar = new zzdv(zzhjVar);
            this.f23480e.add(new Pair(zzhjVar, zzdvVar));
            if (this.f23484i != null) {
                try {
                    this.f23484i.registerOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f23476a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            n(new zzdp(this, zzdvVar));
        }
    }

    public final void c(Bundle bundle) {
        n(new zzcn(this, bundle));
    }

    public final void d(Bundle bundle) {
        n(new zzct(this, bundle));
    }

    public final void e(Activity activity, String str, String str2) {
        n(new zzcr(this, activity, str, str2));
    }

    public final void f(boolean z10) {
        n(new zzdm(this, z10));
    }

    public final void g(String str) {
        n(new zzcq(this, str));
    }

    public final void h(String str, String str2, Object obj, boolean z10) {
        n(new zzds(this, str, str2, obj, z10));
    }

    public final int p(String str) {
        zzbz zzbzVar = new zzbz();
        n(new zzdj(this, str, zzbzVar));
        Integer num = (Integer) zzbz.Q4(zzbzVar.X0(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long q() {
        zzbz zzbzVar = new zzbz();
        n(new zzdc(this, zzbzVar));
        Long l10 = (Long) zzbz.Q4(zzbzVar.X0(500L), Long.class);
        if (l10 != null) {
            return l10.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ this.f23477b.a()).nextLong();
        int i10 = this.f23481f + 1;
        this.f23481f = i10;
        return jNextLong + ((long) i10);
    }

    public final Bundle r(Bundle bundle, boolean z10) {
        zzbz zzbzVar = new zzbz();
        n(new zzdh(this, bundle, zzbzVar));
        if (z10) {
            return zzbzVar.X0(5000L);
        }
        return null;
    }

    public final AppMeasurementSdk s() {
        return this.f23479d;
    }

    protected final zzcc u(Context context, boolean z10) {
        try {
            return zzcb.asInterface(DynamiteModule.e(context, DynamiteModule.f7914e, ModuleDescriptor.MODULE_ID).d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e10) {
            l(e10, true, false);
            return null;
        }
    }

    public final String x() {
        return this.f23483h;
    }

    public final String y() {
        zzbz zzbzVar = new zzbz();
        n(new zzdb(this, zzbzVar));
        return zzbzVar.t1(50L);
    }

    public final String z() {
        zzbz zzbzVar = new zzbz();
        n(new zzde(this, zzbzVar));
        return zzbzVar.t1(500L);
    }
}
