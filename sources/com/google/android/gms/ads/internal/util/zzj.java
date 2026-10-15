package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzaue;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbyd;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzfut;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.model.ReportDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzj implements zzg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6160b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfut f6162d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("lock")
    private SharedPreferences f6164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("lock")
    private SharedPreferences.Editor f6165g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6168j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f6159a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f6161c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("lock")
    private zzaue f6163e = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6166h = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6169k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6170l = "-1";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6171m = "-1";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6172n = "-1";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("lock")
    private int f6173o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("lock")
    private zzbyd f6174p = new zzbyd(BuildConfig.FLAVOR, 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("lock")
    private long f6175q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("lock")
    private long f6176r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("lock")
    private int f6177s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("lock")
    private int f6178t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @GuardedBy("lock")
    private Set f6179u = Collections.emptySet();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("lock")
    private JSONObject f6180v = new JSONObject();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6181w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6182x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6183y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6184z = BuildConfig.FLAVOR;

    @GuardedBy("lock")
    private boolean A = false;

    @GuardedBy("lock")
    private String B = BuildConfig.FLAVOR;

    @GuardedBy("lock")
    private int C = -1;

    @GuardedBy("lock")
    private int D = -1;

    @GuardedBy("lock")
    private long E = 0;

    private final void o() {
        zzfut zzfutVar = this.f6162d;
        if (zzfutVar == null || zzfutVar.isDone()) {
            return;
        }
        try {
            this.f6162d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            zzbza.h("Interrupted while waiting for preferences loaded.", e10);
        } catch (CancellationException e11) {
            e = e11;
            zzbza.e("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e12) {
            e = e12;
            zzbza.e("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e13) {
            e = e13;
            zzbza.e("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    private final void p() {
        zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzi
            @Override // java.lang.Runnable
            public final void run() {
                this.f6158o.e();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void A0(long j10) {
        o();
        synchronized (this.f6159a) {
            if (this.E == j10) {
                return;
            }
            this.E = j10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putLong("sd_app_measure_npa_ts", j10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void B0(boolean z10) {
        o();
        synchronized (this.f6159a) {
            if (z10 == this.f6169k) {
                return;
            }
            this.f6169k = z10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putBoolean("gad_idless", z10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void C0(String str) {
        o();
        synchronized (this.f6159a) {
            if (TextUtils.equals(this.f6183y, str)) {
                return;
            }
            this.f6183y = str;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void D0(String str) {
        o();
        synchronized (this.f6159a) {
            if (str.equals(this.f6167i)) {
                return;
            }
            this.f6167i = str;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putString("content_url_hashes", str);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void E0(long j10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6175q == j10) {
                return;
            }
            this.f6175q = j10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void F0(String str) {
        o();
        synchronized (this.f6159a) {
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            if (str != null && !str.equals(this.f6174p.c())) {
                this.f6174p = new zzbyd(str, jA);
                SharedPreferences.Editor editor = this.f6165g;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.f6165g.putLong("app_settings_last_update_ms", jA);
                    this.f6165g.apply();
                }
                p();
                Iterator it = this.f6161c.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                return;
            }
            this.f6174p.g(jA);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void G0(int i10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6177s == i10) {
                return;
            }
            this.f6177s = i10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putInt("request_in_session_count", i10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void H0(final Context context) {
        synchronized (this.f6159a) {
            if (this.f6164f != null) {
                return;
            }
            final String str = "admob";
            this.f6162d = zzbzn.f11614a.g(new Runnable(context, str) { // from class: com.google.android.gms.ads.internal.util.zzh

                /* JADX INFO: renamed from: p, reason: collision with root package name */
                public final /* synthetic */ Context f6156p;

                /* JADX INFO: renamed from: q, reason: collision with root package name */
                public final /* synthetic */ String f6157q = "admob";

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6155o.k(this.f6156p, this.f6157q);
                }
            });
            this.f6160b = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void I0(String str) {
        o();
        synchronized (this.f6159a) {
            if (str.equals(this.f6168j)) {
                return;
            }
            this.f6168j = str;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putString("content_vertical_hashes", str);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean J() {
        boolean z10;
        o();
        synchronized (this.f6159a) {
            z10 = this.f6182x;
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    @Override // com.google.android.gms.ads.internal.util.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void J0(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            r5.o()
            java.lang.Object r0 = r5.f6159a
            monitor-enter(r0)
            int r1 = r6.hashCode()     // Catch: java.lang.Throwable -> L6c
            r2 = -2004976699(0xffffffff887e7bc5, float:-7.6580835E-34)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L30
            r2 = 83641339(0x4fc43fb, float:5.9307345E-36)
            if (r1 == r2) goto L26
            r2 = 1218895378(0x48a6de12, float:341744.56)
            if (r1 == r2) goto L1c
            goto L3a
        L1c:
            java.lang.String r1 = "IABTCF_TCString"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L3a
            r1 = 1
            goto L3b
        L26:
            java.lang.String r1 = "IABTCF_gdprApplies"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L3a
            r1 = 0
            goto L3b
        L30:
            java.lang.String r1 = "IABTCF_PurposeConsents"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L3a
            r1 = 2
            goto L3b
        L3a:
            r1 = -1
        L3b:
            if (r1 == 0) goto L49
            if (r1 == r4) goto L46
            if (r1 == r3) goto L43
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            return
        L43:
            r5.f6172n = r7     // Catch: java.lang.Throwable -> L6c
            goto L4b
        L46:
            r5.f6171m = r7     // Catch: java.lang.Throwable -> L6c
            goto L4b
        L49:
            r5.f6170l = r7     // Catch: java.lang.Throwable -> L6c
        L4b:
            android.content.SharedPreferences$Editor r1 = r5.f6165g     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L67
            java.lang.String r1 = "-1"
            boolean r1 = r7.equals(r1)     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L5d
            android.content.SharedPreferences$Editor r7 = r5.f6165g     // Catch: java.lang.Throwable -> L6c
            r7.remove(r6)     // Catch: java.lang.Throwable -> L6c
            goto L62
        L5d:
            android.content.SharedPreferences$Editor r1 = r5.f6165g     // Catch: java.lang.Throwable -> L6c
            r1.putString(r6, r7)     // Catch: java.lang.Throwable -> L6c
        L62:
            android.content.SharedPreferences$Editor r6 = r5.f6165g     // Catch: java.lang.Throwable -> L6c
            r6.apply()     // Catch: java.lang.Throwable -> L6c
        L67:
            r5.p()     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            return
        L6c:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.J0(java.lang.String, java.lang.String):void");
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void K0(long j10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6176r == j10) {
                return;
            }
            this.f6176r = j10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void L0(String str, String str2, boolean z10) {
        o();
        synchronized (this.f6159a) {
            JSONArray jSONArrayOptJSONArray = this.f6180v.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            }
            int length = jSONArrayOptJSONArray.length();
            int i10 = 0;
            while (true) {
                if (i10 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (str2.equals(jSONObjectOptJSONObject.optString(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID))) {
                        if (z10 && jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                            return;
                        }
                        length = i10;
                    } else {
                        i10++;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID, str2);
                jSONObject.put("uses_media_view", z10);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzt.b().a());
                jSONArrayOptJSONArray.put(length, jSONObject);
                this.f6180v.put(str, jSONArrayOptJSONArray);
            } catch (JSONException e10) {
                zzbza.h("Could not update native advanced settings", e10);
            }
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putString("native_advanced_settings", this.f6180v.toString());
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean M() {
        boolean z10;
        o();
        synchronized (this.f6159a) {
            z10 = this.A;
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void M0(boolean z10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6181w == z10) {
                return;
            }
            this.f6181w = z10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void N0(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue()) {
            o();
            synchronized (this.f6159a) {
                if (this.f6184z.equals(str)) {
                    return;
                }
                this.f6184z = str;
                SharedPreferences.Editor editor = this.f6165g;
                if (editor != null) {
                    editor.putString("inspector_info", str);
                    this.f6165g.apply();
                }
                p();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean Y() {
        boolean z10;
        o();
        synchronized (this.f6159a) {
            z10 = this.f6181w;
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int a() {
        int i10;
        o();
        synchronized (this.f6159a) {
            i10 = this.f6177s;
        }
        return i10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long b() {
        long j10;
        o();
        synchronized (this.f6159a) {
            j10 = this.f6176r;
        }
        return j10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long c() {
        long j10;
        o();
        synchronized (this.f6159a) {
            j10 = this.E;
        }
        return j10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long d() {
        long j10;
        o();
        synchronized (this.f6159a) {
            j10 = this.f6175q;
        }
        return j10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzaue e() {
        if (!this.f6160b) {
            return null;
        }
        if ((Y() && J()) || !((Boolean) zzbcc.f10507b.e()).booleanValue()) {
            return null;
        }
        synchronized (this.f6159a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f6163e == null) {
                this.f6163e = new zzaue();
            }
            this.f6163e.e();
            zzbza.f("start fetching content...");
            return this.f6163e;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzbyd f() {
        zzbyd zzbydVar;
        o();
        synchronized (this.f6159a) {
            zzbydVar = this.f6174p;
        }
        return zzbydVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzbyd g() {
        zzbyd zzbydVar;
        synchronized (this.f6159a) {
            zzbydVar = this.f6174p;
        }
        return zzbydVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean g0() {
        boolean z10;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10346r0)).booleanValue()) {
            return false;
        }
        o();
        synchronized (this.f6159a) {
            z10 = this.f6169k;
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String h() {
        String str;
        o();
        synchronized (this.f6159a) {
            str = this.f6167i;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String i() {
        String str;
        o();
        synchronized (this.f6159a) {
            str = this.f6168j;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String j() {
        String str;
        o();
        synchronized (this.f6159a) {
            str = this.B;
        }
        return str;
    }

    final /* synthetic */ void k(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        synchronized (this.f6159a) {
            this.f6164f = sharedPreferences;
            this.f6165g = editorEdit;
            if (PlatformVersion.h()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.f6166h = this.f6164f.getBoolean("use_https", this.f6166h);
            this.f6181w = this.f6164f.getBoolean("content_url_opted_out", this.f6181w);
            this.f6167i = this.f6164f.getString("content_url_hashes", this.f6167i);
            this.f6169k = this.f6164f.getBoolean("gad_idless", this.f6169k);
            this.f6182x = this.f6164f.getBoolean("content_vertical_opted_out", this.f6182x);
            this.f6168j = this.f6164f.getString("content_vertical_hashes", this.f6168j);
            this.f6178t = this.f6164f.getInt("version_code", this.f6178t);
            this.f6174p = new zzbyd(this.f6164f.getString("app_settings_json", this.f6174p.c()), this.f6164f.getLong("app_settings_last_update_ms", this.f6174p.a()));
            this.f6175q = this.f6164f.getLong("app_last_background_time_ms", this.f6175q);
            this.f6177s = this.f6164f.getInt("request_in_session_count", this.f6177s);
            this.f6176r = this.f6164f.getLong("first_ad_req_time_ms", this.f6176r);
            this.f6179u = this.f6164f.getStringSet("never_pool_slots", this.f6179u);
            this.f6183y = this.f6164f.getString("display_cutout", this.f6183y);
            this.C = this.f6164f.getInt("app_measurement_npa", this.C);
            this.D = this.f6164f.getInt("sd_app_measure_npa", this.D);
            this.E = this.f6164f.getLong("sd_app_measure_npa_ts", this.E);
            this.f6184z = this.f6164f.getString("inspector_info", this.f6184z);
            this.A = this.f6164f.getBoolean("linked_device", this.A);
            this.B = this.f6164f.getString("linked_ad_unit", this.B);
            this.f6170l = this.f6164f.getString("IABTCF_gdprApplies", this.f6170l);
            this.f6172n = this.f6164f.getString("IABTCF_PurposeConsents", this.f6172n);
            this.f6171m = this.f6164f.getString("IABTCF_TCString", this.f6171m);
            this.f6173o = this.f6164f.getInt("gad_has_consent_for_cookies", this.f6173o);
            try {
                this.f6180v = new JSONObject(this.f6164f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e10) {
                zzbza.h("Could not convert native advanced settings to json object", e10);
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String l() {
        String str;
        o();
        synchronized (this.f6159a) {
            str = this.f6183y;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String m() {
        String str;
        o();
        synchronized (this.f6159a) {
            str = this.f6184z;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final JSONObject n() {
        JSONObject jSONObject;
        o();
        synchronized (this.f6159a) {
            jSONObject = this.f6180v;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void q() {
        o();
        synchronized (this.f6159a) {
            this.f6180v = new JSONObject();
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.f6165g.apply();
            }
            p();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    @Override // com.google.android.gms.ads.internal.util.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String s0(java.lang.String r6) {
        /*
            r5 = this;
            r5.o()
            java.lang.Object r0 = r5.f6159a
            monitor-enter(r0)
            int r1 = r6.hashCode()     // Catch: java.lang.Throwable -> L50
            r2 = -2004976699(0xffffffff887e7bc5, float:-7.6580835E-34)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L30
            r2 = 83641339(0x4fc43fb, float:5.9307345E-36)
            if (r1 == r2) goto L26
            r2 = 1218895378(0x48a6de12, float:341744.56)
            if (r1 == r2) goto L1c
            goto L3a
        L1c:
            java.lang.String r1 = "IABTCF_TCString"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L3a
            r6 = 1
            goto L3b
        L26:
            java.lang.String r1 = "IABTCF_gdprApplies"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L3a
            r6 = 0
            goto L3b
        L30:
            java.lang.String r1 = "IABTCF_PurposeConsents"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L3a
            r6 = 2
            goto L3b
        L3a:
            r6 = -1
        L3b:
            if (r6 == 0) goto L4c
            if (r6 == r4) goto L48
            if (r6 == r3) goto L44
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            r6 = 0
            return r6
        L44:
            java.lang.String r6 = r5.f6172n     // Catch: java.lang.Throwable -> L50
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            return r6
        L48:
            java.lang.String r6 = r5.f6171m     // Catch: java.lang.Throwable -> L50
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            return r6
        L4c:
            java.lang.String r6 = r5.f6170l     // Catch: java.lang.Throwable -> L50
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            return r6
        L50:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzj.s0(java.lang.String):java.lang.String");
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void t0(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
            o();
            synchronized (this.f6159a) {
                if (this.B.equals(str)) {
                    return;
                }
                this.B = str;
                SharedPreferences.Editor editor = this.f6165g;
                if (editor != null) {
                    editor.putString("linked_ad_unit", str);
                    this.f6165g.apply();
                }
                p();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void u0(boolean z10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6182x == z10) {
                return;
            }
            this.f6182x = z10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void v0(int i10) {
        o();
        synchronized (this.f6159a) {
            this.f6173o = i10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                if (i10 == -1) {
                    editor.remove("gad_has_consent_for_cookies");
                } else {
                    editor.putInt("gad_has_consent_for_cookies", i10);
                }
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void w0(Runnable runnable) {
        this.f6161c.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void x0(int i10) {
        o();
        synchronized (this.f6159a) {
            if (this.D == i10) {
                return;
            }
            this.D = i10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void y0(boolean z10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
            o();
            synchronized (this.f6159a) {
                if (this.A == z10) {
                    return;
                }
                this.A = z10;
                SharedPreferences.Editor editor = this.f6165g;
                if (editor != null) {
                    editor.putBoolean("linked_device", z10);
                    this.f6165g.apply();
                }
                p();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void z0(int i10) {
        o();
        synchronized (this.f6159a) {
            if (this.f6178t == i10) {
                return;
            }
            this.f6178t = i10;
            SharedPreferences.Editor editor = this.f6165g;
            if (editor != null) {
                editor.putInt("version_code", i10);
                this.f6165g.apply();
            }
            p();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zza() {
        int i10;
        o();
        synchronized (this.f6159a) {
            i10 = this.f6178t;
        }
        return i10;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzb() {
        int i10;
        o();
        synchronized (this.f6159a) {
            i10 = this.f6173o;
        }
        return i10;
    }
}
