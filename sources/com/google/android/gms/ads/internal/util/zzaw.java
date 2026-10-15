package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzdse;
import com.google.android.gms.internal.ads.zzdsf;
import com.google.android.gms.internal.ads.zzfut;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f6094a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6095b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private String f6096c = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6097d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f6098e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    protected String f6099f = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzdsf f6100g;

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    protected static final String o(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", com.google.android.gms.ads.internal.zzt.r().B(context, str2));
        zzfut zzfutVarB = new zzbo(context).b(0, str, map, null);
        try {
            return (String) zzfutVarB.get(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10328p4)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            zzbza.e("Interrupted while retrieving a response from: ".concat(String.valueOf(str)), e10);
            zzfutVarB.cancel(true);
            return null;
        } catch (TimeoutException e11) {
            zzbza.e("Timeout while retrieving a response from: ".concat(String.valueOf(str)), e11);
            zzfutVarB.cancel(true);
            return null;
        } catch (Exception e12) {
            zzbza.e("Error retrieving a response from: ".concat(String.valueOf(str)), e12);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0064 A[Catch: all -> 0x007b, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0013, B:7:0x0018, B:10:0x0030, B:12:0x0038, B:14:0x004d, B:17:0x005f, B:9:0x0029, B:18:0x0064, B:19:0x0066), top: B:29:0x000b, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.net.Uri p(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            android.net.Uri r6 = android.net.Uri.parse(r6)
            android.net.Uri$Builder r6 = r6.buildUpon()
            java.lang.Object r0 = r4.f6094a
            monitor-enter(r0)
            java.lang.String r1 = r4.f6095b     // Catch: java.lang.Throwable -> L7b
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L7b
            if (r1 == 0) goto L64
            com.google.android.gms.ads.internal.zzt.r()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r1 = "debug_signals_id.txt"
            java.io.FileInputStream r1 = r5.openFileInput(r1)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7b
            java.lang.String r2 = new java.lang.String     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7b
            r3 = 1
            byte[] r1 = com.google.android.gms.common.util.IOUtils.e(r1, r3)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7b
            java.lang.String r3 = "UTF-8"
            r2.<init>(r1, r3)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7b
            goto L30
        L29:
            java.lang.String r1 = "Error reading from internal storage."
            com.google.android.gms.internal.ads.zzbza.b(r1)     // Catch: java.lang.Throwable -> L7b
            java.lang.String r2 = ""
        L30:
            r4.f6095b = r2     // Catch: java.lang.Throwable -> L7b
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L7b
            if (r1 == 0) goto L64
            com.google.android.gms.ads.internal.zzt.r()     // Catch: java.lang.Throwable -> L7b
            java.util.UUID r1 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7b
            r4.f6095b = r1     // Catch: java.lang.Throwable -> L7b
            com.google.android.gms.ads.internal.zzt.r()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r1 = r4.f6095b     // Catch: java.lang.Throwable -> L7b
            java.lang.String r2 = "debug_signals_id.txt"
            r3 = 0
            java.io.FileOutputStream r5 = r5.openFileOutput(r2, r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7b
            java.lang.String r2 = "UTF-8"
            byte[] r1 = r1.getBytes(r2)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7b
            r5.write(r1)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7b
            r5.close()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7b
            goto L64
        L5e:
            r5 = move-exception
            java.lang.String r1 = "Error writing to file in internal storage."
            com.google.android.gms.internal.ads.zzbza.e(r1, r5)     // Catch: java.lang.Throwable -> L7b
        L64:
            java.lang.String r5 = r4.f6095b     // Catch: java.lang.Throwable -> L7b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7b
            java.lang.String r0 = "linkedDeviceId"
            r6.appendQueryParameter(r0, r5)
            java.lang.String r5 = "adSlotPath"
            r6.appendQueryParameter(r5, r7)
            java.lang.String r5 = "afmaVersion"
            r6.appendQueryParameter(r5, r8)
            android.net.Uri r5 = r6.build()
            return r5
        L7b:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7b
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzaw.p(android.content.Context, java.lang.String, java.lang.String, java.lang.String):android.net.Uri");
    }

    public final zzdsf a() {
        return this.f6100g;
    }

    public final String b() {
        String str;
        synchronized (this.f6094a) {
            str = this.f6096c;
        }
        return str;
    }

    public final void c(Context context) {
        zzdsf zzdsfVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue() || (zzdsfVar = this.f6100g) == null) {
            return;
        }
        zzdsfVar.h(new b(this, context), zzdse.DEBUG_MENU);
    }

    public final void d(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzt.r();
        zzs.r(context, p(context, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10284l4), str, str2));
    }

    public final void e(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = p(context, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10317o4), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzt.r();
        zzs.h(context, str, builderBuildUpon.build().toString());
    }

    public final void f(boolean z10) {
        synchronized (this.f6094a) {
            this.f6098e = z10;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.q().h().y0(z10);
                zzdsf zzdsfVar = this.f6100g;
                if (zzdsfVar != null) {
                    zzdsfVar.j(z10);
                }
            }
        }
    }

    public final void g(zzdsf zzdsfVar) {
        this.f6100g = zzdsfVar;
    }

    public final void h(boolean z10) {
        synchronized (this.f6094a) {
            this.f6097d = z10;
        }
    }

    @VisibleForTesting
    protected final void i(Context context, String str, boolean z10, boolean z11) {
        if (context instanceof Activity) {
            zzs.f6190i.post(new d(this, context, str, z10, z11));
        } else {
            zzbza.f("Can not create dialog without Activity Context");
        }
    }

    public final boolean j(Context context, String str, String str2) {
        String strO = o(context, p(context, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10306n4), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strO)) {
            zzbza.b("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(new JSONObject(strO.trim()).optString("debug_mode"));
            f(zEquals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
                zzg zzgVarH = com.google.android.gms.ads.internal.zzt.q().h();
                if (true != zEquals) {
                    str = BuildConfig.FLAVOR;
                }
                zzgVarH.t0(str);
            }
            return zEquals;
        } catch (JSONException e10) {
            zzbza.h("Fail to get debug mode response json.", e10);
            return false;
        }
    }

    @VisibleForTesting
    final boolean k(Context context, String str, String str2) {
        String strO = o(context, p(context, (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10295m4), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strO)) {
            zzbza.b("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strO.trim());
            String strOptString = jSONObject.optString("gct");
            this.f6099f = jSONObject.optString("status");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10387u8)).booleanValue()) {
                boolean z10 = AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(this.f6099f) || "2".equals(this.f6099f);
                f(z10);
                zzg zzgVarH = com.google.android.gms.ads.internal.zzt.q().h();
                if (!z10) {
                    str = BuildConfig.FLAVOR;
                }
                zzgVarH.t0(str);
            }
            synchronized (this.f6094a) {
                this.f6096c = strOptString;
            }
            return true;
        } catch (JSONException e10) {
            zzbza.h("Fail to get in app preview response json.", e10);
            return false;
        }
    }

    public final boolean l() {
        boolean z10;
        synchronized (this.f6094a) {
            z10 = this.f6098e;
        }
        return z10;
    }

    public final boolean m() {
        boolean z10;
        synchronized (this.f6094a) {
            z10 = this.f6097d;
        }
        return z10;
    }

    public final boolean n(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !m()) {
            return false;
        }
        zzbza.b("Sending troubleshooting signals to the server.");
        e(context, str, str2, str3);
        return true;
    }
}
