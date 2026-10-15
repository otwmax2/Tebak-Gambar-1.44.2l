package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f11730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f11735j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f11736k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f11737l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f11738m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f11739n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f11740o;

    public zzcbi(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.f11726a = a(jSONObject, "aggressive_media_codec_release", zzbar.G);
        this.f11727b = b(jSONObject, "byte_buffer_precache_limit", zzbar.f10257j);
        this.f11728c = b(jSONObject, "exo_cache_buffer_size", zzbar.f10378u);
        this.f11729d = b(jSONObject, "exo_connect_timeout_millis", zzbar.f10213f);
        zzbaj zzbajVar = zzbar.f10202e;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
                string = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar);
            }
        } else {
            string = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar);
        }
        this.f11730e = string;
        this.f11731f = b(jSONObject, "exo_read_timeout_millis", zzbar.f10224g);
        this.f11732g = b(jSONObject, "load_check_interval_bytes", zzbar.f10235h);
        this.f11733h = b(jSONObject, "player_precache_limit", zzbar.f10246i);
        this.f11734i = b(jSONObject, "socket_receive_buffer_size", zzbar.f10268k);
        this.f11735j = a(jSONObject, "use_cache_data_source", zzbar.P3);
        b(jSONObject, "min_retry_count", zzbar.f10279l);
        this.f11736k = a(jSONObject, "treat_load_exception_as_non_fatal", zzbar.f10312o);
        this.f11737l = a(jSONObject, "enable_multiple_video_playback", zzbar.H1);
        this.f11738m = a(jSONObject, "use_range_http_data_source", zzbar.J1);
        this.f11739n = c(jSONObject, "range_http_data_source_high_water_mark", zzbar.K1);
        this.f11740o = c(jSONObject, "range_http_data_source_low_water_mark", zzbar.L1);
    }

    private static final boolean a(JSONObject jSONObject, String str, zzbaj zzbajVar) {
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue();
        if (jSONObject == null) {
            return zBooleanValue;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return zBooleanValue;
        }
    }

    private static final int b(JSONObject jSONObject, String str, zzbaj zzbajVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).intValue();
    }

    private static final long c(JSONObject jSONObject, String str, zzbaj zzbajVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getLong(str);
            } catch (JSONException unused) {
            }
        }
        return ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).longValue();
    }
}
