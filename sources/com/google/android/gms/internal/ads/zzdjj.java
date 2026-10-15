package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.AdSize;
import com.vungle.warren.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdjj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdis f14894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzapw f14895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzg f14896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zza f14897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzawe f14898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f14899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzbdl f14900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzdkb f14901i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzdmq f14902j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ScheduledExecutorService f14903k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzdll f14904l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzdpi f14905m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzfdk f14906n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfff f14907o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeaf f14908p;

    public zzdjj(Context context, zzdis zzdisVar, zzapw zzapwVar, zzbzg zzbzgVar, com.google.android.gms.ads.internal.zza zzaVar, zzawe zzaweVar, Executor executor, zzeyx zzeyxVar, zzdkb zzdkbVar, zzdmq zzdmqVar, ScheduledExecutorService scheduledExecutorService, zzdpi zzdpiVar, zzfdk zzfdkVar, zzfff zzfffVar, zzeaf zzeafVar, zzdll zzdllVar) {
        this.f14893a = context;
        this.f14894b = zzdisVar;
        this.f14895c = zzapwVar;
        this.f14896d = zzbzgVar;
        this.f14897e = zzaVar;
        this.f14898f = zzaweVar;
        this.f14899g = executor;
        this.f14900h = zzeyxVar.f17736i;
        this.f14901i = zzdkbVar;
        this.f14902j = zzdmqVar;
        this.f14903k = scheduledExecutorService;
        this.f14905m = zzdpiVar;
        this.f14906n = zzfdkVar;
        this.f14907o = zzfffVar;
        this.f14908p = zzeafVar;
        this.f14904l = zzdllVar;
    }

    public static final com.google.android.gms.ads.internal.client.zzel i(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(AnalyticsEvent.Ad.mute);
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("default_reason")) == null) {
            return null;
        }
        return r(jSONObjectOptJSONObject);
    }

    public static final List j(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AnalyticsEvent.Ad.mute);
        if (jSONObjectOptJSONObject == null) {
            return zzfqk.u();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reasons");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzfqk.u();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            com.google.android.gms.ads.internal.client.zzel zzelVarR = r(jSONArrayOptJSONArray.optJSONObject(i10));
            if (zzelVarR != null) {
                arrayList.add(zzelVarR);
            }
        }
        return zzfqk.s(arrayList);
    }

    private final com.google.android.gms.ads.internal.client.zzq k(int i10, int i11) {
        if (i10 == 0) {
            if (i11 == 0) {
                return com.google.android.gms.ads.internal.client.zzq.X3();
            }
            i10 = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzq(this.f14893a, new AdSize(i10, i11));
    }

    private static zzfut l(zzfut zzfutVar, Object obj) {
        final Object obj2 = null;
        return zzfuj.f(zzfutVar, Exception.class, new zzftq(obj2) { // from class: com.google.android.gms.internal.ads.zzdjg
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj3) {
                com.google.android.gms.ads.internal.util.zze.l("Error during loading assets.", (Exception) obj3);
                return zzfuj.h(null);
            }
        }, zzbzn.f11619f);
    }

    private static zzfut m(boolean z10, final zzfut zzfutVar, Object obj) {
        return z10 ? zzfuj.m(zzfutVar, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdje
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj2) {
                return obj2 != null ? zzfutVar : zzfuj.g(new zzeek(1, "Retrieve required value in native ad response failed."));
            }
        }, zzbzn.f11619f) : l(zzfutVar, null);
    }

    private final zzfut n(JSONObject jSONObject, boolean z10) {
        if (jSONObject == null) {
            return zzfuj.h(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return zzfuj.h(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, -1);
        final int iOptInt2 = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, -1);
        if (z10) {
            return zzfuj.h(new zzbdj(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        return m(jSONObject.optBoolean("require"), zzfuj.l(this.f14894b.b(strOptString, dOptDouble, zOptBoolean), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdjh
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                String str = strOptString;
                return new zzbdj(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), dOptDouble, iOptInt, iOptInt2);
            }
        }, this.f14899g), null);
    }

    private final zzfut o(JSONArray jSONArray, boolean z10, boolean z11) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzfuj.h(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z11 ? jSONArray.length() : 1;
        for (int i10 = 0; i10 < length; i10++) {
            arrayList.add(n(jSONArray.optJSONObject(i10), z10));
        }
        return zzfuj.l(zzfuj.d(arrayList), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdjf
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzbdj zzbdjVar : (List) obj) {
                    if (zzbdjVar != null) {
                        arrayList2.add(zzbdjVar);
                    }
                }
                return arrayList2;
            }
        }, this.f14899g);
    }

    private final zzfut p(JSONObject jSONObject, zzeyc zzeycVar, zzeyf zzeyfVar) {
        final zzfut zzfutVarB = this.f14901i.b(jSONObject.optString("base_url"), jSONObject.optString("html"), zzeycVar, zzeyfVar, k(jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0), jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0)));
        return zzfuj.m(zzfutVarB, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdji
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) throws zzeek {
                zzfut zzfutVar = zzfutVarB;
                zzcei zzceiVar = (zzcei) obj;
                if (zzceiVar == null || zzceiVar.r() == null) {
                    throw new zzeek(1, "Retrieve video view in html5 ad response failed.");
                }
                return zzfutVar;
            }
        }, zzbzn.f11619f);
    }

    private static Integer q(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static final com.google.android.gms.ads.internal.client.zzel r(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzel(strOptString, strOptString2);
    }

    final /* synthetic */ zzbdg a(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString("text");
        Integer numQ = q(jSONObject, "bg_color");
        Integer numQ2 = q(jSONObject, "text_color");
        int iOptInt = jSONObject.optInt("text_size", -1);
        boolean zOptBoolean = jSONObject.optBoolean("allow_pub_rendering");
        int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
        return new zzbdg(strOptString, list, numQ, numQ2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", 4000) + iOptInt2, this.f14900h.f10649s, zOptBoolean);
    }

    final /* synthetic */ zzfut b(com.google.android.gms.ads.internal.client.zzq zzqVar, zzeyc zzeycVar, zzeyf zzeyfVar, String str, String str2, Object obj) throws Exception {
        zzcei zzceiVarA = this.f14902j.a(zzqVar, zzeycVar, zzeyfVar);
        final zzbzr zzbzrVarG = zzbzr.g(zzceiVarA);
        zzdli zzdliVarB = this.f14904l.b();
        zzceiVarA.J().M0(zzdliVarB, zzdliVarB, zzdliVarB, zzdliVarB, zzdliVarB, false, null, new com.google.android.gms.ads.internal.zzb(this.f14893a, null, null), null, null, this.f14908p, this.f14907o, this.f14905m, this.f14906n, null, zzdliVarB, null, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10316o3)).booleanValue()) {
            zzceiVarA.c0("/getNativeAdViewSignals", zzbho.f10731s);
        }
        zzceiVarA.c0("/getNativeClickMeta", zzbho.f10732t);
        zzceiVarA.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdjd
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                zzbzr zzbzrVar = zzbzrVarG;
                if (z10) {
                    zzbzrVar.h();
                } else {
                    zzbzrVar.d(new zzeek(1, "Image Web View failed to load."));
                }
            }
        });
        zzceiVarA.Q0(str, str2, null);
        return zzbzrVarG;
    }

    final /* synthetic */ zzfut c(String str, Object obj) throws Exception {
        com.google.android.gms.ads.internal.zzt.B();
        zzcei zzceiVarA = zzceu.a(this.f14893a, zzcfx.a(), "native-omid", false, false, this.f14895c, null, this.f14896d, null, null, this.f14897e, this.f14898f, null, null);
        final zzbzr zzbzrVarG = zzbzr.g(zzceiVarA);
        zzceiVarA.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdiz
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                zzbzrVarG.h();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F4)).booleanValue()) {
            zzceiVarA.loadData(Base64.encodeToString(str.getBytes(), 1), "text/html", "base64");
        } else {
            zzceiVarA.loadData(str, "text/html", "UTF-8");
        }
        return zzbzrVarG;
    }

    public final zzfut d(JSONObject jSONObject, String str) {
        final JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("attribution");
        if (jSONObjectOptJSONObject == null) {
            return zzfuj.h(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("images");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("image");
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        return m(jSONObjectOptJSONObject.optBoolean("require"), zzfuj.l(o(jSONArrayOptJSONArray, false, true), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdja
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f14876a.a(jSONObjectOptJSONObject, (List) obj);
            }
        }, this.f14899g), null);
    }

    public final zzfut e(JSONObject jSONObject, String str) {
        return n(jSONObject.optJSONObject(str), this.f14900h.f10646p);
    }

    public final zzfut f(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        zzbdl zzbdlVar = this.f14900h;
        return o(jSONArrayOptJSONArray, zzbdlVar.f10646p, zzbdlVar.f10648r);
    }

    public final zzfut g(JSONObject jSONObject, String str, final zzeyc zzeycVar, final zzeyf zzeyfVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T8)).booleanValue()) {
            return zzfuj.h(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzfuj.h(null);
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return zzfuj.h(null);
        }
        final String strOptString = jSONObjectOptJSONObject.optString("base_url");
        final String strOptString2 = jSONObjectOptJSONObject.optString("html");
        final com.google.android.gms.ads.internal.client.zzq zzqVarK = k(jSONObjectOptJSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0), jSONObjectOptJSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0));
        if (TextUtils.isEmpty(strOptString2)) {
            return zzfuj.h(null);
        }
        final zzfut zzfutVarM = zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdjb
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f14878a.b(zzqVarK, zzeycVar, zzeyfVar, strOptString, strOptString2, obj);
            }
        }, zzbzn.f11618e);
        return zzfuj.m(zzfutVarM, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdjc
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) throws zzeek {
                zzfut zzfutVar = zzfutVarM;
                if (((zzcei) obj) != null) {
                    return zzfutVar;
                }
                throw new zzeek(1, "Retrieve Web View from image ad response failed.");
            }
        }, zzbzn.f11619f);
    }

    public final zzfut h(JSONObject jSONObject, zzeyc zzeycVar, zzeyf zzeyfVar) {
        zzfut zzfutVarA;
        JSONObject jSONObjectG = com.google.android.gms.ads.internal.util.zzbu.g(jSONObject, "html_containers", "instream");
        if (jSONObjectG != null) {
            return p(jSONObjectG, zzeycVar, zzeyfVar);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("video");
        if (jSONObjectOptJSONObject == null) {
            return zzfuj.h(null);
        }
        String strOptString = jSONObjectOptJSONObject.optString("vast_xml");
        boolean z10 = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.S8)).booleanValue() && jSONObjectOptJSONObject.has("html")) {
            z10 = true;
        }
        if (!TextUtils.isEmpty(strOptString)) {
            if (!z10) {
                zzfutVarA = this.f14901i.a(jSONObjectOptJSONObject);
            }
            return l(zzfuj.n(zzfutVarA, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10327p3)).intValue(), TimeUnit.SECONDS, this.f14903k), null);
        }
        if (!z10) {
            zzbza.g("Required field 'vast_xml' or 'html' is missing");
            return zzfuj.h(null);
        }
        zzfutVarA = p(jSONObjectOptJSONObject, zzeycVar, zzeyfVar);
        return l(zzfuj.n(zzfutVarA, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10327p3)).intValue(), TimeUnit.SECONDS, this.f14903k), null);
    }
}
