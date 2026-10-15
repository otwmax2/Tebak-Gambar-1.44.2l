package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaf extends y0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f24427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f24428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f24429d;

    zzaf(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24428c = new b() { // from class: com.google.android.gms.measurement.internal.zzad
            @Override // com.google.android.gms.measurement.internal.b
            public final String a(String str, String str2) {
                return null;
            }
        };
    }

    public static final long G() {
        return ((Long) zzel.f24565e.a(null)).longValue();
    }

    public static final long d() {
        return ((Long) zzel.E.a(null)).longValue();
    }

    private final String e(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, BuildConfig.FLAVOR);
            Preconditions.k(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            this.f24394a.U().m().b("Could not find SystemProperties class", e10);
            return BuildConfig.FLAVOR;
        } catch (IllegalAccessException e11) {
            this.f24394a.U().m().b("Could not access SystemProperties.get()", e11);
            return BuildConfig.FLAVOR;
        } catch (NoSuchMethodException e12) {
            this.f24394a.U().m().b("Could not find SystemProperties.get() method", e12);
            return BuildConfig.FLAVOR;
        } catch (InvocationTargetException e13) {
            this.f24394a.U().m().b("SystemProperties.get() threw an exception", e13);
            return BuildConfig.FLAVOR;
        }
    }

    public final boolean A() {
        Boolean boolO = o("google_analytics_automatic_screen_reporting_enabled");
        return boolO == null || boolO.booleanValue();
    }

    public final boolean C() {
        this.f24394a.t();
        Boolean boolO = o("firebase_analytics_collection_deactivated");
        return boolO != null && boolO.booleanValue();
    }

    public final boolean D(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(this.f24428c.a(str, "measurement.event_sampling_enabled"));
    }

    final boolean E() {
        if (this.f24427b == null) {
            Boolean boolO = o("app_measurement_lite");
            this.f24427b = boolO;
            if (boolO == null) {
                this.f24427b = Boolean.FALSE;
            }
        }
        return this.f24427b.booleanValue() || !this.f24394a.n();
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean F() {
        if (this.f24429d == null) {
            synchronized (this) {
                if (this.f24429d == null) {
                    ApplicationInfo applicationInfo = this.f24394a.N0().getApplicationInfo();
                    String strA = ProcessUtils.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z10 = false;
                        if (str != null && str.equals(strA)) {
                            z10 = true;
                        }
                        this.f24429d = Boolean.valueOf(z10);
                    }
                    if (this.f24429d == null) {
                        this.f24429d = Boolean.TRUE;
                        this.f24394a.U().m().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f24429d.booleanValue();
    }

    public final double f(String str, zzek zzekVar) {
        if (str == null) {
            return ((Double) zzekVar.a(null)).doubleValue();
        }
        String strA = this.f24428c.a(str, zzekVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Double) zzekVar.a(null)).doubleValue();
        }
        try {
            return ((Double) zzekVar.a(Double.valueOf(Double.parseDouble(strA)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) zzekVar.a(null)).doubleValue();
        }
    }

    final int g(String str) {
        return k(str, zzel.I, 500, 2000);
    }

    public final int h() {
        zzlp zzlpVarL = this.f24394a.L();
        Boolean boolH = zzlpVarL.f24394a.J().H();
        if (zzlpVarL.o0() < 201500) {
            return (boolH == null || boolH.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int i(String str) {
        return k(str, zzel.J, 25, 100);
    }

    public final int j(String str, zzek zzekVar) {
        if (str == null) {
            return ((Integer) zzekVar.a(null)).intValue();
        }
        String strA = this.f24428c.a(str, zzekVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Integer) zzekVar.a(null)).intValue();
        }
        try {
            return ((Integer) zzekVar.a(Integer.valueOf(Integer.parseInt(strA)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) zzekVar.a(null)).intValue();
        }
    }

    public final int k(String str, zzek zzekVar, int i10, int i11) {
        return Math.max(Math.min(j(str, zzekVar), i11), i10);
    }

    public final long l() {
        this.f24394a.t();
        return 61000L;
    }

    public final long m(String str, zzek zzekVar) {
        if (str == null) {
            return ((Long) zzekVar.a(null)).longValue();
        }
        String strA = this.f24428c.a(str, zzekVar.b());
        if (TextUtils.isEmpty(strA)) {
            return ((Long) zzekVar.a(null)).longValue();
        }
        try {
            return ((Long) zzekVar.a(Long.valueOf(Long.parseLong(strA)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) zzekVar.a(null)).longValue();
        }
    }

    @VisibleForTesting
    final Bundle n() {
        try {
            if (this.f24394a.N0().getPackageManager() == null) {
                this.f24394a.U().m().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfoC = Wrappers.a(this.f24394a.N0()).c(this.f24394a.N0().getPackageName(), 128);
            if (applicationInfoC != null) {
                return applicationInfoC.metaData;
            }
            this.f24394a.U().m().a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            this.f24394a.U().m().b("Failed to load metadata: Package name not found", e10);
            return null;
        }
    }

    @VisibleForTesting
    final Boolean o(String str) {
        Preconditions.g(str);
        Bundle bundleN = n();
        if (bundleN == null) {
            this.f24394a.U().m().a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleN.containsKey(str)) {
            return Boolean.valueOf(bundleN.getBoolean(str));
        }
        return null;
    }

    public final String p() {
        return e("debug.firebase.analytics.app", BuildConfig.FLAVOR);
    }

    public final String q() {
        return e("debug.deferred.deeplink", BuildConfig.FLAVOR);
    }

    final String r() {
        this.f24394a.t();
        return "FA";
    }

    public final String s(String str, zzek zzekVar) {
        return str == null ? (String) zzekVar.a(null) : (String) zzekVar.a(this.f24428c.a(str, zzekVar.b()));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List u(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "analytics.safelisted_events"
            com.google.android.gms.common.internal.Preconditions.g(r4)
            android.os.Bundle r0 = r3.n()
            r1 = 0
            if (r0 != 0) goto L1d
            com.google.android.gms.measurement.internal.zzgi r4 = r3.f24394a
            com.google.android.gms.measurement.internal.zzey r4 = r4.U()
            com.google.android.gms.measurement.internal.zzew r4 = r4.m()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.a(r0)
        L1b:
            r4 = r1
            goto L2c
        L1d:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L24
            goto L1b
        L24:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L2c:
            if (r4 == 0) goto L58
            com.google.android.gms.measurement.internal.zzgi r0 = r3.f24394a     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.Context r0 = r0.N0()     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L48
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L48
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            if (r4 != 0) goto L43
            return r1
        L43:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            return r4
        L48:
            r4 = move-exception
            com.google.android.gms.measurement.internal.zzgi r0 = r3.f24394a
            com.google.android.gms.measurement.internal.zzey r0 = r0.U()
            com.google.android.gms.measurement.internal.zzew r0 = r0.m()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.b(r2, r4)
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaf.u(java.lang.String):java.util.List");
    }

    final void v(b bVar) {
        this.f24428c = bVar;
    }

    public final boolean w() {
        Boolean boolO = o("google_analytics_adid_collection_enabled");
        return boolO == null || boolO.booleanValue();
    }

    public final boolean y(String str, zzek zzekVar) {
        if (str == null) {
            return ((Boolean) zzekVar.a(null)).booleanValue();
        }
        String strA = this.f24428c.a(str, zzekVar.b());
        return TextUtils.isEmpty(strA) ? ((Boolean) zzekVar.a(null)).booleanValue() : ((Boolean) zzekVar.a(Boolean.valueOf(AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(strA)))).booleanValue();
    }

    public final boolean z(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(this.f24428c.a(str, "gaia_collection_enabled"));
    }
}
