package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzne;
import com.google.android.gms.internal.measurement.zznh;
import com.google.android.gms.internal.measurement.zznk;
import com.google.android.gms.internal.measurement.zznn;
import com.google.android.gms.internal.measurement.zznq;
import com.google.android.gms.internal.measurement.zznt;
import com.google.android.gms.internal.measurement.zznw;
import com.google.android.gms.internal.measurement.zznz;
import com.google.android.gms.internal.measurement.zzoc;
import com.google.android.gms.internal.measurement.zzof;
import com.google.android.gms.internal.measurement.zzoi;
import com.google.android.gms.internal.measurement.zzol;
import com.google.android.gms.internal.measurement.zzoo;
import com.google.android.gms.internal.measurement.zzor;
import com.google.android.gms.internal.measurement.zzou;
import com.google.android.gms.internal.measurement.zzox;
import com.google.android.gms.internal.measurement.zzpa;
import com.google.android.gms.internal.measurement.zzpd;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzpj;
import com.google.android.gms.internal.measurement.zzpm;
import com.google.android.gms.internal.measurement.zzpp;
import com.google.android.gms.internal.measurement.zzps;
import com.google.android.gms.internal.measurement.zzpv;
import com.google.android.gms.internal.measurement.zzpy;
import com.google.android.gms.internal.measurement.zzqb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzel {
    public static final zzek A;
    public static final zzek A0;
    public static final zzek B;
    public static final zzek B0;
    public static final zzek C;
    public static final zzek C0;
    public static final zzek D;
    public static final zzek D0;
    public static final zzek E;
    public static final zzek E0;
    public static final zzek F;
    public static final zzek F0;
    public static final zzek G;
    public static final zzek G0;
    public static final zzek H;
    public static final zzek H0;
    public static final zzek I;
    public static final zzek I0;
    public static final zzek J;
    public static final zzek J0;
    public static final zzek K;
    public static final zzek K0;
    public static final zzek L;
    public static final zzek L0;
    public static final zzek M;
    public static final zzek M0;
    public static final zzek N;
    public static final zzek N0;
    public static final zzek O;
    public static final zzek O0;
    public static final zzek P;
    public static final zzek P0;
    public static final zzek Q;
    public static final zzek R;
    public static final zzek S;
    public static final zzek T;
    public static final zzek U;
    public static final zzek V;
    public static final zzek W;
    public static final zzek X;
    public static final zzek Y;
    public static final zzek Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final zzek f24558a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final zzek f24560b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final zzek f24562c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final zzek f24564d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final zzek f24566e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final zzek f24568f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final zzek f24570g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final zzek f24572h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzek f24573i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final zzek f24574i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzek f24575j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final zzek f24576j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzek f24577k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final zzek f24578k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzek f24579l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final zzek f24580l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzek f24581m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final zzek f24582m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzek f24583n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final zzek f24584n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final zzek f24585o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final zzek f24586o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzek f24587p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final zzek f24588p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzek f24589q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final zzek f24590q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzek f24591r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final zzek f24592r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzek f24593s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final zzek f24594s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzek f24595t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final zzek f24596t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzek f24597u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final zzek f24598u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzek f24599v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final zzek f24600v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzek f24601w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final zzek f24602w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzek f24603x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final zzek f24604x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzek f24605y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final zzek f24606y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzek f24607z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final zzek f24608z0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f24557a = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f24559b = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzek f24561c = a("measurement.ad_id_cache_time", 10000L, 10000L, new m() { // from class: com.google.android.gms.measurement.internal.zzax
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return Long.valueOf(zznq.m());
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzek f24563d = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbi
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return Long.valueOf(zznq.w());
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzek f24565e = a("measurement.config.cache_time", 86400000L, 3600000L, new m() { // from class: com.google.android.gms.measurement.internal.zzba
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return Long.valueOf(zznq.o());
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzek f24567f = a("measurement.config.url_scheme", TournamentShareDialogURIBuilder.scheme, TournamentShareDialogURIBuilder.scheme, new m() { // from class: com.google.android.gms.measurement.internal.zzbm
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return zznq.k();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzek f24569g = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", new m() { // from class: com.google.android.gms.measurement.internal.zzby
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return zznq.j();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzek f24571h = a("measurement.upload.max_bundles", 100, 100, new m() { // from class: com.google.android.gms.measurement.internal.zzck
        @Override // com.google.android.gms.measurement.internal.m
        public final Object zza() {
            zzek zzekVar = zzel.f24561c;
            return Integer.valueOf((int) zznq.H());
        }
    });

    static {
        Integer numValueOf = Integer.valueOf(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        f24573i = a("measurement.upload.max_batch_size", numValueOf, numValueOf, new m() { // from class: com.google.android.gms.measurement.internal.zzcw
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.e());
            }
        });
        f24575j = a("measurement.upload.max_bundle_size", numValueOf, numValueOf, new m() { // from class: com.google.android.gms.measurement.internal.zzdi
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.G());
            }
        });
        f24577k = a("measurement.upload.max_events_per_bundle", 1000, 1000, new m() { // from class: com.google.android.gms.measurement.internal.zzdu
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.K());
            }
        });
        f24579l = a("measurement.upload.max_events_per_day", 100000, 100000, new m() { // from class: com.google.android.gms.measurement.internal.zzee
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.a());
            }
        });
        f24581m = a("measurement.upload.max_error_events_per_day", 1000, 1000, new m() { // from class: com.google.android.gms.measurement.internal.zzbt
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.J());
            }
        });
        f24583n = a("measurement.upload.max_public_events_per_day", 50000, 50000, new m() { // from class: com.google.android.gms.measurement.internal.zzce
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.b());
            }
        });
        f24585o = a("measurement.upload.max_conversions_per_day", 10000, 10000, new m() { // from class: com.google.android.gms.measurement.internal.zzcp
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.I());
            }
        });
        f24587p = a("measurement.upload.max_realtime_events_per_day", 10, 10, new m() { // from class: com.google.android.gms.measurement.internal.zzda
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.d());
            }
        });
        f24589q = a("measurement.store.max_stored_events_per_app", 100000, 100000, new m() { // from class: com.google.android.gms.measurement.internal.zzdl
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.r());
            }
        });
        f24591r = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", new m() { // from class: com.google.android.gms.measurement.internal.zzdw
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return zznq.l();
            }
        });
        f24593s = a("measurement.upload.backoff_period", 43200000L, 43200000L, new m() { // from class: com.google.android.gms.measurement.internal.zzef
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.D());
            }
        });
        f24595t = a("measurement.upload.window_interval", 3600000L, 3600000L, new m() { // from class: com.google.android.gms.measurement.internal.zzeg
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.h());
            }
        });
        f24597u = a("measurement.upload.interval", 3600000L, 3600000L, new m() { // from class: com.google.android.gms.measurement.internal.zzay
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.F());
            }
        });
        f24599v = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, new m() { // from class: com.google.android.gms.measurement.internal.zzaz
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.x());
            }
        });
        f24601w = a("measurement.upload.debug_upload_interval", 1000L, 1000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbb
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.p());
            }
        });
        f24603x = a("measurement.upload.minimum_delay", 500L, 500L, new m() { // from class: com.google.android.gms.measurement.internal.zzbc
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.v());
            }
        });
        f24605y = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbd
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.u());
            }
        });
        f24607z = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbe
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.A());
            }
        });
        A = a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbf
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.y());
            }
        });
        B = a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbg
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.E());
            }
        });
        C = a("measurement.upload.retry_time", 1800000L, 1800000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbh
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.g());
            }
        });
        D = a("measurement.upload.retry_count", 6, 6, new m() { // from class: com.google.android.gms.measurement.internal.zzbj
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.f());
            }
        });
        E = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbk
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.c());
            }
        });
        F = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, new m() { // from class: com.google.android.gms.measurement.internal.zzbl
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.q());
            }
        });
        G = a("measurement.audience.filter_result_max_count", 200, 200, new m() { // from class: com.google.android.gms.measurement.internal.zzbn
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.t());
            }
        });
        H = a("measurement.upload.max_public_user_properties", 25, 25, null);
        I = a("measurement.upload.max_event_name_cardinality", 500, 500, null);
        J = a("measurement.upload.max_public_event_params", 25, 25, null);
        K = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbo
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.z());
            }
        });
        Boolean bool = Boolean.FALSE;
        L = a("measurement.test.boolean_flag", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzbp
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzox.f());
            }
        });
        M = a("measurement.test.string_flag", "---", "---", new m() { // from class: com.google.android.gms.measurement.internal.zzbq
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return zzox.e();
            }
        });
        N = a("measurement.test.long_flag", -1L, -1L, new m() { // from class: com.google.android.gms.measurement.internal.zzbr
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zzox.c());
            }
        });
        O = a("measurement.test.int_flag", -2, -2, new m() { // from class: com.google.android.gms.measurement.internal.zzbs
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zzox.b());
            }
        });
        Double dValueOf = Double.valueOf(-3.0d);
        P = a("measurement.test.double_flag", dValueOf, dValueOf, new m() { // from class: com.google.android.gms.measurement.internal.zzbu
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Double.valueOf(zzox.a());
            }
        });
        Q = a("measurement.experiment.max_ids", 50, 50, new m() { // from class: com.google.android.gms.measurement.internal.zzbv
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.s());
            }
        });
        R = a("measurement.max_bundles_per_iteration", 100, 100, new m() { // from class: com.google.android.gms.measurement.internal.zzbw
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznq.n());
            }
        });
        S = a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbx
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.B());
            }
        });
        T = a("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, new m() { // from class: com.google.android.gms.measurement.internal.zzbz
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Long.valueOf(zznq.C());
            }
        });
        Boolean bool2 = Boolean.TRUE;
        U = a("measurement.validation.internal_limits_internal_event_params", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzca
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzou.b());
            }
        });
        V = a("measurement.collection.log_event_and_bundle_v2", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcb
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpd.b());
            }
        });
        W = a("measurement.quality.checksum", bool, bool, null);
        X = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcc
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzoi.d());
            }
        });
        Y = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcd
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzoi.c());
            }
        });
        Z = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcf
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzoi.e());
            }
        });
        f24558a0 = a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcg
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpy.b());
            }
        });
        f24560b0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzch
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzoo.b());
            }
        });
        f24562c0 = a("measurement.lifecycle.app_in_background_parameter", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzci
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzor.b());
            }
        });
        f24564d0 = a("measurement.integration.disable_firebase_instance_id", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcj
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpv.c());
            }
        });
        f24566e0 = a("measurement.collection.service.update_with_analytics_fix", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcl
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzqb.b());
            }
        });
        f24568f0 = a("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcm
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzoc.c());
            }
        });
        f24570g0 = a("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcn
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzol.c());
            }
        });
        f24572h0 = a("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzco
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpj.b());
            }
        });
        f24574i0 = a("measurement.collection.synthetic_data_mitigation", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcq
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzps.b());
            }
        });
        f24576j0 = a("measurement.androidId.delete_feature", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcr
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznh.b());
            }
        });
        f24578k0 = a("measurement.service.storage_consent_support_version", 203600, 203600, new m() { // from class: com.google.android.gms.measurement.internal.zzcs
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Integer.valueOf((int) zznt.a());
            }
        });
        f24580l0 = a("measurement.client.click_identifier_control.dev", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzct
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznk.b());
            }
        });
        f24582m0 = a("measurement.service.click_identifier_control", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzcu
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznn.b());
            }
        });
        f24584n0 = a("measurement.client.consent.gmpappid_worker_thread_fix", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcv
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzof.c());
            }
        });
        f24586o0 = a("measurement.module.pixie.fix_array", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcx
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpa.c());
            }
        });
        f24588p0 = a("measurement.adid_zero.service", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcy
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.d());
            }
        });
        f24590q0 = a("measurement.adid_zero.remove_lair_if_adidzero_false", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzcz
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.f());
            }
        });
        f24592r0 = a("measurement.adid_zero.remove_lair_if_userid_cleared", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdb
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.g());
            }
        });
        f24594s0 = a("measurement.adid_zero.remove_lair_on_id_value_change_only", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdc
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.h());
            }
        });
        f24596t0 = a("measurement.adid_zero.adid_uid", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdd
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.e());
            }
        });
        f24598u0 = a("measurement.adid_zero.app_instance_id_fix", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzde
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzne.c());
            }
        });
        f24600v0 = a("measurement.service.refactor.package_side_screen", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdf
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpm.c());
            }
        });
        f24602w0 = a("measurement.enhanced_campaign.service", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdg
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznw.d());
            }
        });
        f24604x0 = a("measurement.enhanced_campaign.client", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdh
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznw.c());
            }
        });
        f24606y0 = a("measurement.enhanced_campaign.srsltid.client", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzdj
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznw.e());
            }
        });
        f24608z0 = a("measurement.enhanced_campaign.srsltid.service", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzdk
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznw.f());
            }
        });
        A0 = a("measurement.service.store_null_safelist", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdm
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznz.c());
            }
        });
        B0 = a("measurement.service.store_safelist", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdn
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zznz.d());
            }
        });
        C0 = a("measurement.redaction.no_aiid_in_config_request", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdo
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.k());
            }
        });
        D0 = a("measurement.redaction.config_redacted_fields", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdp
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.e());
            }
        });
        E0 = a("measurement.redaction.upload_redacted_fields", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdq
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.l());
            }
        });
        F0 = a("measurement.redaction.upload_subdomain_override", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdr
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.m());
            }
        });
        G0 = a("measurement.redaction.device_info", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzds
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.f());
            }
        });
        H0 = a("measurement.redaction.user_id", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdt
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.n());
            }
        });
        I0 = a("measurement.redaction.google_signals", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdv
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.j());
            }
        });
        J0 = a("measurement.collection.enable_session_stitching_token.service", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzdx
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpp.d());
            }
        });
        K0 = a("measurement.collection.enable_session_stitching_token.client.dev", bool, bool, new m() { // from class: com.google.android.gms.measurement.internal.zzdy
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpp.c());
            }
        });
        L0 = a("measurement.redaction.app_instance_id", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzdz
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.c());
            }
        });
        M0 = a("measurement.redaction.populate_ephemeral_app_instance_id", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzea
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.i());
            }
        });
        N0 = a("measurement.redaction.enhanced_uid", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzeb
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.h());
            }
        });
        O0 = a("measurement.redaction.e_tag", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzec
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.g());
            }
        });
        P0 = a("measurement.redaction.client_ephemeral_aiid_generation", bool2, bool2, new m() { // from class: com.google.android.gms.measurement.internal.zzed
            @Override // com.google.android.gms.measurement.internal.m
            public final Object zza() {
                zzek zzekVar = zzel.f24561c;
                return Boolean.valueOf(zzpg.d());
            }
        });
    }

    @VisibleForTesting
    static zzek a(String str, Object obj, Object obj2, m mVar) {
        zzek zzekVar = new zzek(str, obj, obj2, mVar, null);
        f24557a.add(zzekVar);
        return zzekVar;
    }

    public static Map c(Context context) {
        com.google.android.gms.internal.measurement.zzhe zzheVarA = com.google.android.gms.internal.measurement.zzhe.a(context.getContentResolver(), com.google.android.gms.internal.measurement.zzho.a("com.google.android.gms.measurement"));
        return zzheVarA == null ? Collections.emptyMap() : zzheVarA.b();
    }
}
