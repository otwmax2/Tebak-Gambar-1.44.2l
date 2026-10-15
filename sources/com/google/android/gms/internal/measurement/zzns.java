package com.google.android.gms.internal.measurement;

import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzns implements zznr {
    public static final zzhy A;
    public static final zzhy B;
    public static final zzhy C;
    public static final zzhy D;
    public static final zzhy E;
    public static final zzhy F;
    public static final zzhy G;
    public static final zzhy H;
    public static final zzhy I;
    public static final zzhy J;
    public static final zzhy K;
    public static final zzhy L;
    public static final zzhy M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzhy f23821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzhy f23822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzhy f23823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzhy f23824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzhy f23825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzhy f23826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzhy f23827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzhy f23828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzhy f23829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzhy f23830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzhy f23831k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzhy f23832l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzhy f23833m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzhy f23834n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final zzhy f23835o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzhy f23836p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzhy f23837q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzhy f23838r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzhy f23839s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzhy f23840t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzhy f23841u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzhy f23842v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzhy f23843w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzhy f23844x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzhy f23845y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzhy f23846z;

    static {
        zzhv zzhvVarA = new zzhv(zzho.a("com.google.android.gms.measurement")).a();
        f23821a = zzhvVarA.d("measurement.ad_id_cache_time", 10000L);
        f23822b = zzhvVarA.d("measurement.max_bundles_per_iteration", 100L);
        f23823c = zzhvVarA.d("measurement.config.cache_time", 86400000L);
        f23824d = zzhvVarA.e("measurement.log_tag", "FA");
        f23825e = zzhvVarA.e("measurement.config.url_authority", "app-measurement.com");
        f23826f = zzhvVarA.e("measurement.config.url_scheme", TournamentShareDialogURIBuilder.scheme);
        f23827g = zzhvVarA.d("measurement.upload.debug_upload_interval", 1000L);
        f23828h = zzhvVarA.d("measurement.lifetimevalue.max_currency_tracked", 4L);
        f23829i = zzhvVarA.d("measurement.store.max_stored_events_per_app", 100000L);
        f23830j = zzhvVarA.d("measurement.experiment.max_ids", 50L);
        f23831k = zzhvVarA.d("measurement.audience.filter_result_max_count", 200L);
        f23832l = zzhvVarA.d("measurement.alarm_manager.minimum_interval", 60000L);
        f23833m = zzhvVarA.d("measurement.upload.minimum_delay", 500L);
        f23834n = zzhvVarA.d("measurement.monitoring.sample_period_millis", 86400000L);
        f23835o = zzhvVarA.d("measurement.upload.realtime_upload_interval", 10000L);
        f23836p = zzhvVarA.d("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        f23837q = zzhvVarA.d("measurement.config.cache_time.service", 3600000L);
        f23838r = zzhvVarA.d("measurement.service_client.idle_disconnect_millis", 5000L);
        f23839s = zzhvVarA.e("measurement.log_tag.service", "FA-SVC");
        f23840t = zzhvVarA.d("measurement.upload.stale_data_deletion_interval", 86400000L);
        f23841u = zzhvVarA.d("measurement.sdk.attribution.cache.ttl", 604800000L);
        f23842v = zzhvVarA.d("measurement.redaction.app_instance_id.ttl", 7200000L);
        f23843w = zzhvVarA.d("measurement.upload.backoff_period", 43200000L);
        f23844x = zzhvVarA.d("measurement.upload.initial_upload_delay_time", 15000L);
        f23845y = zzhvVarA.d("measurement.upload.interval", 3600000L);
        f23846z = zzhvVarA.d("measurement.upload.max_bundle_size", 65536L);
        A = zzhvVarA.d("measurement.upload.max_bundles", 100L);
        B = zzhvVarA.d("measurement.upload.max_conversions_per_day", 500L);
        C = zzhvVarA.d("measurement.upload.max_error_events_per_day", 1000L);
        D = zzhvVarA.d("measurement.upload.max_events_per_bundle", 1000L);
        E = zzhvVarA.d("measurement.upload.max_events_per_day", 100000L);
        F = zzhvVarA.d("measurement.upload.max_public_events_per_day", 50000L);
        G = zzhvVarA.d("measurement.upload.max_queue_time", 2419200000L);
        H = zzhvVarA.d("measurement.upload.max_realtime_events_per_day", 10L);
        I = zzhvVarA.d("measurement.upload.max_batch_size", 65536L);
        J = zzhvVarA.d("measurement.upload.retry_count", 6L);
        K = zzhvVarA.d("measurement.upload.retry_time", 1800000L);
        L = zzhvVarA.e("measurement.upload.url", "https://app-measurement.com/a");
        M = zzhvVarA.d("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long B() {
        return ((Long) F.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long C() {
        return ((Long) B.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long E() {
        return ((Long) D.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long H() {
        return ((Long) J.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long L() {
        return ((Long) K.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long N() {
        return ((Long) E.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long R() {
        return ((Long) G.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final String T() {
        return (String) f23826f.b();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long V() {
        return ((Long) M.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long a() {
        return ((Long) f23823c.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long b() {
        return ((Long) f23828h.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long c() {
        return ((Long) f23829i.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long d() {
        return ((Long) f23827g.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long e() {
        return ((Long) f23830j.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long f() {
        return ((Long) f23831k.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long f0() {
        return ((Long) H.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long g() {
        return ((Long) f23832l.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long h() {
        return ((Long) f23833m.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final String h0() {
        return (String) f23825e.b();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long i() {
        return ((Long) f23834n.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long j() {
        return ((Long) f23835o.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long k() {
        return ((Long) f23838r.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long l() {
        return ((Long) f23836p.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long m() {
        return ((Long) f23840t.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long n() {
        return ((Long) f23841u.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long p() {
        return ((Long) f23843w.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long q() {
        return ((Long) f23844x.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long r() {
        return ((Long) f23842v.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long t() {
        return ((Long) A.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long u() {
        return ((Long) I.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long v() {
        return ((Long) f23846z.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long x() {
        return ((Long) f23845y.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long y() {
        return ((Long) C.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final String z() {
        return (String) L.b();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long zza() {
        return ((Long) f23821a.b()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznr
    public final long zzb() {
        return ((Long) f23822b.b()).longValue();
    }
}
