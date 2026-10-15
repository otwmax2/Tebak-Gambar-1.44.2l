package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzfa;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzgq;
import com.google.android.gms.internal.measurement.zzgs;
import com.google.android.gms.internal.measurement.zzkm;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfz extends r3 implements b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f24684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final Map f24685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    final Map f24686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    final Map f24687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f24688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f24689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    final o.e f24690j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final com.google.android.gms.internal.measurement.zzr f24691k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f24692l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map f24693m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f24694n;

    zzfz(zzli zzliVar) {
        super(zzliVar);
        this.f24684d = new o.a();
        this.f24685e = new o.a();
        this.f24686f = new o.a();
        this.f24687g = new o.a();
        this.f24688h = new o.a();
        this.f24692l = new o.a();
        this.f24693m = new o.a();
        this.f24694n = new o.a();
        this.f24689i = new o.a();
        this.f24690j = new z(this, 20);
        this.f24691k = new a0(this);
    }

    private final com.google.android.gms.internal.measurement.zzfe h(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzfe.A();
        }
        try {
            com.google.android.gms.internal.measurement.zzfe zzfeVar = (com.google.android.gms.internal.measurement.zzfe) ((zzfd) zzlk.z(com.google.android.gms.internal.measurement.zzfe.y(), bArr)).o();
            this.f24394a.U().q().c("Parsed config. version, gmp_app_id", zzfeVar.L() ? Long.valueOf(zzfeVar.w()) : null, zzfeVar.K() ? zzfeVar.B() : null);
            return zzfeVar;
        } catch (zzkm e10) {
            this.f24394a.U().r().c("Unable to merge remote config. appId", zzey.v(str), e10);
            return com.google.android.gms.internal.measurement.zzfe.A();
        } catch (RuntimeException e11) {
            this.f24394a.U().r().c("Unable to merge remote config. appId", zzey.v(str), e11);
            return com.google.android.gms.internal.measurement.zzfe.A();
        }
    }

    private final void i(String str, zzfd zzfdVar) {
        HashSet hashSet = new HashSet();
        o.a aVar = new o.a();
        o.a aVar2 = new o.a();
        o.a aVar3 = new o.a();
        if (zzfdVar != null) {
            zzpg.b();
            if (this.f24394a.v().y(null, zzel.D0)) {
                Iterator it = zzfdVar.x().iterator();
                while (it.hasNext()) {
                    hashSet.add(((zzfa) it.next()).v());
                }
            }
            for (int i10 = 0; i10 < zzfdVar.r(); i10++) {
                com.google.android.gms.internal.measurement.zzfb zzfbVar = (com.google.android.gms.internal.measurement.zzfb) zzfdVar.s(i10).j();
                if (TextUtils.isEmpty(zzfbVar.t())) {
                    this.f24394a.U().r().a("EventConfig contained null event name");
                } else {
                    String strT = zzfbVar.t();
                    String strB = zzhf.b(zzfbVar.t());
                    if (!TextUtils.isEmpty(strB)) {
                        zzfbVar.s(strB);
                        zzfdVar.u(i10, zzfbVar);
                    }
                    if (zzfbVar.w() && zzfbVar.u()) {
                        aVar.put(strT, Boolean.TRUE);
                    }
                    if (zzfbVar.x() && zzfbVar.v()) {
                        aVar2.put(zzfbVar.t(), Boolean.TRUE);
                    }
                    if (zzfbVar.y()) {
                        if (zzfbVar.r() < 2 || zzfbVar.r() > 65535) {
                            this.f24394a.U().r().c("Invalid sampling rate. Event name, sample rate", zzfbVar.t(), Integer.valueOf(zzfbVar.r()));
                        } else {
                            aVar3.put(zzfbVar.t(), Integer.valueOf(zzfbVar.r()));
                        }
                    }
                }
            }
        }
        this.f24685e.put(str, hashSet);
        this.f24686f.put(str, aVar);
        this.f24687g.put(str, aVar2);
        this.f24689i.put(str, aVar3);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void j(java.lang.String r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfz.j(java.lang.String):void");
    }

    private final void k(final String str, com.google.android.gms.internal.measurement.zzfe zzfeVar) {
        if (zzfeVar.u() == 0) {
            this.f24690j.e(str);
            return;
        }
        this.f24394a.U().q().b("EES programs found", Integer.valueOf(zzfeVar.u()));
        zzgs zzgsVar = (zzgs) zzfeVar.F().get(0);
        try {
            zzc zzcVar = new zzc();
            zzcVar.d("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzft
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzn("internal.remoteConfig", new b0(this.f24678a, str));
                }
            });
            zzcVar.d("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfv
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzfz zzfzVar = this.f24682a;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfu
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzfz zzfzVar2 = zzfzVar;
                            String str3 = str2;
                            c0 c0VarP = zzfzVar2.f24263b.T().P(str3);
                            HashMap map = new HashMap();
                            map.put("platform", "android");
                            map.put("package_name", str3);
                            zzfzVar2.f24394a.v().l();
                            map.put("gmp_version", 61000L);
                            if (c0VarP != null) {
                                String strH0 = c0VarP.h0();
                                if (strH0 != null) {
                                    map.put("app_version", strH0);
                                }
                                map.put("app_version_int", Long.valueOf(c0VarP.M()));
                                map.put("dynamite_version", Long.valueOf(c0VarP.V()));
                            }
                            return map;
                        }
                    });
                }
            });
            zzcVar.d("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfs
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzt(this.f24677a.f24691k);
                }
            });
            zzcVar.c(zzgsVar);
            this.f24690j.d(str, zzcVar);
            this.f24394a.U().q().c("EES program loaded for appId, activities", str, Integer.valueOf(zzgsVar.u().u()));
            Iterator it = zzgsVar.u().x().iterator();
            while (it.hasNext()) {
                this.f24394a.U().q().b("EES program activity", ((zzgq) it.next()).v());
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            this.f24394a.U().m().b("Failed to load EES program. appId", str);
        }
    }

    private static final Map l(com.google.android.gms.internal.measurement.zzfe zzfeVar) {
        o.a aVar = new o.a();
        if (zzfeVar != null) {
            for (com.google.android.gms.internal.measurement.zzfi zzfiVar : zzfeVar.G()) {
                aVar.put(zzfiVar.v(), zzfiVar.w());
            }
        }
        return aVar;
    }

    static /* bridge */ /* synthetic */ zzc n(zzfz zzfzVar, String str) throws Throwable {
        zzfzVar.d();
        Preconditions.g(str);
        if (!zzfzVar.z(str)) {
            return null;
        }
        if (!zzfzVar.f24688h.containsKey(str) || zzfzVar.f24688h.get(str) == null) {
            zzfzVar.j(str);
        } else {
            zzfzVar.k(str, (com.google.android.gms.internal.measurement.zzfe) zzfzVar.f24688h.get(str));
        }
        return (zzc) zzfzVar.f24690j.h().get(str);
    }

    final boolean A(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(a(str, "measurement.upload.blacklist_internal"));
    }

    final boolean C(String str, String str2) throws Throwable {
        Boolean bool;
        c();
        j(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f24687g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean D(String str, String str2) throws Throwable {
        Boolean bool;
        c();
        j(str);
        if (A(str) && zzlp.V(str2)) {
            return true;
        }
        if (E(str) && zzlp.W(str2)) {
            return true;
        }
        Map map = (Map) this.f24686f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean E(String str) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(a(str, "measurement.upload.blacklist_public"));
    }

    protected final boolean F(String str, byte[] bArr, String str2, String str3) throws Throwable {
        d();
        c();
        Preconditions.g(str);
        zzfd zzfdVar = (zzfd) h(str, bArr).j();
        if (zzfdVar == null) {
            return false;
        }
        i(str, zzfdVar);
        k(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.o());
        this.f24688h.put(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.o());
        this.f24692l.put(str, zzfdVar.v());
        this.f24693m.put(str, str2);
        this.f24694n.put(str, str3);
        this.f24684d.put(str, l((com.google.android.gms.internal.measurement.zzfe) zzfdVar.o()));
        this.f24263b.T().i(str, new ArrayList(zzfdVar.w()));
        try {
            zzfdVar.t();
            bArr = ((com.google.android.gms.internal.measurement.zzfe) zzfdVar.o()).h();
        } catch (RuntimeException e10) {
            this.f24394a.U().r().c("Unable to serialize reduced-size config. Storing full config instead. appId", zzey.v(str), e10);
        }
        e eVarT = this.f24263b.T();
        Preconditions.g(str);
        eVarT.c();
        eVarT.d();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        if (eVarT.f24394a.v().y(null, zzel.O0)) {
            contentValues.put("e_tag", str3);
        }
        try {
            if (eVarT.N().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                eVarT.f24394a.U().m().b("Failed to update remote config (got 0). appId", zzey.v(str));
            }
        } catch (SQLiteException e11) {
            eVarT.f24394a.U().m().c("Error storing remote config. appId", zzey.v(str), e11);
        }
        this.f24688h.put(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.o());
        return true;
    }

    final boolean G(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && ((Set) this.f24685e.get(str)).contains("app_instance_id");
    }

    final boolean H(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && (((Set) this.f24685e.get(str)).contains("device_model") || ((Set) this.f24685e.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    final boolean I(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && ((Set) this.f24685e.get(str)).contains("enhanced_user_id");
    }

    final boolean J(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && ((Set) this.f24685e.get(str)).contains("google_signals");
    }

    final boolean K(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && (((Set) this.f24685e.get(str)).contains("os_version") || ((Set) this.f24685e.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    final boolean L(String str) throws Throwable {
        c();
        j(str);
        return this.f24685e.get(str) != null && ((Set) this.f24685e.get(str)).contains("user_id");
    }

    @Override // com.google.android.gms.measurement.internal.b
    public final String a(String str, String str2) throws Throwable {
        c();
        j(str);
        Map map = (Map) this.f24684d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        return false;
    }

    final int m(String str, String str2) throws Throwable {
        Integer num;
        c();
        j(str);
        Map map = (Map) this.f24689i.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    protected final com.google.android.gms.internal.measurement.zzfe o(String str) {
        d();
        c();
        Preconditions.g(str);
        j(str);
        return (com.google.android.gms.internal.measurement.zzfe) this.f24688h.get(str);
    }

    protected final String p(String str) {
        c();
        return (String) this.f24694n.get(str);
    }

    protected final String q(String str) {
        c();
        return (String) this.f24693m.get(str);
    }

    final String r(String str) throws Throwable {
        c();
        j(str);
        return (String) this.f24692l.get(str);
    }

    final Set u(String str) throws Throwable {
        c();
        j(str);
        return (Set) this.f24685e.get(str);
    }

    protected final void v(String str) {
        c();
        this.f24693m.put(str, null);
    }

    final void w(String str) {
        c();
        this.f24688h.remove(str);
    }

    final boolean y(String str) {
        c();
        com.google.android.gms.internal.measurement.zzfe zzfeVarO = o(str);
        if (zzfeVarO == null) {
            return false;
        }
        return zzfeVarO.J();
    }

    public final boolean z(String str) {
        com.google.android.gms.internal.measurement.zzfe zzfeVar;
        return (TextUtils.isEmpty(str) || (zzfeVar = (com.google.android.gms.internal.measurement.zzfe) this.f24688h.get(str)) == null || zzfeVar.u() == 0) ? false : true;
    }
}
