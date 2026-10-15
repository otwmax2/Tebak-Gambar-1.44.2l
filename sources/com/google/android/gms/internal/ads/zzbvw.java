package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.model.CookieDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbvw implements zzbwb {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final List f11387m = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f11388n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("lock")
    private final zzgul f11389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private final LinkedHashMap f11390b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f11393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f11394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbvy f11395g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzbvx f11400l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private final List f11391c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private final List f11392d = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f11396h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashSet f11397i = new HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11398j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11399k = false;

    public zzbvw(Context context, zzbzg zzbzgVar, zzbvy zzbvyVar, String str, zzbvx zzbvxVar, byte[] bArr) {
        Preconditions.l(zzbvyVar, "SafeBrowsing config is not present.");
        this.f11393e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11390b = new LinkedHashMap();
        this.f11400l = zzbvxVar;
        this.f11395g = zzbvyVar;
        Iterator it = zzbvyVar.f11405s.iterator();
        while (it.hasNext()) {
            this.f11397i.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.f11397i.remove(CookieDBAdapter.CookieColumns.TABLE_NAME.toLowerCase(Locale.ENGLISH));
        zzgul zzgulVarI = zzgvu.I();
        zzgulVarI.C(9);
        zzgulVarI.y(str);
        zzgulVarI.w(str);
        zzgum zzgumVarI = zzgun.I();
        String str2 = this.f11395g.f11401o;
        if (str2 != null) {
            zzgumVarI.o(str2);
        }
        zzgulVarI.v((zzgun) zzgumVarI.k());
        zzgvp zzgvpVarI = zzgvq.I();
        zzgvpVarI.q(Wrappers.a(this.f11393e).g());
        String str3 = zzbzgVar.f11605o;
        if (str3 != null) {
            zzgvpVarI.o(str3);
        }
        long jB = GoogleApiAvailabilityLight.h().b(this.f11393e);
        if (jB > 0) {
            zzgvpVarI.p(jB);
        }
        zzgulVarI.u((zzgvq) zzgvpVarI.k());
        this.f11389a = zzgulVarI;
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final void a(String str, Map map, int i10) {
        int iA;
        synchronized (this.f11396h) {
            if (i10 == 3) {
                this.f11399k = true;
            }
            if (this.f11390b.containsKey(str)) {
                if (i10 == 3 && (iA = zzgvm.a(3)) != 0) {
                    ((zzgvn) this.f11390b.get(str)).s(iA);
                }
                return;
            }
            zzgvn zzgvnVarJ = zzgvo.J();
            int iA2 = zzgvm.a(i10);
            if (iA2 != 0) {
                zzgvnVarJ.s(iA2);
            }
            zzgvnVarJ.p(this.f11390b.size());
            zzgvnVarJ.r(str);
            zzguy zzguyVarI = zzgvb.I();
            if (!this.f11397i.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : BuildConfig.FLAVOR;
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : BuildConfig.FLAVOR;
                    if (this.f11397i.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzguw zzguwVarI = zzgux.I();
                        zzguwVarI.o(zzgpe.M(str2));
                        zzguwVarI.p(zzgpe.M(str3));
                        zzguyVarI.o((zzgux) zzguwVarI.k());
                    }
                }
            }
            zzgvnVarJ.q((zzgvb) zzguyVarI.k());
            this.f11390b.put(str, zzgvnVarJ);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final void b() {
        synchronized (this.f11396h) {
            this.f11390b.keySet();
            zzfut zzfutVarH = zzfuj.h(Collections.emptyMap());
            zzftq zzftqVar = new zzftq() { // from class: com.google.android.gms.internal.ads.zzbvt
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return this.f11383a.d((Map) obj);
                }
            };
            zzfuu zzfuuVar = zzbzn.f11619f;
            zzfut zzfutVarM = zzfuj.m(zzfutVarH, zzftqVar, zzfuuVar);
            zzfut zzfutVarN = zzfuj.n(zzfutVarM, 10L, TimeUnit.SECONDS, zzbzn.f11617d);
            zzfuj.q(zzfutVarM, new zzbvv(this, zzfutVarN), zzfuuVar);
            f11387m.add(zzfutVarN);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final void c(View view) {
        Bitmap bitmapCreateBitmap;
        boolean zIsDrawingCacheEnabled;
        if (this.f11395g.f11403q && !this.f11398j) {
            com.google.android.gms.ads.internal.zzt.r();
            final Bitmap bitmap = null;
            if (view != null) {
                try {
                    zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
                } catch (RuntimeException e10) {
                    e = e10;
                    bitmapCreateBitmap = null;
                }
                try {
                    view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
                } catch (RuntimeException e11) {
                    e = e11;
                    zzbza.e("Fail to capture the web view", e);
                }
                if (bitmapCreateBitmap == null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width == 0 || height == 0) {
                            zzbza.g("Width or height of view is zero");
                        } else {
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap = bitmapCreateBitmap2;
                        }
                    } catch (RuntimeException e12) {
                        zzbza.e("Fail to capture the webview", e12);
                    }
                } else {
                    bitmap = bitmapCreateBitmap;
                }
            }
            if (bitmap == null) {
                zzbwa.a("Failed to capture the webview bitmap.");
            } else {
                this.f11398j = true;
                com.google.android.gms.ads.internal.util.zzs.E(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvu
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11384o.f(bitmap);
                    }
                });
            }
        }
    }

    final /* synthetic */ zzfut d(Map map) throws Exception {
        zzgvn zzgvnVar;
        zzfut zzfutVarL;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.f11396h) {
                            int length = jSONArrayOptJSONArray.length();
                            synchronized (this.f11396h) {
                                zzgvnVar = (zzgvn) this.f11390b.get(str);
                            }
                            if (zzgvnVar == null) {
                                zzbwa.a("Cannot find the corresponding resource object for " + str);
                            } else {
                                for (int i10 = 0; i10 < length; i10++) {
                                    zzgvnVar.o(jSONArrayOptJSONArray.getJSONObject(i10).getString("threat_type"));
                                }
                                this.f11394f = (length > 0) | this.f11394f;
                            }
                        }
                    }
                }
            } catch (JSONException e10) {
                if (((Boolean) zzbcs.f10594b.e()).booleanValue()) {
                    zzbza.c("Failed to get SafeBrowsing metadata", e10);
                }
                return zzfuj.g(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f11394f) {
            synchronized (this.f11396h) {
                this.f11389a.C(10);
            }
        }
        boolean z10 = this.f11394f;
        if (!(z10 && this.f11395g.f11407u) && (!(this.f11399k && this.f11395g.f11406t) && (z10 || !this.f11395g.f11404r))) {
            return zzfuj.h(null);
        }
        synchronized (this.f11396h) {
            Iterator it = this.f11390b.values().iterator();
            while (it.hasNext()) {
                this.f11389a.q((zzgvo) ((zzgvn) it.next()).k());
            }
            this.f11389a.o(this.f11391c);
            this.f11389a.p(this.f11392d);
            if (zzbwa.b()) {
                StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + this.f11389a.A() + "\n  clickUrl: " + this.f11389a.z() + "\n  resources: \n");
                for (zzgvo zzgvoVar : this.f11389a.B()) {
                    sb.append("    [");
                    sb.append(zzgvoVar.I());
                    sb.append("] ");
                    sb.append(zzgvoVar.L());
                }
                zzbwa.a(sb.toString());
            }
            zzfut zzfutVarB = new com.google.android.gms.ads.internal.util.zzbo(this.f11393e).b(1, this.f11395g.f11402p, null, ((zzgvu) this.f11389a.k()).t());
            if (zzbwa.b()) {
                zzfutVarB.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbwa.a("Pinged SB successfully.");
                    }
                }, zzbzn.f11614a);
            }
            zzfutVarL = zzfuj.l(zzfutVarB, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbvs
                @Override // com.google.android.gms.internal.ads.zzfnj
                public final Object a(Object obj) {
                    int i11 = zzbvw.f11388n;
                    return null;
                }
            }, zzbzn.f11619f);
        }
        return zzfutVarL;
    }

    final /* synthetic */ void f(Bitmap bitmap) {
        zzgpb zzgpbVarH = zzgpe.H();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzgpbVarH);
        synchronized (this.f11396h) {
            zzgul zzgulVar = this.f11389a;
            zzgvg zzgvgVarI = zzgvi.I();
            zzgvgVarI.o(zzgpbVarH.c());
            zzgvgVarI.p("image/png");
            zzgvgVarI.q(2);
            zzgulVar.x((zzgvi) zzgvgVarI.k());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final boolean g() {
        return PlatformVersion.e() && this.f11395g.f11403q && !this.f11398j;
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final void t0(String str) {
        synchronized (this.f11396h) {
            if (str == null) {
                this.f11389a.r();
            } else {
                this.f11389a.s(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    public final zzbvy zza() {
        return this.f11395g;
    }
}
