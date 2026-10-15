package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class x extends z0 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @VisibleForTesting
    static final Pair f24357x = new Pair(BuildConfig.FLAVOR, 0L);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f24358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public zzfl f24359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzfj f24360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzfj f24361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final zzfm f24362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f24363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f24364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f24365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzfj f24366k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final zzfh f24367l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final zzfm f24368m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final zzfh f24369n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzfj f24370o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f24371p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final zzfh f24372q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final zzfh f24373r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final zzfj f24374s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final zzfm f24375t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final zzfm f24376u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final zzfj f24377v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final zzfi f24378w;

    x(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24366k = new zzfj(this, "session_timeout", 1800000L);
        this.f24367l = new zzfh(this, "start_new_session", true);
        this.f24370o = new zzfj(this, "last_pause_time", 0L);
        this.f24368m = new zzfm(this, "non_personalized_ads", null);
        this.f24369n = new zzfh(this, "allow_remote_dynamite", false);
        this.f24360e = new zzfj(this, "first_open_time", 0L);
        this.f24361f = new zzfj(this, "app_install_time", 0L);
        this.f24362g = new zzfm(this, "app_instance_id", null);
        this.f24372q = new zzfh(this, "app_backgrounded", false);
        this.f24373r = new zzfh(this, "deep_link_retrieval_complete", false);
        this.f24374s = new zzfj(this, "deep_link_retrieval_attempts", 0L);
        this.f24375t = new zzfm(this, "firebase_feature_rollouts", null);
        this.f24376u = new zzfm(this, "deferred_attribution_cache", null);
        this.f24377v = new zzfj(this, "deferred_attribution_cache_timestamp", 0L);
        this.f24378w = new zzfi(this, "default_event_parameters", null);
    }

    @Override // com.google.android.gms.measurement.internal.z0
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    protected final void d() {
        SharedPreferences sharedPreferences = this.f24394a.N0().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f24358c = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f24371p = z10;
        if (!z10) {
            SharedPreferences.Editor editorEdit = this.f24358c.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.f24394a.v();
        this.f24359d = new zzfl(this, "health_monitor", Math.max(0L, ((Long) zzel.f24563d.a(null)).longValue()), null);
    }

    @Override // com.google.android.gms.measurement.internal.z0
    protected final boolean e() {
        return true;
    }

    @VisibleForTesting
    protected final SharedPreferences j() {
        c();
        f();
        Preconditions.k(this.f24358c);
        return this.f24358c;
    }

    final Pair k(String str) {
        c();
        long jB = this.f24394a.x().b();
        String str2 = this.f24363h;
        if (str2 != null && jB < this.f24365j) {
            return new Pair(str2, Boolean.valueOf(this.f24364i));
        }
        this.f24365j = jB + this.f24394a.v().m(str, zzel.f24561c);
        AdvertisingIdClient.d(true);
        try {
            AdvertisingIdClient.Info infoA = AdvertisingIdClient.a(this.f24394a.N0());
            this.f24363h = BuildConfig.FLAVOR;
            String strA = infoA.a();
            if (strA != null) {
                this.f24363h = strA;
            }
            this.f24364i = infoA.b();
        } catch (Exception e10) {
            this.f24394a.U().l().b("Unable to get advertising id", e10);
            this.f24363h = BuildConfig.FLAVOR;
        }
        AdvertisingIdClient.d(false);
        return new Pair(this.f24363h, Boolean.valueOf(this.f24364i));
    }

    final zzah l() {
        c();
        return zzah.b(j().getString("consent_settings", "G1"));
    }

    final Boolean m() {
        c();
        if (j().contains("measurement_enabled")) {
            return Boolean.valueOf(j().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    final void n(Boolean bool) {
        c();
        SharedPreferences.Editor editorEdit = j().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    final void o(boolean z10) {
        c();
        this.f24394a.U().q().b("App measurement setting deferred collection", Boolean.valueOf(z10));
        SharedPreferences.Editor editorEdit = j().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z10);
        editorEdit.apply();
    }

    final boolean p() {
        SharedPreferences sharedPreferences = this.f24358c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    final boolean q(long j10) {
        return j10 - this.f24366k.a() > this.f24370o.a();
    }

    final boolean r(int i10) {
        return zzah.j(i10, j().getInt("consent_source", 100));
    }
}
