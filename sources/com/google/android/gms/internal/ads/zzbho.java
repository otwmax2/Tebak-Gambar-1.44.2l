package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbho {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzbhp f10713a = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgt
        @Override // com.google.android.gms.internal.ads.zzbhp
        public final void a(Object obj, Map map) {
            zzcfj zzcfjVar = (zzcfj) obj;
            zzbhp zzbhpVar = zzbho.f10713a;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                zzbza.g("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] strArrSplit = str.split(",");
            HashMap map2 = new HashMap();
            PackageManager packageManager = zzcfjVar.getContext().getPackageManager();
            for (String str2 : strArrSplit) {
                String[] strArrSplit2 = str2.split(";", 2);
                boolean z10 = true;
                if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST) == null) {
                    z10 = false;
                }
                Boolean boolValueOf = Boolean.valueOf(z10);
                map2.put(str2, boolValueOf);
                com.google.android.gms.ads.internal.util.zze.k("/canOpenURLs;" + str2 + ";" + boolValueOf);
            }
            ((zzbki) zzcfjVar).v0("openableURLs", map2);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzbhp f10714b = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgu
        @Override // com.google.android.gms.internal.ads.zzbhp
        public final void a(Object obj, Map map) {
            zzcfj zzcfjVar = (zzcfj) obj;
            zzbhp zzbhpVar = zzbho.f10713a;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C7)).booleanValue()) {
                zzbza.g("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get("package_name");
            if (TextUtils.isEmpty(str)) {
                zzbza.g("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap map2 = new HashMap();
            Boolean boolValueOf = Boolean.valueOf(zzcfjVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            map2.put(str, boolValueOf);
            com.google.android.gms.ads.internal.util.zze.k("/canOpenApp;" + str + ";" + boolValueOf);
            ((zzbki) zzcfjVar).v0("openableApp", map2);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzbhp f10715c = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgm
        @Override // com.google.android.gms.internal.ads.zzbhp
        public final void a(Object obj, Map map) {
            zzbho.c((zzcfj) obj, map);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzbhp f10716d = new zzbhg();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzbhp f10717e = new zzbhh();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzbhp f10718f = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgs
        @Override // com.google.android.gms.internal.ads.zzbhp
        public final void a(Object obj, Map map) {
            zzcfj zzcfjVar = (zzcfj) obj;
            zzbhp zzbhpVar = zzbho.f10713a;
            String str = (String) map.get("u");
            if (str == null) {
                zzbza.g("URL missing from httpTrack GMSG.");
            } else {
                new com.google.android.gms.ads.internal.util.zzby(zzcfjVar.getContext(), ((zzcfr) zzcfjVar).k().f11605o, str).b();
            }
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final zzbhp f10719g = new zzbhi();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzbhp f10720h = new zzbhj();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzbhp f10721i = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgr
        @Override // com.google.android.gms.internal.ads.zzbhp
        public final void a(Object obj, Map map) {
            zzcfq zzcfqVar = (zzcfq) obj;
            zzbhp zzbhpVar = zzbho.f10713a;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int i10 = Integer.parseInt(str);
                int i11 = Integer.parseInt(str2);
                int i12 = Integer.parseInt(str3);
                zzapw zzapwVarT = zzcfqVar.T();
                if (zzapwVarT != null) {
                    zzapwVarT.c().d(i10, i11, i12);
                }
            } catch (NumberFormatException unused) {
                zzbza.g("Could not parse touch parameters from gmsg.");
            }
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final zzbhp f10722j = new zzbhk();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzbhp f10723k = new zzbhl();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzbhp f10724l = new zzcci();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final zzbhp f10725m = new zzccj();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzbhp f10726n = new zzbgl();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final zzbid f10727o = new zzbid();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzbhp f10728p = new zzbhm();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzbhp f10729q = new zzbhn();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzbhp f10730r = new zzbgv();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzbhp f10731s = new zzbgw();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzbhp f10732t = new zzbgx();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzbhp f10733u = new zzbgy();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzbhp f10734v = new zzbgz();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final zzbhp f10735w = new zzbha();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzbhp f10736x = new zzbhb();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final zzbhp f10737y = new zzbhc();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final zzbhp f10738z = new zzbhd();
    public static final zzbhp A = new zzbhe();

    public static zzbhp a(final zzdcc zzdccVar) {
        return new zzbhp() { // from class: com.google.android.gms.internal.ads.zzbgq
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                zzcei zzceiVar = (zzcei) obj;
                zzbho.d(map, zzdccVar);
                String str = (String) map.get("u");
                if (str == null) {
                    zzbza.g("URL missing from click GMSG.");
                } else {
                    zzfuj.q(zzbho.b(zzceiVar, str), new zzbhf(zzceiVar), zzbzn.f11614a);
                }
            }
        };
    }

    public static zzfut b(zzcei zzceiVar, String str) {
        Uri uriA = Uri.parse(str);
        try {
            zzapw zzapwVarT = zzceiVar.T();
            if (zzapwVarT != null && zzapwVarT.f(uriA)) {
                uriA = zzapwVarT.a(uriA, zzceiVar.getContext(), zzceiVar.L(), zzceiVar.g());
            }
        } catch (zzapx unused) {
            zzbza.g("Unable to append parameter to URL: ".concat(str));
        }
        final String strB = zzbxh.b(uriA, zzceiVar.getContext());
        long jLongValue = ((Long) zzbcj.f10562e.e()).longValue();
        if (jLongValue <= 0 || jLongValue > 230500000) {
            return zzfuj.h(strB);
        }
        zzfua zzfuaVarD = zzfua.D(zzceiVar.a1());
        zzbgn zzbgnVar = new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbgn
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                Throwable th = (Throwable) obj;
                zzbhp zzbhpVar = zzbho.f10713a;
                if (!((Boolean) zzbcj.f10568k.e()).booleanValue()) {
                    return "failure_click_attok";
                }
                com.google.android.gms.ads.internal.zzt.q().u(th, "prepareClickUrl.attestation1");
                return "failure_click_attok";
            }
        };
        zzfuu zzfuuVar = zzbzn.f11619f;
        return zzfuj.e(zzfuj.l(zzfuj.e(zzfuaVarD, Throwable.class, zzbgnVar, zzfuuVar), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbgo
            /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
            @Override // com.google.android.gms.internal.ads.zzfnj
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object a(java.lang.Object r6) {
                /*
                    r5 = this;
                    java.lang.String r0 = r1
                    java.lang.String r6 = (java.lang.String) r6
                    com.google.android.gms.internal.ads.zzbhp r1 = com.google.android.gms.internal.ads.zzbho.f10713a
                    if (r6 != 0) goto L9
                    goto L74
                L9:
                    com.google.android.gms.internal.ads.zzbbw r1 = com.google.android.gms.internal.ads.zzbcj.f10563f
                    java.lang.Object r1 = r1.e()
                    java.lang.Boolean r1 = (java.lang.Boolean) r1
                    boolean r1 = r1.booleanValue()
                    if (r1 != 0) goto L18
                    goto L39
                L18:
                    java.lang.String r1 = ".doubleclick.net"
                    java.lang.String r2 = ".googleadservices.com"
                    java.lang.String r3 = ".googlesyndication.com"
                    java.lang.String[] r1 = new java.lang.String[]{r1, r2, r3}
                    android.net.Uri r2 = android.net.Uri.parse(r0)
                    java.lang.String r2 = r2.getHost()
                    r3 = 0
                L2b:
                    r4 = 3
                    if (r3 >= r4) goto L74
                    r4 = r1[r3]
                    boolean r4 = r2.endsWith(r4)
                    if (r4 != 0) goto L39
                    int r3 = r3 + 1
                    goto L2b
                L39:
                    com.google.android.gms.internal.ads.zzbbw r1 = com.google.android.gms.internal.ads.zzbcj.f10558a
                    java.lang.Object r1 = r1.e()
                    java.lang.String r1 = (java.lang.String) r1
                    com.google.android.gms.internal.ads.zzbbw r2 = com.google.android.gms.internal.ads.zzbcj.f10559b
                    java.lang.Object r2 = r2.e()
                    java.lang.String r2 = (java.lang.String) r2
                    boolean r3 = android.text.TextUtils.isEmpty(r1)
                    if (r3 != 0) goto L53
                    java.lang.String r0 = r0.replace(r1, r6)
                L53:
                    boolean r1 = android.text.TextUtils.isEmpty(r2)
                    if (r1 != 0) goto L74
                    android.net.Uri r1 = android.net.Uri.parse(r0)
                    java.lang.String r3 = r1.getQueryParameter(r2)
                    boolean r3 = android.text.TextUtils.isEmpty(r3)
                    if (r3 == 0) goto L74
                    android.net.Uri$Builder r0 = r1.buildUpon()
                    android.net.Uri$Builder r6 = r0.appendQueryParameter(r2, r6)
                    java.lang.String r6 = r6.toString()
                    return r6
                L74:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgo.a(java.lang.Object):java.lang.Object");
            }
        }, zzfuuVar), Throwable.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbgp
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                String str2 = strB;
                Throwable th = (Throwable) obj;
                zzbhp zzbhpVar = zzbho.f10713a;
                if (((Boolean) zzbcj.f10568k.e()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.q().u(th, "prepareClickUrl.attestation2");
                }
                return str2;
            }
        }, zzfuuVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void c(com.google.android.gms.internal.ads.zzcfj r16, java.util.Map r17) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbho.c(com.google.android.gms.internal.ads.zzcfj, java.util.Map):void");
    }

    public static void d(Map map, zzdcc zzdccVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10212e9)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals(AppEventsConstants.EVENT_PARAM_VALUE_YES) && zzdccVar != null) {
            zzdccVar.p();
        }
    }
}
