package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzof;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzpv;
import com.vungle.mediation.BuildConfig;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzep extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f24613g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f24614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f24615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f24616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f24617k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f24618l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f24619m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f24620n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f24621o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f24622p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f24623q;

    zzep(zzgi zzgiVar, long j10) {
        super(zzgiVar);
        this.f24622p = 0L;
        this.f24623q = null;
        this.f24615i = j10;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|2|(1:4)(21:87|6|(1:10)(2:11|(1:13))|83|14|(4:16|(1:18)(1:20)|85|21)|26|(1:31)(1:30)|32|SW:33|43|(1:45)|89|46|(1:48)|49|(3:51|(1:53)(1:54)|55)|(3:57|(1:59)(1:60)|61)|65|(2:68|(1:70)(4:71|(3:74|(1:92)(1:93)|72)|91|77))(1:77)|(2:79|80)(2:81|82))|5|26|(2:28|31)(0)|32|SW:33|43|(0)|89|46|(0)|49|(0)|(0)|65|(0)(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01db, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01dc, code lost:
    
        r11.f24394a.U().m().c("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzey.v(r0), r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0194 A[Catch: IllegalStateException -> 0x01db, TryCatch #3 {IllegalStateException -> 0x01db, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:57:0x01bc, B:59:0x01d2, B:61:0x01d7, B:60:0x01d5), top: B:89:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01bc A[Catch: IllegalStateException -> 0x01db, TryCatch #3 {IllegalStateException -> 0x01db, blocks: (B:46:0x0173, B:49:0x018c, B:51:0x0194, B:55:0x01b2, B:54:0x01ae, B:57:0x01bc, B:59:0x01d2, B:61:0x01d7, B:60:0x01d5), top: B:89:0x0173 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024c  */
    @Override // com.google.android.gms.measurement.internal.r
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void g() {
        /*
            Method dump skipped, instruction units count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzep.g():void");
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return true;
    }

    final int j() {
        d();
        return this.f24618l;
    }

    final int k() {
        d();
        return this.f24611e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v38, types: [com.google.android.gms.measurement.internal.y0, com.google.android.gms.measurement.internal.zzlp] */
    /* JADX WARN: Type inference failed for: r9v39, types: [com.google.android.gms.measurement.internal.y0] */
    /* JADX WARN: Type inference failed for: r9v43 */
    /* JADX WARN: Type inference failed for: r9v48 */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v50 */
    final zzp l(String str) {
        String str2;
        Class<?> clsLoadClass;
        Object objInvoke;
        String str3;
        long jMin;
        String str4;
        long j10;
        String str5;
        String str6;
        long j11;
        c();
        String strN = n();
        String strO = o();
        d();
        String str7 = this.f24610d;
        d();
        long j12 = this.f24611e;
        d();
        Preconditions.k(this.f24612f);
        String str8 = this.f24612f;
        this.f24394a.v().l();
        d();
        c();
        long j13 = this.f24614h;
        long j14 = j13;
        if (j13 == 0) {
            ?? L = this.f24394a.L();
            Context contextN0 = this.f24394a.N0();
            String packageName = this.f24394a.N0().getPackageName();
            L.c();
            Preconditions.k(contextN0);
            Preconditions.g(packageName);
            PackageManager packageManager = contextN0.getPackageManager();
            MessageDigest messageDigestO = zzlp.o();
            long j15 = -1;
            j15 = -1;
            if (messageDigestO == null) {
                L.f24394a.U().m().a("Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (L.T(contextN0, packageName)) {
                            j15 = 0;
                            L = L;
                        } else {
                            Signature[] signatureArr = Wrappers.a(contextN0).f(L.f24394a.N0().getPackageName(), 64).signatures;
                            if (signatureArr == null || signatureArr.length <= 0) {
                                L.f24394a.U().r().a("Could not get signatures");
                                L = L;
                            } else {
                                long jQ0 = zzlp.q0(messageDigestO.digest(signatureArr[0].toByteArray()));
                                j15 = jQ0;
                                L = jQ0;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e10) {
                        L.f24394a.U().m().b("Package name not found", e10);
                        j11 = 0;
                    }
                }
                j11 = 0;
                this.f24614h = j11;
                j14 = j11;
            }
            j11 = j15;
            this.f24614h = j11;
            j14 = j11;
        }
        long j16 = j14;
        boolean zJ = this.f24394a.j();
        boolean z10 = !this.f24394a.D().f24371p;
        c();
        if (this.f24394a.j()) {
            zzpv.b();
            if (this.f24394a.v().y(null, zzel.f24564d0)) {
                this.f24394a.U().q().a("Disabled IID for tests.");
            } else {
                try {
                    clsLoadClass = this.f24394a.N0().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                } catch (ClassNotFoundException unused) {
                }
                if (clsLoadClass != null) {
                    try {
                        objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.f24394a.N0());
                    } catch (Exception unused2) {
                        this.f24394a.U().u().a("Failed to obtain Firebase Analytics instance");
                    }
                    if (objInvoke == null) {
                        str2 = null;
                    } else {
                        try {
                            str2 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                        } catch (Exception unused3) {
                            this.f24394a.U().s().a("Failed to retrieve Firebase Instance Id");
                            str2 = null;
                        }
                    }
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        zzgi zzgiVar = this.f24394a;
        long jA = zzgiVar.D().f24360e.a();
        if (jA == 0) {
            str3 = strN;
            jMin = zzgiVar.G;
        } else {
            str3 = strN;
            jMin = Math.min(zzgiVar.G, jA);
        }
        d();
        int i10 = this.f24618l;
        boolean zW = this.f24394a.v().w();
        x xVarD = this.f24394a.D();
        xVarD.c();
        boolean z11 = xVarD.j().getBoolean("deferred_analytics_collection", false);
        d();
        String str9 = this.f24620n;
        Boolean boolValueOf = this.f24394a.v().o("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r2.booleanValue());
        long j17 = this.f24615i;
        List list = this.f24616j;
        String strH = this.f24394a.D().l().h();
        if (this.f24617k == null) {
            str4 = str9;
            j10 = j17;
            if (this.f24394a.v().y(null, zzel.P0)) {
                this.f24617k = this.f24394a.L().l();
            } else {
                this.f24617k = BuildConfig.FLAVOR;
            }
        } else {
            str4 = str9;
            j10 = j17;
        }
        String str10 = this.f24617k;
        zzpp.b();
        if (this.f24394a.v().y(null, zzel.K0)) {
            c();
            if (this.f24622p == 0) {
                str5 = str10;
            } else {
                str5 = str10;
                long jA2 = this.f24394a.x().a() - this.f24622p;
                if (this.f24621o != null && jA2 > 86400000 && this.f24623q == null) {
                    q();
                }
            }
            if (this.f24621o == null) {
                q();
            }
            str6 = this.f24621o;
        } else {
            str5 = str10;
            str6 = null;
        }
        return new zzp(str3, strO, str7, j12, str8, 61000L, j16, str, zJ, z10, str2, 0L, jMin, i10, zW, z11, str4, boolValueOf, j10, list, (String) null, strH, str5, str6);
    }

    final String m() {
        d();
        return this.f24620n;
    }

    final String n() {
        d();
        Preconditions.k(this.f24609c);
        return this.f24609c;
    }

    final String o() {
        zzof.b();
        if (this.f24394a.v().y(null, zzel.f24584n0)) {
            c();
        }
        d();
        Preconditions.k(this.f24619m);
        return this.f24619m;
    }

    final List p() {
        return this.f24616j;
    }

    final void q() {
        String str;
        c();
        if (this.f24394a.D().l().i(zzag.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            this.f24394a.L().p().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            this.f24394a.U().l().a("Analytics Storage consent is not granted");
            str = null;
        }
        zzew zzewVarL = this.f24394a.U().l();
        Object[] objArr = new Object[1];
        objArr[0] = str == null ? "null" : "not null";
        zzewVarL.a(String.format("Resetting session stitching token to %s", objArr));
        this.f24621o = str;
        this.f24622p = this.f24394a.x().a();
    }

    final boolean r(String str) {
        String str2 = this.f24623q;
        boolean z10 = false;
        if (str2 != null && !str2.equals(str)) {
            z10 = true;
        }
        this.f24623q = str;
        return z10;
    }
}
