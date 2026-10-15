package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbxf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f11474a = new AtomicReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f11475b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("gmpAppIdLock")
    private String f11476c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("gmpAppIdLock")
    private String f11477d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final AtomicBoolean f11478e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInteger f11479f = new AtomicInteger(-1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference f11480g = new AtomicReference(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicReference f11481h = new AtomicReference(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ConcurrentMap f11482i = new ConcurrentHashMap(9);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AtomicReference f11483j = new AtomicReference(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("proxyReference")
    private final BlockingQueue f11484k = new ArrayBlockingQueue(20);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Object f11485l = new Object();

    @VisibleForTesting
    static final boolean A(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10214f0)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) < ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10225g0)).intValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10236h0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    private final Object B(String str, Object obj, zzbxd zzbxdVar) {
        synchronized (this.f11483j) {
            if (((zzcfz) this.f11483j.get()) != null) {
                try {
                    return zzbxdVar.a((zzcfz) this.f11483j.get());
                } catch (Exception unused) {
                    c(str, false);
                }
            }
            return obj;
        }
    }

    private final Object C(String str, Context context) {
        if (!e(context, "com.google.android.gms.measurement.AppMeasurement", this.f11480g, true)) {
            return null;
        }
        try {
            return D(context, str).invoke(this.f11480g.get(), new Object[0]);
        } catch (Exception unused) {
            c(str, true);
            return null;
        }
    }

    private final Method D(Context context, String str) {
        Method method = (Method) this.f11482i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f11482i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            c(str, false);
            return null;
        }
    }

    private final ExecutorService E() {
        ExecutorService threadPoolExecutor;
        if (this.f11474a.get() == null) {
            if (ClientLibraryUtils.a()) {
                threadPoolExecutor = zzfkq.a().a(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10203e0)).intValue(), new zzbxc(this), 2);
            } else {
                zzbaj zzbajVar = zzbar.f10203e0;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzbxc(this));
            }
            zzbwo.a(this.f11474a, null, threadPoolExecutor);
        }
        return (ExecutorService) this.f11474a.get();
    }

    private final void a(Context context, String str, String str2) {
        if (e(context, "com.google.android.gms.measurement.AppMeasurement", this.f11480g, true)) {
            Method declaredMethod = (Method) this.f11482i.get(str2);
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.f11482i.put(str2, declaredMethod);
                } catch (Exception unused) {
                    c(str2, false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(this.f11480g.get(), str);
                com.google.android.gms.ads.internal.util.zze.k("Invoke Firebase method " + str2 + ", Ad Unit Id: " + str);
            } catch (Exception unused2) {
                c(str2, false);
            }
        }
    }

    private final void b(Context context, final String str, String str2, Bundle bundle) {
        if (z(context)) {
            final Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e10) {
                zzbza.e("Invalid event ID: ".concat(String.valueOf(str2)), e10);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (A(context)) {
                d("logEventInternal", new zzbxe() { // from class: com.google.android.gms.internal.ads.zzbwr
                    @Override // com.google.android.gms.internal.ads.zzbxe
                    public final void a(zzcfz zzcfzVar) throws RemoteException {
                        zzcfzVar.L7("am", str, bundle2);
                    }
                });
                return;
            }
            if (e(context, "com.google.android.gms.measurement.AppMeasurement", this.f11480g, true)) {
                Method declaredMethod = (Method) this.f11482i.get("logEventInternal");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.f11482i.put("logEventInternal", declaredMethod);
                    } catch (Exception unused) {
                        c("logEventInternal", true);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.f11480g.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    c("logEventInternal", true);
                }
            }
        }
    }

    private final void c(String str, boolean z10) {
        if (this.f11478e.get()) {
            return;
        }
        zzbza.g("Invoke Firebase method " + str + " error.");
        if (z10) {
            zzbza.g("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f11478e.set(true);
        }
    }

    private final void d(final String str, final zzbxe zzbxeVar) {
        synchronized (this.f11483j) {
            FutureTask futureTask = new FutureTask(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbws
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11458o.o(zzbxeVar, str);
                }
            }, null);
            if (this.f11483j.get() != null) {
                futureTask.run();
            } else {
                this.f11484k.offer(futureTask);
            }
        }
    }

    private final boolean e(Context context, String str, AtomicReference atomicReference, boolean z10) {
        if (atomicReference.get() == null) {
            try {
                zzbwo.a(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                c("getInstance", z10);
                return false;
            }
        }
        return true;
    }

    public final String f(Context context) {
        if (!z(context)) {
            return null;
        }
        if (A(context)) {
            Long l10 = (Long) B("getAdEventId", null, new zzbxd() { // from class: com.google.android.gms.internal.ads.zzbwt
                @Override // com.google.android.gms.internal.ads.zzbxd
                public final Object a(zzcfz zzcfzVar) {
                    return Long.valueOf(zzcfzVar.a());
                }
            });
            if (l10 != null) {
                return Long.toString(l10.longValue());
            }
            return null;
        }
        Object objC = C("generateEventId", context);
        if (objC != null) {
            return objC.toString();
        }
        return null;
    }

    public final String g(Context context) {
        if (!z(context)) {
            return null;
        }
        synchronized (this.f11475b) {
            String str = this.f11477d;
            if (str != null) {
                return str;
            }
            if (A(context)) {
                this.f11477d = (String) B("getAppIdOrigin", this.f11477d, new zzbxd() { // from class: com.google.android.gms.internal.ads.zzbwx
                    @Override // com.google.android.gms.internal.ads.zzbxd
                    public final Object a(zzcfz zzcfzVar) {
                        return zzcfzVar.b();
                    }
                });
            } else {
                this.f11477d = "fa";
            }
            return this.f11477d;
        }
    }

    public final String h(final Context context) {
        if (!z(context)) {
            return null;
        }
        long jLongValue = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10192d0)).longValue();
        if (A(context)) {
            try {
                return jLongValue < 0 ? (String) B("getAppInstanceId", null, zzbwy.f11467a) : (String) E().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzbwz
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f11468a.k();
                    }
                }).get(jLongValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        }
        if (jLongValue < 0) {
            return (String) C("getAppInstanceId", context);
        }
        try {
            return (String) E().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzbxa
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f11470a.l(context);
                }
            }).get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused3) {
            return "TIME_OUT";
        } catch (Exception unused4) {
            return null;
        }
    }

    public final String i(Context context) {
        if (!z(context)) {
            return BuildConfig.FLAVOR;
        }
        if (A(context)) {
            return (String) B("getCurrentScreenNameOrScreenClass", BuildConfig.FLAVOR, new zzbxd() { // from class: com.google.android.gms.internal.ads.zzbwu
                @Override // com.google.android.gms.internal.ads.zzbxd
                public final Object a(zzcfz zzcfzVar) throws RemoteException {
                    String strF = zzcfzVar.f();
                    return (strF == null && (strF = zzcfzVar.e()) == null) ? BuildConfig.FLAVOR : strF;
                }
            });
        }
        if (!e(context, "com.google.android.gms.measurement.AppMeasurement", this.f11480g, true)) {
            return BuildConfig.FLAVOR;
        }
        try {
            String str = (String) D(context, "getCurrentScreenName").invoke(this.f11480g.get(), new Object[0]);
            if (str == null) {
                str = (String) D(context, "getCurrentScreenClass").invoke(this.f11480g.get(), new Object[0]);
            }
            return str == null ? BuildConfig.FLAVOR : str;
        } catch (Exception unused) {
            c("getCurrentScreenName", false);
            return BuildConfig.FLAVOR;
        }
    }

    public final String j(Context context) {
        if (!z(context)) {
            return null;
        }
        synchronized (this.f11475b) {
            String str = this.f11476c;
            if (str != null) {
                return str;
            }
            if (A(context)) {
                this.f11476c = (String) B("getGmpAppId", this.f11476c, new zzbxd() { // from class: com.google.android.gms.internal.ads.zzbwq
                    @Override // com.google.android.gms.internal.ads.zzbxd
                    public final Object a(zzcfz zzcfzVar) {
                        return zzcfzVar.g();
                    }
                });
            } else {
                this.f11476c = (String) C("getGmpAppId", context);
            }
            return this.f11476c;
        }
    }

    final /* synthetic */ String k() throws Exception {
        return (String) B("getAppInstanceId", null, zzbwy.f11467a);
    }

    final /* synthetic */ String l(Context context) throws Exception {
        return (String) C("getAppInstanceId", context);
    }

    public final void m(Context context, final String str) {
        if (z(context)) {
            if (A(context)) {
                d("beginAdUnitExposure", new zzbxe() { // from class: com.google.android.gms.internal.ads.zzbwp
                    @Override // com.google.android.gms.internal.ads.zzbxe
                    public final void a(zzcfz zzcfzVar) throws RemoteException {
                        zzcfzVar.m0(str);
                    }
                });
            } else {
                a(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void n(Context context, final String str) {
        if (z(context)) {
            if (A(context)) {
                d("endAdUnitExposure", new zzbxe() { // from class: com.google.android.gms.internal.ads.zzbww
                    @Override // com.google.android.gms.internal.ads.zzbxe
                    public final void a(zzcfz zzcfzVar) throws RemoteException {
                        zzcfzVar.s0(str);
                    }
                });
            } else {
                a(context, str, "endAdUnitExposure");
            }
        }
    }

    final /* synthetic */ void o(zzbxe zzbxeVar, String str) {
        if (((zzcfz) this.f11483j.get()) != null) {
            try {
                zzbxeVar.a((zzcfz) this.f11483j.get());
            } catch (Exception unused) {
                c(str, false);
            }
        }
    }

    public final void p(Context context, String str) {
        b(context, "_aa", str, null);
    }

    public final void q(Context context, String str) {
        b(context, "_aq", str, null);
    }

    public final void r(Context context, String str) {
        b(context, "_ac", str, null);
    }

    public final void s(Context context, String str) {
        b(context, "_ai", str, null);
    }

    public final void t(Context context, String str, String str2, String str3, int i10) {
        if (z(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i10);
            b(context, "_ar", str, bundle);
            com.google.android.gms.ads.internal.util.zze.k("Log a Firebase reward video event, reward type: " + str3 + ", reward value: " + i10);
        }
    }

    public final void u(Context context, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10269k0)).booleanValue() && z(context) && A(context)) {
            synchronized (this.f11485l) {
            }
        }
    }

    public final void v(Context context, com.google.android.gms.ads.internal.client.zzff zzffVar) {
        zzbxg.d(context).b().d(zzffVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10269k0)).booleanValue() && z(context) && A(context)) {
            synchronized (this.f11485l) {
            }
        }
    }

    public final void w(final Bundle bundle) {
        d("setConsent", new zzbxe() { // from class: com.google.android.gms.internal.ads.zzbxb
            @Override // com.google.android.gms.internal.ads.zzbxe
            public final void a(zzcfz zzcfzVar) throws RemoteException {
                zzcfzVar.h1(bundle);
            }
        });
    }

    @Deprecated
    public final void x(final Context context, final String str) {
        if (z(context) && (context instanceof Activity)) {
            if (A(context)) {
                d("setScreenName", new zzbxe() { // from class: com.google.android.gms.internal.ads.zzbwv
                    @Override // com.google.android.gms.internal.ads.zzbxe
                    public final void a(zzcfz zzcfzVar) throws RemoteException {
                        Context context2 = context;
                        zzcfzVar.g7(ObjectWrapper.Q4(context2), str, context2.getPackageName());
                    }
                });
                return;
            }
            if (e(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f11481h, false)) {
                Method declaredMethod = (Method) this.f11482i.get("setCurrentScreen");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        this.f11482i.put("setCurrentScreen", declaredMethod);
                    } catch (Exception unused) {
                        c("setCurrentScreen", false);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.f11481h.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception unused2) {
                    c("setCurrentScreen", false);
                }
            }
        }
    }

    public final boolean y() {
        synchronized (this.f11485l) {
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean z(android.content.Context r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.Y
            com.google.android.gms.internal.ads.zzbap r1 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r0 = r1.b(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L67
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.f11478e
            boolean r0 = r0.get()
            if (r0 == 0) goto L1c
            goto L67
        L1c:
            com.google.android.gms.internal.ads.zzbaj r0 = com.google.android.gms.internal.ads.zzbar.f10247i0
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r0 = r2.b(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 1
            if (r0 == 0) goto L30
            return r2
        L30:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.f11479f
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L5e
            com.google.android.gms.ads.internal.client.zzay.b()
            r0 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r0 = com.google.android.gms.internal.ads.zzbyt.y(r5, r0)
            if (r0 != 0) goto L59
            com.google.android.gms.ads.internal.client.zzay.b()
            boolean r5 = com.google.android.gms.internal.ads.zzbyt.z(r5)
            if (r5 == 0) goto L59
            java.lang.String r5 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            com.google.android.gms.internal.ads.zzbza.g(r5)
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f11479f
            r5.set(r1)
            goto L5e
        L59:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f11479f
            r5.set(r2)
        L5e:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f11479f
            int r5 = r5.get()
            if (r5 != r2) goto L67
            return r2
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbxf.z(android.content.Context):boolean");
    }
}
