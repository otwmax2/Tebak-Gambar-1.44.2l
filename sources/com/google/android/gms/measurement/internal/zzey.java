package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzey extends z0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private char f24634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f24635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzew f24637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzew f24638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzew f24639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzew f24640i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzew f24641j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzew f24642k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzew f24643l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzew f24644m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzew f24645n;

    zzey(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24634c = (char) 0;
        this.f24635d = -1L;
        this.f24637f = new zzew(this, 6, false, false);
        this.f24638g = new zzew(this, 6, true, false);
        this.f24639h = new zzew(this, 6, false, true);
        this.f24640i = new zzew(this, 5, false, false);
        this.f24641j = new zzew(this, 5, true, false);
        this.f24642k = new zzew(this, 5, false, true);
        this.f24643l = new zzew(this, 4, false, false);
        this.f24644m = new zzew(this, 3, false, false);
        this.f24645n = new zzew(this, 2, false, false);
    }

    private static String E(String str) {
        if (TextUtils.isEmpty(str)) {
            return BuildConfig.FLAVOR;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
    }

    protected static Object v(String str) {
        if (str == null) {
            return null;
        }
        return new q(str);
    }

    static String w(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        String str2 = BuildConfig.FLAVOR;
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        String strY = y(z10, obj);
        String strY2 = y(z10, obj2);
        String strY3 = y(z10, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strY)) {
            sb.append(str2);
            sb.append(strY);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strY2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strY2);
        }
        if (!TextUtils.isEmpty(strY3)) {
            sb.append(str3);
            sb.append(strY3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    static String y(boolean z10, Object obj) {
        String className;
        String str = BuildConfig.FLAVOR;
        if (obj == null) {
            return BuildConfig.FLAVOR;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i10 = 0;
        if (obj instanceof Long) {
            if (!z10) {
                return obj.toString();
            }
            Long l10 = (Long) obj;
            if (Math.abs(l10.longValue()) < 100) {
                return obj.toString();
            }
            if (obj.toString().charAt(0) == '-') {
                str = "-";
            }
            String strValueOf = String.valueOf(Math.abs(l10.longValue()));
            return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof q ? ((q) obj).f24253a : z10 ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z10 ? th.getClass().getName() : th.toString());
        String strE = E(zzgi.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i10 >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i10];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && E(className).equals(strE)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
            i10++;
        }
        return sb.toString();
    }

    protected final void D(int i10, boolean z10, boolean z11, String str, Object obj, Object obj2, Object obj3) {
        if (!z10 && Log.isLoggable(z(), i10)) {
            Log.println(i10, z(), w(false, str, obj, obj2, obj3));
        }
        if (z11 || i10 < 5) {
            return;
        }
        Preconditions.k(str);
        zzgf zzgfVarE = this.f24394a.E();
        if (zzgfVarE == null) {
            Log.println(6, z(), "Scheduler not set. Not logging error/warn");
        } else if (zzgfVarE.i()) {
            zzgfVarE.v(new p(this, i10 >= 9 ? 8 : i10, str, obj, obj2, obj3));
        } else {
            Log.println(6, z(), "Scheduler not initialized. Not logging error/warn");
        }
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final boolean e() {
        return false;
    }

    public final zzew l() {
        return this.f24644m;
    }

    public final zzew m() {
        return this.f24637f;
    }

    public final zzew n() {
        return this.f24639h;
    }

    public final zzew o() {
        return this.f24638g;
    }

    public final zzew p() {
        return this.f24643l;
    }

    public final zzew q() {
        return this.f24645n;
    }

    public final zzew r() {
        return this.f24640i;
    }

    public final zzew s() {
        return this.f24642k;
    }

    public final zzew u() {
        return this.f24641j;
    }

    @VisibleForTesting
    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    protected final String z() {
        String str;
        synchronized (this) {
            if (this.f24636e == null) {
                if (this.f24394a.O() != null) {
                    this.f24636e = this.f24394a.O();
                } else {
                    this.f24636e = this.f24394a.v().r();
                }
            }
            Preconditions.k(this.f24636e);
            str = this.f24636e;
        }
        return str;
    }
}
