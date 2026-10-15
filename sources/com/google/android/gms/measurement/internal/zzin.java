package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoc;
import com.google.android.gms.internal.measurement.zzof;
import com.google.android.gms.internal.measurement.zzol;
import com.google.android.gms.internal.measurement.zzpm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzin extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    protected x1 f24766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzhi f24767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f24768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f24769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference f24770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f24771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzah f24772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicLong f24774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f24775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f24776m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final zzr f24777n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    protected boolean f24778o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c4 f24779p;

    protected zzin(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24768e = new CopyOnWriteArraySet();
        this.f24771h = new Object();
        this.f24778o = true;
        this.f24779p = new n1(this);
        this.f24770g = new AtomicReference();
        this.f24772i = new zzah(null, null);
        this.f24773j = 100;
        this.f24775l = -1L;
        this.f24776m = 100;
        this.f24774k = new AtomicLong(0L);
        this.f24777n = new zzr(zzgiVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final void l(Bundle bundle, long j10) {
        if (TextUtils.isEmpty(this.f24394a.y().o())) {
            E(bundle, 0, j10);
        } else {
            this.f24394a.U().s().a("Using developer consent only; google app id found");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(Boolean bool, boolean z10) {
        c();
        d();
        this.f24394a.U().l().b("Setting app measurement enabled (FE)", bool);
        this.f24394a.D().n(bool);
        if (z10) {
            x xVarD = this.f24394a.D();
            zzgi zzgiVar = xVarD.f24394a;
            xVarD.c();
            SharedPreferences.Editor editorEdit = xVarD.j().edit();
            if (bool != null) {
                editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit.remove("measurement_enabled_from_api");
            }
            editorEdit.apply();
        }
        if (this.f24394a.k() || !(bool == null || bool.booleanValue())) {
            Q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q() {
        c();
        String strA = this.f24394a.D().f24368m.a();
        if (strA != null) {
            if ("unset".equals(strA)) {
                M("app", "_npa", null, this.f24394a.x().a());
            } else {
                M("app", "_npa", Long.valueOf(true != ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(strA) ? 0L : 1L), this.f24394a.x().a());
            }
        }
        if (!this.f24394a.j() || !this.f24778o) {
            this.f24394a.U().l().a("Updating Scion state (FE)");
            this.f24394a.J().r();
            return;
        }
        this.f24394a.U().l().a("Recording app launch after enabling measurement for the first time (FE)");
        h0();
        zzol.b();
        if (this.f24394a.v().y(null, zzel.f24570g0)) {
            this.f24394a.K().f24832d.a();
        }
        this.f24394a.B().v(new c1(this));
    }

    static /* bridge */ /* synthetic */ void d0(zzin zzinVar, zzah zzahVar, zzah zzahVar2) {
        boolean z10;
        zzag[] zzagVarArr = {zzag.ANALYTICS_STORAGE, zzag.AD_STORAGE};
        int i10 = 0;
        while (true) {
            if (i10 >= 2) {
                z10 = false;
                break;
            }
            zzag zzagVar = zzagVarArr[i10];
            if (!zzahVar2.i(zzagVar) && zzahVar.i(zzagVar)) {
                z10 = true;
                break;
            }
            i10++;
        }
        boolean zL = zzahVar.l(zzahVar2, zzag.ANALYTICS_STORAGE, zzag.AD_STORAGE);
        if (z10 || zL) {
            zzinVar.f24394a.y().q();
        }
    }

    static /* synthetic */ void e0(zzin zzinVar, zzah zzahVar, int i10, long j10, boolean z10, boolean z11) {
        zzinVar.c();
        zzinVar.d();
        if (j10 <= zzinVar.f24775l && zzah.j(zzinVar.f24776m, i10)) {
            zzinVar.f24394a.U().p().b("Dropped out-of-date consent setting, proposed settings", zzahVar);
            return;
        }
        x xVarD = zzinVar.f24394a.D();
        zzgi zzgiVar = xVarD.f24394a;
        xVarD.c();
        if (!xVarD.r(i10)) {
            zzinVar.f24394a.U().p().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i10));
            return;
        }
        SharedPreferences.Editor editorEdit = xVarD.j().edit();
        editorEdit.putString("consent_settings", zzahVar.h());
        editorEdit.putInt("consent_source", i10);
        editorEdit.apply();
        zzinVar.f24775l = j10;
        zzinVar.f24776m = i10;
        zzinVar.f24394a.J().o(z10);
        if (z11) {
            zzinVar.f24394a.J().Q(new AtomicReference());
        }
    }

    final void A(String str) {
        this.f24770g.set(str);
    }

    public final void C(Bundle bundle) {
        D(bundle, this.f24394a.x().a());
    }

    public final void D(Bundle bundle, long j10) {
        Preconditions.k(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.f24394a.U().r().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.k(bundle2);
        zzhe.a(bundle2, "app_id", String.class, null);
        zzhe.a(bundle2, "origin", String.class, null);
        zzhe.a(bundle2, "name", String.class, null);
        zzhe.a(bundle2, SDKConstants.PARAM_VALUE, Object.class, null);
        zzhe.a(bundle2, "trigger_event_name", String.class, null);
        zzhe.a(bundle2, "trigger_timeout", Long.class, 0L);
        zzhe.a(bundle2, "timed_out_event_name", String.class, null);
        zzhe.a(bundle2, "timed_out_event_params", Bundle.class, null);
        zzhe.a(bundle2, "triggered_event_name", String.class, null);
        zzhe.a(bundle2, "triggered_event_params", Bundle.class, null);
        zzhe.a(bundle2, "time_to_live", Long.class, 0L);
        zzhe.a(bundle2, "expired_event_name", String.class, null);
        zzhe.a(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.g(bundle2.getString("name"));
        Preconditions.g(bundle2.getString("origin"));
        Preconditions.k(bundle2.get(SDKConstants.PARAM_VALUE));
        bundle2.putLong("creation_timestamp", j10);
        String string = bundle2.getString("name");
        Object obj = bundle2.get(SDKConstants.PARAM_VALUE);
        if (this.f24394a.L().n0(string) != 0) {
            this.f24394a.U().m().b("Invalid conditional user property name", this.f24394a.A().f(string));
            return;
        }
        if (this.f24394a.L().j0(string, obj) != 0) {
            this.f24394a.U().m().c("Invalid conditional user property value", this.f24394a.A().f(string), obj);
            return;
        }
        Object objK = this.f24394a.L().k(string, obj);
        if (objK == null) {
            this.f24394a.U().m().c("Unable to normalize conditional user property value", this.f24394a.A().f(string), obj);
            return;
        }
        zzhe.b(bundle2, objK);
        long j11 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
            this.f24394a.v();
            if (j11 > 15552000000L || j11 < 1) {
                this.f24394a.U().m().c("Invalid conditional user property timeout", this.f24394a.A().f(string), Long.valueOf(j11));
                return;
            }
        }
        long j12 = bundle2.getLong("time_to_live");
        this.f24394a.v();
        if (j12 > 15552000000L || j12 < 1) {
            this.f24394a.U().m().c("Invalid conditional user property time to live", this.f24394a.A().f(string), Long.valueOf(j12));
        } else {
            this.f24394a.B().v(new h1(this, bundle2));
        }
    }

    public final void E(Bundle bundle, int i10, long j10) {
        d();
        String strG = zzah.g(bundle);
        if (strG != null) {
            this.f24394a.U().s().b("Ignoring invalid consent setting", strG);
            this.f24394a.U().s().a("Valid consent values are 'granted', 'denied'");
        }
        F(zzah.a(bundle), i10, j10);
    }

    public final void F(zzah zzahVar, int i10, long j10) {
        zzah zzahVar2;
        boolean z10;
        boolean z11;
        boolean z12;
        zzah zzahVarD = zzahVar;
        d();
        if (i10 != -10 && zzahVar.e() == null && zzahVar.f() == null) {
            this.f24394a.U().s().a("Discarding empty consent settings");
            return;
        }
        synchronized (this.f24771h) {
            zzahVar2 = this.f24772i;
            z10 = true;
            z11 = false;
            if (zzah.j(i10, this.f24773j)) {
                boolean zK = zzahVarD.k(this.f24772i);
                zzag zzagVar = zzag.ANALYTICS_STORAGE;
                if (zzahVarD.i(zzagVar) && !this.f24772i.i(zzagVar)) {
                    z11 = true;
                }
                zzahVarD = zzahVarD.d(this.f24772i);
                this.f24772i = zzahVarD;
                this.f24773j = i10;
                z12 = z11;
                z11 = zK;
            } else {
                z10 = false;
                z12 = false;
            }
        }
        if (!z10) {
            this.f24394a.U().p().b("Ignoring lower-priority consent settings, proposed settings", zzahVarD);
            return;
        }
        long andIncrement = this.f24774k.getAndIncrement();
        if (z11) {
            this.f24770g.set(null);
            this.f24394a.B().w(new t1(this, zzahVarD, j10, i10, andIncrement, z12, zzahVar2));
            return;
        }
        u1 u1Var = new u1(this, zzahVarD, i10, andIncrement, z12, zzahVar2);
        if (i10 == 30 || i10 == -10) {
            this.f24394a.B().w(u1Var);
        } else {
            this.f24394a.B().v(u1Var);
        }
    }

    public final void G(final Bundle bundle, final long j10) {
        zzof.b();
        if (this.f24394a.v().y(null, zzel.f24584n0)) {
            this.f24394a.B().w(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzho
                @Override // java.lang.Runnable
                public final void run() {
                    this.f24761o.l(bundle, j10);
                }
            });
        } else {
            l(bundle, j10);
        }
    }

    public final void H(zzhi zzhiVar) {
        zzhi zzhiVar2;
        c();
        d();
        if (zzhiVar != null && zzhiVar != (zzhiVar2 = this.f24767d)) {
            Preconditions.o(zzhiVar2 == null, "EventInterceptor already set.");
        }
        this.f24767d = zzhiVar;
    }

    public final void I(Boolean bool) {
        d();
        this.f24394a.B().v(new s1(this, bool));
    }

    final void J(zzah zzahVar) {
        c();
        boolean z10 = (zzahVar.i(zzag.ANALYTICS_STORAGE) && zzahVar.i(zzag.AD_STORAGE)) || this.f24394a.J().w();
        if (z10 != this.f24394a.k()) {
            this.f24394a.g(z10);
            x xVarD = this.f24394a.D();
            zzgi zzgiVar = xVarD.f24394a;
            xVarD.c();
            Boolean boolValueOf = xVarD.j().contains("measurement_enabled_from_api") ? Boolean.valueOf(xVarD.j().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z10 || boolValueOf == null || boolValueOf.booleanValue()) {
                P(Boolean.valueOf(z10), false);
            }
        }
    }

    public final void K(String str, String str2, Object obj, boolean z10) {
        L("auto", "_ldl", obj, true, this.f24394a.x().a());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void L(java.lang.String r16, java.lang.String r17, java.lang.Object r18, boolean r19, long r20) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzin.L(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void M(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.g(r9)
            com.google.android.gms.common.internal.Preconditions.g(r10)
            r8.c()
            r8.d()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L64
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L52
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L52
            r10 = 1
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r0 = "false"
            boolean r11 = r0.equals(r11)
            r2 = 1
            if (r10 == r11) goto L37
            r10 = 0
            goto L38
        L37:
            r10 = r2
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r10)
            com.google.android.gms.measurement.internal.zzgi r10 = r8.f24394a
            com.google.android.gms.measurement.internal.x r10 = r10.D()
            com.google.android.gms.measurement.internal.zzfm r10 = r10.f24368m
            long r4 = r11.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L4e
            java.lang.String r0 = "true"
        L4e:
            r10.b(r0)
            goto L61
        L52:
            if (r11 != 0) goto L64
            com.google.android.gms.measurement.internal.zzgi r10 = r8.f24394a
            com.google.android.gms.measurement.internal.x r10 = r10.D()
            com.google.android.gms.measurement.internal.zzfm r10 = r10.f24368m
            java.lang.String r0 = "unset"
            r10.b(r0)
        L61:
            r6 = r11
            r3 = r1
            goto L66
        L64:
            r3 = r10
            r6 = r11
        L66:
            com.google.android.gms.measurement.internal.zzgi r10 = r8.f24394a
            boolean r10 = r10.j()
            if (r10 != 0) goto L7e
            com.google.android.gms.measurement.internal.zzgi r9 = r8.f24394a
            com.google.android.gms.measurement.internal.zzey r9 = r9.U()
            com.google.android.gms.measurement.internal.zzew r9 = r9.q()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.a(r10)
            return
        L7e:
            com.google.android.gms.measurement.internal.zzgi r10 = r8.f24394a
            boolean r10 = r10.m()
            if (r10 != 0) goto L87
            return
        L87:
            com.google.android.gms.measurement.internal.zzll r10 = new com.google.android.gms.measurement.internal.zzll
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.zzgi r9 = r8.f24394a
            com.google.android.gms.measurement.internal.zzkb r9 = r9.J()
            r9.u(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzin.M(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void N(zzhj zzhjVar) {
        d();
        Preconditions.k(zzhjVar);
        if (this.f24768e.remove(zzhjVar)) {
            return;
        }
        this.f24394a.U().r().a("OnEventListener had not been registered");
    }

    public final int R(String str) {
        Preconditions.g(str);
        this.f24394a.v();
        return 25;
    }

    public final Boolean S() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f24394a.B().m(atomicReference, 15000L, "boolean test flag value", new k1(this, atomicReference));
    }

    public final Double T() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f24394a.B().m(atomicReference, 15000L, "double test flag value", new r1(this, atomicReference));
    }

    public final Integer V() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f24394a.B().m(atomicReference, 15000L, "int test flag value", new q1(this, atomicReference));
    }

    public final Long W() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f24394a.B().m(atomicReference, 15000L, "long test flag value", new p1(this, atomicReference));
    }

    public final String X() {
        return (String) this.f24770g.get();
    }

    public final String Y() {
        zziu zziuVarN = this.f24394a.I().n();
        if (zziuVarN != null) {
            return zziuVarN.f24786b;
        }
        return null;
    }

    public final String Z() {
        zziu zziuVarN = this.f24394a.I().n();
        if (zziuVarN != null) {
            return zziuVarN.f24785a;
        }
        return null;
    }

    public final String a0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f24394a.B().m(atomicReference, 15000L, "String test flag value", new o1(this, atomicReference));
    }

    public final ArrayList b0(String str, String str2) {
        if (this.f24394a.B().z()) {
            this.f24394a.U().m().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        this.f24394a.t();
        if (zzaa.a()) {
            this.f24394a.U().m().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f24394a.B().m(atomicReference, 5000L, "get conditional user properties", new j1(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zzlp.q(list);
        }
        this.f24394a.U().m().b("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final Map c0(String str, String str2, boolean z10) {
        if (this.f24394a.B().z()) {
            this.f24394a.U().m().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.f24394a.t();
        if (zzaa.a()) {
            this.f24394a.U().m().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f24394a.B().m(atomicReference, 5000L, "get user properties", new m1(this, atomicReference, null, str, str2, z10));
        List<zzll> list = (List) atomicReference.get();
        if (list == null) {
            this.f24394a.U().m().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z10));
            return Collections.emptyMap();
        }
        o.a aVar = new o.a(list.size());
        for (zzll zzllVar : list) {
            Object objV3 = zzllVar.V3();
            if (objV3 != null) {
                aVar.put(zzllVar.f24866p, objV3);
            }
        }
        return aVar;
    }

    public final void h0() {
        c();
        d();
        if (this.f24394a.m()) {
            if (this.f24394a.v().y(null, zzel.f24558a0)) {
                zzaf zzafVarV = this.f24394a.v();
                zzafVarV.f24394a.t();
                Boolean boolO = zzafVarV.o("google_analytics_deferred_deep_link_enabled");
                if (boolO != null && boolO.booleanValue()) {
                    this.f24394a.U().l().a("Deferred Deep Link feature enabled.");
                    this.f24394a.B().v(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhm
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzin zzinVar = this.f24758o;
                            zzinVar.c();
                            if (zzinVar.f24394a.D().f24373r.b()) {
                                zzinVar.f24394a.U().l().a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long jA = zzinVar.f24394a.D().f24374s.a();
                            zzinVar.f24394a.D().f24374s.b(1 + jA);
                            zzinVar.f24394a.v();
                            if (jA < 5) {
                                zzinVar.f24394a.e();
                            } else {
                                zzinVar.f24394a.U().r().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                zzinVar.f24394a.D().f24373r.a(true);
                            }
                        }
                    });
                }
            }
            this.f24394a.J().M();
            this.f24778o = false;
            x xVarD = this.f24394a.D();
            xVarD.c();
            String string = xVarD.j().getString("previous_os_version", null);
            xVarD.f24394a.w().f();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = xVarD.j().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.f24394a.w().f();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            q("auto", "_ou", bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return false;
    }

    public final void j(String str, String str2, Bundle bundle) {
        long jA = this.f24394a.x().a();
        Preconditions.g(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jA);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.f24394a.B().v(new i1(this, bundle2));
    }

    public final void k() {
        if (!(this.f24394a.N0().getApplicationContext() instanceof Application) || this.f24766c == null) {
            return;
        }
        ((Application) this.f24394a.N0().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f24766c);
    }

    final /* synthetic */ void m(Bundle bundle) {
        if (bundle == null) {
            this.f24394a.D().f24378w.b(new Bundle());
            return;
        }
        Bundle bundleA = this.f24394a.D().f24378w.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.f24394a.L().S(obj)) {
                    this.f24394a.L().y(this.f24779p, null, 27, null, null, 0);
                }
                this.f24394a.U().s().c("Invalid default event parameter type. Name, value", str, obj);
            } else if (zzlp.V(str)) {
                this.f24394a.U().s().b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                bundleA.remove(str);
            } else {
                zzlp zzlpVarL = this.f24394a.L();
                this.f24394a.v();
                if (zzlpVarL.N("param", str, 100, obj)) {
                    this.f24394a.L().z(bundleA, str, obj);
                }
            }
        }
        this.f24394a.L();
        int iH = this.f24394a.v().h();
        if (bundleA.size() > iH) {
            int i10 = 0;
            for (String str2 : new TreeSet(bundleA.keySet())) {
                i10++;
                if (i10 > iH) {
                    bundleA.remove(str2);
                }
            }
            this.f24394a.L().y(this.f24779p, null, 26, null, null, 0);
            this.f24394a.U().s().a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.f24394a.D().f24378w.b(bundleA);
        this.f24394a.J().q(bundleA);
    }

    public final void n(String str, String str2, Bundle bundle) {
        o(str, str2, bundle, true, true, this.f24394a.x().a());
    }

    public final void o(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (zzlp.Z(str2, "screen_view")) {
            this.f24394a.I().D(bundle2, j10);
        } else {
            y(str3, str2, j10, bundle2, z11, !z11 || this.f24767d == null || zzlp.V(str2), z10, null);
        }
    }

    public final void p(String str, String str2, Bundle bundle, String str3) {
        zzgi.o();
        y("auto", str2, this.f24394a.x().a(), bundle, false, true, true, str3);
    }

    final void q(String str, String str2, Bundle bundle) {
        c();
        r(str, str2, this.f24394a.x().a(), bundle);
    }

    final void r(String str, String str2, long j10, Bundle bundle) {
        c();
        s(str, str2, j10, bundle, true, this.f24767d == null || zzlp.V(str2), true, null);
    }

    protected final void s(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        boolean z13;
        String str4;
        long j11;
        String str5;
        String str6;
        Bundle[] bundleArr;
        Preconditions.g(str);
        Preconditions.k(bundle);
        c();
        d();
        if (!this.f24394a.j()) {
            this.f24394a.U().l().a("Event not sent since app measurement is disabled");
            return;
        }
        List listP = this.f24394a.y().p();
        if (listP != null && !listP.contains(str2)) {
            this.f24394a.U().l().c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f24769f) {
            this.f24769f = true;
            try {
                try {
                    (!this.f24394a.n() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.f24394a.N0().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.f24394a.N0());
                } catch (Exception e10) {
                    this.f24394a.U().r().b("Failed to invoke Tag Manager's initialize() method", e10);
                }
            } catch (ClassNotFoundException unused) {
                this.f24394a.U().p().a("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.f24394a.t();
            M("auto", "_lgclid", bundle.getString("gclid"), this.f24394a.x().a());
        }
        this.f24394a.t();
        if (z10 && zzlp.a0(str2)) {
            this.f24394a.L().v(bundle, this.f24394a.D().f24378w.a());
        }
        if (!z12) {
            this.f24394a.t();
            if (!"_iap".equals(str2)) {
                zzlp zzlpVarL = this.f24394a.L();
                int i10 = 2;
                if (zzlpVarL.P("event", str2)) {
                    if (zzlpVarL.L("event", zzhf.f24738a, zzhf.f24739b, str2)) {
                        zzlpVarL.f24394a.v();
                        if (zzlpVarL.K("event", 40, str2)) {
                            i10 = 0;
                        }
                    } else {
                        i10 = 13;
                    }
                }
                if (i10 != 0) {
                    this.f24394a.U().n().b("Invalid public event name. Event will not be logged (FE)", this.f24394a.A().d(str2));
                    zzlp zzlpVarL2 = this.f24394a.L();
                    this.f24394a.v();
                    this.f24394a.L().y(this.f24779p, null, i10, "_ev", zzlpVarL2.m(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        zzpm.b();
        if (this.f24394a.v().y(null, zzel.f24600v0)) {
            this.f24394a.t();
            zziu zziuVarO = this.f24394a.I().o(false);
            if (zziuVarO != null && !bundle.containsKey("_sc")) {
                zziuVarO.f24788d = true;
            }
            zzlp.u(zziuVarO, bundle, z10 && !z12);
        } else {
            this.f24394a.t();
            zziu zziuVarO2 = this.f24394a.I().o(false);
            if (zziuVarO2 != null && !bundle.containsKey("_sc")) {
                zziuVarO2.f24788d = true;
            }
            zzlp.u(zziuVarO2, bundle, z10 && !z12);
        }
        boolean zEquals = "am".equals(str);
        boolean zV = zzlp.V(str2);
        if (!z10 || this.f24767d == null || zV) {
            z13 = zEquals;
        } else {
            if (!zEquals) {
                this.f24394a.U().l().c("Passing event to registered event handler (FE)", this.f24394a.A().d(str2), this.f24394a.A().b(bundle));
                Preconditions.k(this.f24767d);
                this.f24767d.a(str, str2, bundle, j10);
                return;
            }
            z13 = true;
        }
        if (this.f24394a.m()) {
            int iK0 = this.f24394a.L().k0(str2);
            if (iK0 != 0) {
                this.f24394a.U().n().b("Invalid event name. Event will not be logged (FE)", this.f24394a.A().d(str2));
                zzlp zzlpVarL3 = this.f24394a.L();
                this.f24394a.v();
                this.f24394a.L().y(this.f24779p, str3, iK0, "_ev", zzlpVarL3.m(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            Bundle bundleV0 = this.f24394a.L().v0(str3, str2, bundle, CollectionUtils.c("_o", "_sn", "_sc", "_si"), z12);
            Preconditions.k(bundleV0);
            this.f24394a.t();
            if (this.f24394a.I().o(false) != null && "_ae".equals(str2)) {
                m3 m3Var = this.f24394a.K().f24833e;
                long jB = m3Var.f24223d.f24394a.x().b();
                long j12 = jB - m3Var.f24221b;
                m3Var.f24221b = jB;
                if (j12 > 0) {
                    this.f24394a.L().r(bundleV0, j12);
                }
            }
            zzoc.b();
            if (this.f24394a.v().y(null, zzel.f24568f0)) {
                if (!"auto".equals(str) && "_ssr".equals(str2)) {
                    zzlp zzlpVarL4 = this.f24394a.L();
                    String string = bundleV0.getString("_ffr");
                    if (Strings.b(string)) {
                        string = null;
                    } else if (string != null) {
                        string = string.trim();
                    }
                    if (zzlp.Z(string, zzlpVarL4.f24394a.D().f24375t.a())) {
                        zzlpVarL4.f24394a.U().l().a("Not logging duplicate session_start_with_rollout event");
                        return;
                    }
                    zzlpVarL4.f24394a.D().f24375t.b(string);
                } else if ("_ae".equals(str2)) {
                    String strA = this.f24394a.L().f24394a.D().f24375t.a();
                    if (!TextUtils.isEmpty(strA)) {
                        bundleV0.putString("_ffr", strA);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleV0);
            if (this.f24394a.D().f24370o.a() > 0 && this.f24394a.D().q(j10) && this.f24394a.D().f24372q.b()) {
                this.f24394a.U().q().a("Current session is expired, remove the session number, ID, and engagement time");
                str4 = "_ae";
                j11 = 0;
                M("auto", "_sid", null, this.f24394a.x().a());
                M("auto", "_sno", null, this.f24394a.x().a());
                M("auto", "_se", null, this.f24394a.x().a());
            } else {
                str4 = "_ae";
                j11 = 0;
            }
            if (bundleV0.getLong("extend_session", j11) == 1) {
                this.f24394a.U().q().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                this.f24394a.K().f24832d.b(j10, true);
            }
            ArrayList arrayList2 = new ArrayList(bundleV0.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                String str7 = (String) arrayList2.get(i11);
                if (str7 != null) {
                    this.f24394a.L();
                    Object obj = bundleV0.get(str7);
                    if (obj instanceof Bundle) {
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList3 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                    } else {
                        bundleArr = null;
                    }
                    if (bundleArr != null) {
                        bundleV0.putParcelableArray(str7, bundleArr);
                    }
                }
            }
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                Bundle bundleU0 = (Bundle) arrayList.get(i12);
                if (i12 != 0) {
                    str6 = "_ep";
                    str5 = str;
                } else {
                    str5 = str;
                    str6 = str2;
                }
                bundleU0.putString("_o", str5);
                if (z11) {
                    bundleU0 = this.f24394a.L().u0(bundleU0);
                }
                Bundle bundle2 = bundleU0;
                this.f24394a.J().j(new zzav(str6, new zzat(bundle2), str, j10), str3);
                if (!z13) {
                    Iterator it = this.f24768e.iterator();
                    while (it.hasNext()) {
                        ((zzhj) it.next()).a(str, str2, new Bundle(bundle2), j10);
                    }
                }
            }
            this.f24394a.t();
            if (this.f24394a.I().o(false) == null || !str4.equals(str2)) {
                return;
            }
            this.f24394a.K().f24833e.d(true, true, this.f24394a.x().b());
        }
    }

    public final void u(zzhj zzhjVar) {
        d();
        Preconditions.k(zzhjVar);
        if (this.f24768e.add(zzhjVar)) {
            return;
        }
        this.f24394a.U().r().a("OnEventListener already registered");
    }

    public final void v(long j10) {
        this.f24770g.set(null);
        this.f24394a.B().v(new g1(this, j10));
    }

    final void w(long j10, boolean z10) {
        c();
        d();
        this.f24394a.U().l().a("Resetting analytics data (FE)");
        zzkr zzkrVarK = this.f24394a.K();
        zzkrVarK.c();
        zzkrVarK.f24833e.a();
        boolean zJ = this.f24394a.j();
        x xVarD = this.f24394a.D();
        xVarD.f24360e.b(j10);
        if (!TextUtils.isEmpty(xVarD.f24394a.D().f24375t.a())) {
            xVarD.f24375t.b(null);
        }
        zzol.b();
        zzaf zzafVarV = xVarD.f24394a.v();
        zzek zzekVar = zzel.f24570g0;
        if (zzafVarV.y(null, zzekVar)) {
            xVarD.f24370o.b(0L);
        }
        if (!xVarD.f24394a.v().C()) {
            xVarD.o(!zJ);
        }
        xVarD.f24376u.b(null);
        xVarD.f24377v.b(0L);
        xVarD.f24378w.b(null);
        if (z10) {
            this.f24394a.J().l();
        }
        zzol.b();
        if (this.f24394a.v().y(null, zzekVar)) {
            this.f24394a.K().f24832d.a();
        }
        this.f24778o = !zJ;
    }

    protected final void y(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i10 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i10 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i10];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i10] = new Bundle((Bundle) parcelable);
                        }
                        i10++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i10 < list.size()) {
                        Object obj2 = list.get(i10);
                        if (obj2 instanceof Bundle) {
                            list.set(i10, new Bundle((Bundle) obj2));
                        }
                        i10++;
                    }
                }
            }
        }
        this.f24394a.B().v(new e1(this, str, str2, j10, bundle2, z10, z11, z12, str3));
    }

    final void z(String str, String str2, long j10, Object obj) {
        this.f24394a.B().v(new f1(this, str, str2, obj, j10));
    }
}
