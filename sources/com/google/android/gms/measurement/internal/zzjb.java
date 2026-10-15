package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjb extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile zziu f24791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile zziu f24792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    protected zziu f24793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f24794f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Activity f24795g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f24796h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile zziu f24797i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zziu f24798j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f24799k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Object f24800l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zziu f24801m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f24802n;

    public zzjb(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24800l = new Object();
        this.f24794f = new ConcurrentHashMap();
    }

    private final zziu F(Activity activity) {
        Preconditions.k(activity);
        zziu zziuVar = (zziu) this.f24794f.get(activity);
        if (zziuVar == null) {
            zziu zziuVar2 = new zziu(null, p(activity.getClass(), "Activity"), this.f24394a.L().r0());
            this.f24794f.put(activity, zziuVar2);
            zziuVar = zziuVar2;
        }
        return this.f24797i != null ? this.f24797i : zziuVar;
    }

    private final void j(Activity activity, zziu zziuVar, boolean z10) {
        zziu zziuVar2;
        zziu zziuVar3 = this.f24791c == null ? this.f24792d : this.f24791c;
        if (zziuVar.f24786b == null) {
            zziuVar2 = new zziu(zziuVar.f24785a, activity != null ? p(activity.getClass(), "Activity") : null, zziuVar.f24787c, zziuVar.f24789e, zziuVar.f24790f);
        } else {
            zziuVar2 = zziuVar;
        }
        this.f24792d = this.f24791c;
        this.f24791c = zziuVar2;
        this.f24394a.B().v(new b2(this, zziuVar2, zziuVar3, this.f24394a.x().b(), z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(zziu zziuVar, zziu zziuVar2, long j10, boolean z10, Bundle bundle) {
        long j11;
        long j12;
        c();
        boolean z11 = false;
        boolean z12 = (zziuVar2 != null && zziuVar2.f24787c == zziuVar.f24787c && zzlp.Z(zziuVar2.f24786b, zziuVar.f24786b) && zzlp.Z(zziuVar2.f24785a, zziuVar.f24785a)) ? false : true;
        if (z10 && this.f24793e != null) {
            z11 = true;
        }
        if (z12) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzlp.u(zziuVar, bundle2, true);
            if (zziuVar2 != null) {
                String str = zziuVar2.f24785a;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zziuVar2.f24786b;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zziuVar2.f24787c);
            }
            if (z11) {
                m3 m3Var = this.f24394a.K().f24833e;
                long j13 = j10 - m3Var.f24221b;
                m3Var.f24221b = j10;
                if (j13 > 0) {
                    this.f24394a.L().r(bundle2, j13);
                }
            }
            if (!this.f24394a.v().A()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = true != zziuVar.f24789e ? "auto" : "app";
            long jA = this.f24394a.x().a();
            if (zziuVar.f24789e) {
                j11 = jA;
                long j14 = zziuVar.f24790f;
                if (j14 != 0) {
                    j12 = j14;
                }
                this.f24394a.G().r(str3, "_vs", j12, bundle2);
            } else {
                j11 = jA;
            }
            j12 = j11;
            this.f24394a.G().r(str3, "_vs", j12, bundle2);
        }
        if (z11) {
            l(this.f24793e, true, j10);
        }
        this.f24793e = zziuVar;
        if (zziuVar.f24789e) {
            this.f24798j = zziuVar;
        }
        this.f24394a.J().p(zziuVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(zziu zziuVar, boolean z10, long j10) {
        this.f24394a.u().i(this.f24394a.x().b());
        if (!this.f24394a.K().f24833e.d(zziuVar != null && zziuVar.f24788d, z10, j10) || zziuVar == null) {
            return;
        }
        zziuVar.f24788d = false;
    }

    static /* bridge */ /* synthetic */ void s(zzjb zzjbVar, Bundle bundle, zziu zziuVar, zziu zziuVar2, long j10) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzjbVar.k(zziuVar, zziuVar2, j10, true, zzjbVar.f24394a.L().v0(null, "screen_view", bundle, null, false));
    }

    public final void A(Activity activity, Bundle bundle) {
        zziu zziuVar;
        if (!this.f24394a.v().A() || bundle == null || (zziuVar = (zziu) this.f24794f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zziuVar.f24787c);
        bundle2.putString("name", zziuVar.f24785a);
        bundle2.putString("referrer_name", zziuVar.f24786b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (r5.length() <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
    
        if (r6.length() <= 100) goto L39;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void C(android.app.Activity r4, java.lang.String r5, java.lang.String r6) {
        /*
            Method dump skipped, instruction units count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjb.C(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
    
        if (r2 > 100) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r4 > 100) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void D(android.os.Bundle r13, long r14) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjb.D(android.os.Bundle, long):void");
    }

    public final void E(String str, zziu zziuVar) {
        c();
        synchronized (this) {
            String str2 = this.f24802n;
            if (str2 == null || str2.equals(str) || zziuVar != null) {
                this.f24802n = str;
                this.f24801m = zziuVar;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return false;
    }

    public final zziu n() {
        return this.f24791c;
    }

    public final zziu o(boolean z10) {
        d();
        c();
        if (!z10) {
            return this.f24793e;
        }
        zziu zziuVar = this.f24793e;
        return zziuVar != null ? zziuVar : this.f24798j;
    }

    @VisibleForTesting
    final String p(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] strArrSplit = canonicalName.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : BuildConfig.FLAVOR;
        int length2 = str2.length();
        this.f24394a.v();
        if (length2 <= 100) {
            return str2;
        }
        this.f24394a.v();
        return str2.substring(0, 100);
    }

    public final void v(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.f24394a.v().A() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f24794f.put(activity, new zziu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void w(Activity activity) {
        synchronized (this.f24800l) {
            if (activity == this.f24795g) {
                this.f24795g = null;
            }
        }
        if (this.f24394a.v().A()) {
            this.f24794f.remove(activity);
        }
    }

    public final void y(Activity activity) {
        synchronized (this.f24800l) {
            this.f24799k = false;
            this.f24796h = true;
        }
        long jB = this.f24394a.x().b();
        if (!this.f24394a.v().A()) {
            this.f24791c = null;
            this.f24394a.B().v(new d2(this, jB));
        } else {
            zziu zziuVarF = F(activity);
            this.f24792d = this.f24791c;
            this.f24791c = null;
            this.f24394a.B().v(new e2(this, zziuVarF, jB));
        }
    }

    public final void z(Activity activity) {
        synchronized (this.f24800l) {
            this.f24799k = true;
            if (activity != this.f24795g) {
                synchronized (this.f24800l) {
                    this.f24795g = activity;
                    this.f24796h = false;
                }
                if (this.f24394a.v().A()) {
                    this.f24797i = null;
                    this.f24394a.B().v(new g2(this));
                }
            }
        }
        if (!this.f24394a.v().A()) {
            this.f24791c = this.f24797i;
            this.f24394a.B().v(new c2(this));
        } else {
            j(activity, F(activity), false);
            zzd zzdVarU = this.f24394a.u();
            zzdVarU.f24394a.B().v(new k(zzdVarU, zzdVarU.f24394a.x().b()));
        }
    }
}
