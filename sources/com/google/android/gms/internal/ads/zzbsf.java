package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vungle.mediation.BuildConfig;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbsf implements zzbsh {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f11207f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    static zzbsh f11208g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    static zzbsh f11209h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f11211b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f11213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbzg f11214e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11210a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakHashMap f11212c = new WeakHashMap();

    protected zzbsf(Context context, zzbzg zzbzgVar) {
        zzfkq.a();
        this.f11213d = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.f11211b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11214e = zzbzgVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033 A[Catch: all -> 0x003e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:10:0x0027, B:11:0x0033, B:12:0x003a), top: B:18:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzbsh c(android.content.Context r3) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzbsf.f11207f
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzbsh r1 = com.google.android.gms.internal.ads.zzbsf.f11208g     // Catch: java.lang.Throwable -> L3e
            if (r1 != 0) goto L3a
            com.google.android.gms.internal.ads.zzbbw r1 = com.google.android.gms.internal.ads.zzbct.f10599e     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r1 = r1.e()     // Catch: java.lang.Throwable -> L3e
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L3e
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L3e
            if (r1 == 0) goto L33
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.f10221f7     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L3e
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L3e
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L3e
            if (r1 != 0) goto L33
            com.google.android.gms.internal.ads.zzbsf r1 = new com.google.android.gms.internal.ads.zzbsf     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzbzg r2 = com.google.android.gms.internal.ads.zzbzg.V3()     // Catch: java.lang.Throwable -> L3e
            r1.<init>(r3, r2)     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzbsf.f11208g = r1     // Catch: java.lang.Throwable -> L3e
            goto L3a
        L33:
            com.google.android.gms.internal.ads.zzbsg r3 = new com.google.android.gms.internal.ads.zzbsg     // Catch: java.lang.Throwable -> L3e
            r3.<init>()     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzbsf.f11208g = r3     // Catch: java.lang.Throwable -> L3e
        L3a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.internal.ads.zzbsh r3 = com.google.android.gms.internal.ads.zzbsf.f11208g
            return r3
        L3e:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsf.c(android.content.Context):com.google.android.gms.internal.ads.zzbsh");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[Catch: all -> 0x006b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:10:0x0027, B:12:0x0036, B:13:0x0038, B:16:0x0041, B:20:0x0050, B:21:0x0051, B:22:0x0060, B:23:0x0067, B:14:0x0039, B:15:0x0040), top: B:29:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzbsh d(android.content.Context r4, com.google.android.gms.internal.ads.zzbzg r5) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzbsf.f11207f
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzbsh r1 = com.google.android.gms.internal.ads.zzbsf.f11209h     // Catch: java.lang.Throwable -> L6b
            if (r1 != 0) goto L67
            com.google.android.gms.internal.ads.zzbbw r1 = com.google.android.gms.internal.ads.zzbct.f10599e     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r1 = r1.e()     // Catch: java.lang.Throwable -> L6b
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L6b
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L60
            com.google.android.gms.internal.ads.zzbaj r1 = com.google.android.gms.internal.ads.zzbar.f10221f7     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbap r2 = com.google.android.gms.ads.internal.client.zzba.c()     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r1 = r2.b(r1)     // Catch: java.lang.Throwable -> L6b
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L6b
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L6b
            if (r1 != 0) goto L60
            com.google.android.gms.internal.ads.zzbsf r1 = new com.google.android.gms.internal.ads.zzbsf     // Catch: java.lang.Throwable -> L6b
            r1.<init>(r4, r5)     // Catch: java.lang.Throwable -> L6b
            android.os.Looper r4 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L6b
            java.lang.Thread r4 = r4.getThread()     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L51
            java.lang.Object r5 = r1.f11210a     // Catch: java.lang.Throwable -> L6b
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L6b
            java.util.WeakHashMap r2 = r1.f11212c     // Catch: java.lang.Throwable -> L4e
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L4e
            r2.put(r4, r3)     // Catch: java.lang.Throwable -> L4e
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4e
            java.lang.Thread$UncaughtExceptionHandler r5 = r4.getUncaughtExceptionHandler()     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbse r2 = new com.google.android.gms.internal.ads.zzbse     // Catch: java.lang.Throwable -> L6b
            r2.<init>(r1, r5)     // Catch: java.lang.Throwable -> L6b
            r4.setUncaughtExceptionHandler(r2)     // Catch: java.lang.Throwable -> L6b
            goto L51
        L4e:
            r4 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L6b
        L51:
            java.lang.Thread$UncaughtExceptionHandler r4 = java.lang.Thread.getDefaultUncaughtExceptionHandler()     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbsd r5 = new com.google.android.gms.internal.ads.zzbsd     // Catch: java.lang.Throwable -> L6b
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L6b
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r5)     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbsf.f11209h = r1     // Catch: java.lang.Throwable -> L6b
            goto L67
        L60:
            com.google.android.gms.internal.ads.zzbsg r4 = new com.google.android.gms.internal.ads.zzbsg     // Catch: java.lang.Throwable -> L6b
            r4.<init>()     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbsf.f11209h = r4     // Catch: java.lang.Throwable -> L6b
        L67:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.internal.ads.zzbsh r4 = com.google.android.gms.internal.ads.zzbsf.f11209h
            return r4
        L6b:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsf.d(android.content.Context, com.google.android.gms.internal.ads.zzbzg):com.google.android.gms.internal.ads.zzbsh");
    }

    public static String e(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String f(Throwable th) {
        return zzfoj.c(zzbyt.k(e(th)));
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void a(Throwable th, String str) {
        b(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void b(Throwable th, String str, float f10) {
        boolean zG;
        String packageName;
        if (zzbyt.l(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        String strE = e(th);
        String strF = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10178b8)).booleanValue() ? f(th) : BuildConfig.FLAVOR;
        double d10 = f10;
        double dRandom = Math.random();
        int i10 = f10 > 0.0f ? (int) (1.0f / f10) : 1;
        if (dRandom < d10) {
            ArrayList<String> arrayList = new ArrayList();
            try {
                zG = Wrappers.a(this.f11211b).g();
            } catch (Throwable th2) {
                zzbza.e("Error fetching instant app info", th2);
                zG = false;
            }
            try {
                packageName = this.f11211b.getPackageName();
            } catch (Throwable unused) {
                zzbza.g("Cannot obtain package name, proceeding.");
                packageName = "unknown";
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(TournamentShareDialogURIBuilder.scheme).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zG)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
            String str2 = Build.MANUFACTURER;
            String str3 = Build.MODEL;
            if (!str3.startsWith(str2)) {
                str3 = str2 + " " + str3;
            }
            Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter(DeviceRequestsHelper.DEVICE_INFO_DEVICE, str3).appendQueryParameter("js", this.f11214e.f11605o).appendQueryParameter(VungleMediationAdapter.KEY_APP_ID, packageName).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", strE).appendQueryParameter("eids", TextUtils.join(",", zzbar.a())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "513548808").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i10)).appendQueryParameter("pb_tm", String.valueOf(zzbct.f10597c.e())).appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.h().b(this.f11211b))).appendQueryParameter("lite", true != this.f11214e.f11609s ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
            if (!TextUtils.isEmpty(strF)) {
                builderAppendQueryParameter2.appendQueryParameter("hash", strF);
            }
            arrayList.add(builderAppendQueryParameter2.toString());
            for (final String str4 : arrayList) {
                final zzbzf zzbzfVar = new zzbzf(null);
                this.f11213d.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbsc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbzfVar.o(str4);
                    }
                });
            }
        }
    }

    protected final void g(Thread thread, Throwable th) {
        if (th != null) {
            boolean zU = false;
            boolean zEquals = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    zU |= zzbyt.u(stackTraceElement.getClassName());
                    zEquals |= zzbsf.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!zU || zEquals) {
                return;
            }
            b(th, BuildConfig.FLAVOR, 1.0f);
        }
    }
}
