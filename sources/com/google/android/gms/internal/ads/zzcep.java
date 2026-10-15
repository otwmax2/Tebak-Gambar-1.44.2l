package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.a0;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@ParametersAreNonnullByDefault
public class zzcep extends WebViewClient implements zzcfv {
    public static final /* synthetic */ int Q = 0;
    private boolean A;

    @GuardedBy("lock")
    private boolean B;

    @GuardedBy("lock")
    private boolean C;

    @GuardedBy("lock")
    private boolean D;
    private com.google.android.gms.ads.internal.overlay.zzz E;
    private zzbqe F;
    private com.google.android.gms.ads.internal.zzb G;
    private zzbpz H;
    protected zzbwb I;
    private zzfff J;
    private boolean K;
    private boolean L;
    private int M;
    private boolean N;
    private final HashSet O;
    private View.OnAttachStateChangeListener P;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcei f12015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzawe f12016p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final HashMap f12017q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Object f12018r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zza f12019s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.google.android.gms.ads.internal.overlay.zzo f12020t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzcft f12021u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzcfu f12022v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzbgi f12023w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private zzbgk f12024x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private zzdcc f12025y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f12026z;

    public zzcep(zzcei zzceiVar, zzawe zzaweVar, boolean z10) {
        zzbqe zzbqeVar = new zzbqe(zzceiVar, zzceiVar.H(), new zzbab(zzceiVar.getContext()));
        this.f12017q = new HashMap();
        this.f12018r = new Object();
        this.f12016p = zzaweVar;
        this.f12015o = zzceiVar;
        this.B = z10;
        this.F = zzbqeVar;
        this.H = null;
        this.O = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10241h5)).split(",")));
    }

    private static final boolean C(boolean z10, zzcei zzceiVar) {
        return (!z10 || zzceiVar.M().i() || zzceiVar.B0().equals("interstitial_mb")) ? false : true;
    }

    private static WebResourceResponse m() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D0)).booleanValue()) {
            return new WebResourceResponse(BuildConfig.FLAVOR, BuildConfig.FLAVOR, new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f4, code lost:
    
        com.google.android.gms.ads.internal.zzt.r();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00fe, code lost:
    
        return com.google.android.gms.ads.internal.util.zzs.m(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse n(java.lang.String r11, java.util.Map r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcep.n(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.m()) {
            com.google.android.gms.ads.internal.util.zze.k("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.k("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbhp) it.next()).a(this.f12015o, map);
        }
    }

    private final void v() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.P;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.f12015o).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(final View view, final zzbwb zzbwbVar, final int i10) {
        if (!zzbwbVar.g() || i10 <= 0) {
            return;
        }
        zzbwbVar.c(view);
        if (zzbwbVar.g()) {
            com.google.android.gms.ads.internal.util.zzs.f6190i.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcel
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12003o.r0(view, zzbwbVar, i10);
                }
            }, 100L);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void A0(zzcfu zzcfuVar) {
        this.f12022v = zzcfuVar;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener D() {
        synchronized (this.f12018r) {
        }
        return null;
    }

    public final void D0(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbpz zzbpzVar = this.H;
        boolean zL = zzbpzVar != null ? zzbpzVar.l() : false;
        com.google.android.gms.ads.internal.zzt.k();
        com.google.android.gms.ads.internal.overlay.zzm.a(this.f12015o.getContext(), adOverlayInfoParcel, !zL);
        zzbwb zzbwbVar = this.I;
        if (zzbwbVar != null) {
            String str = adOverlayInfoParcel.f5980z;
            if (str == null && (zzcVar = adOverlayInfoParcel.f5969o) != null) {
                str = zzcVar.f5987p;
            }
            zzbwbVar.t0(str);
        }
    }

    public final void E0(boolean z10, int i10, String str, boolean z11) {
        boolean zB = this.f12015o.B();
        boolean zC = C(zB, this.f12015o);
        boolean z12 = true;
        if (!zC && z11) {
            z12 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zC ? null : this.f12019s;
        zzceo zzceoVar = zB ? null : new zzceo(this.f12015o, this.f12020t);
        zzbgi zzbgiVar = this.f12023w;
        zzbgk zzbgkVar = this.f12024x;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.E;
        zzcei zzceiVar = this.f12015o;
        D0(new AdOverlayInfoParcel(zzaVar, zzceoVar, zzbgiVar, zzbgkVar, zzzVar, zzceiVar, z10, i10, str, zzceiVar.k(), z12 ? null : this.f12025y));
    }

    public final ViewTreeObserver.OnScrollChangedListener G() {
        synchronized (this.f12018r) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void H() {
        synchronized (this.f12018r) {
            this.f12026z = false;
            this.B = true;
            zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcek
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12002o.o0();
                }
            });
        }
    }

    public final void H0(boolean z10, int i10, String str, String str2, boolean z11) {
        boolean zB = this.f12015o.B();
        boolean zC = C(zB, this.f12015o);
        boolean z12 = true;
        if (!zC && z11) {
            z12 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zC ? null : this.f12019s;
        zzceo zzceoVar = zB ? null : new zzceo(this.f12015o, this.f12020t);
        zzbgi zzbgiVar = this.f12023w;
        zzbgk zzbgkVar = this.f12024x;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.E;
        zzcei zzceiVar = this.f12015o;
        D0(new AdOverlayInfoParcel(zzaVar, zzceoVar, zzbgiVar, zzbgkVar, zzzVar, zzceiVar, z10, i10, str, str2, zzceiVar.k(), z12 ? null : this.f12025y));
    }

    protected final WebResourceResponse I(String str, Map map) {
        zzavn zzavnVarB;
        try {
            if (((Boolean) zzbcm.f10575a.e()).booleanValue() && this.J != null && "oda".equals(Uri.parse(str).getScheme())) {
                this.J.c(str, null);
                return new WebResourceResponse(BuildConfig.FLAVOR, BuildConfig.FLAVOR, new ByteArrayInputStream(new byte[0]));
            }
            String strC = zzbxh.c(str, this.f12015o.getContext(), this.N);
            if (!strC.equals(str)) {
                return n(strC, map);
            }
            zzavq zzavqVarV3 = zzavq.V3(Uri.parse(str));
            if (zzavqVarV3 != null && (zzavnVarB = com.google.android.gms.ads.internal.zzt.e().b(zzavqVarV3)) != null && zzavnVarB.b()) {
                return new WebResourceResponse(BuildConfig.FLAVOR, BuildConfig.FLAVOR, zzavnVarB.X3());
            }
            if (zzbyz.l() && ((Boolean) zzbcg.f10524b.e()).booleanValue()) {
                return n(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "AdWebViewClient.interceptRequest");
            return m();
        }
    }

    public final void L0(String str, zzbhp zzbhpVar) {
        synchronized (this.f12018r) {
            List copyOnWriteArrayList = (List) this.f12017q.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList();
                this.f12017q.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(zzbhpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void M0(com.google.android.gms.ads.internal.client.zza zzaVar, zzbgi zzbgiVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzbgk zzbgkVar, com.google.android.gms.ads.internal.overlay.zzz zzzVar, boolean z10, zzbhr zzbhrVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbqg zzbqgVar, zzbwb zzbwbVar, final zzeaf zzeafVar, final zzfff zzfffVar, zzdpi zzdpiVar, zzfdk zzfdkVar, zzbih zzbihVar, final zzdcc zzdccVar, zzbig zzbigVar, zzbia zzbiaVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.f12015o.getContext(), zzbwbVar, null) : zzbVar;
        this.H = new zzbpz(this.f12015o, zzbqgVar);
        this.I = zzbwbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L0)).booleanValue()) {
            L0("/adMetadata", new zzbgh(zzbgiVar));
        }
        if (zzbgkVar != null) {
            L0("/appEvent", new zzbgj(zzbgkVar));
        }
        L0("/backButton", zzbho.f10722j);
        L0("/refresh", zzbho.f10723k);
        L0("/canOpenApp", zzbho.f10714b);
        L0("/canOpenURLs", zzbho.f10713a);
        L0("/canOpenIntents", zzbho.f10715c);
        L0("/close", zzbho.f10716d);
        L0("/customClose", zzbho.f10717e);
        L0("/instrument", zzbho.f10726n);
        L0("/delayPageLoaded", zzbho.f10728p);
        L0("/delayPageClosed", zzbho.f10729q);
        L0("/getLocationInfo", zzbho.f10730r);
        L0("/log", zzbho.f10719g);
        L0("/mraid", new zzbhv(zzbVar2, this.H, zzbqgVar));
        zzbqe zzbqeVar = this.F;
        if (zzbqeVar != null) {
            L0("/mraidLoaded", zzbqeVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        L0("/open", new zzbhz(zzbVar2, this.H, zzeafVar, zzdpiVar, zzfdkVar));
        L0("/precache", new zzccv());
        L0("/touch", zzbho.f10721i);
        L0("/video", zzbho.f10724l);
        L0("/videoMeta", zzbho.f10725m);
        if (zzeafVar == null || zzfffVar == null) {
            L0("/click", zzbho.a(zzdccVar));
            L0("/httpTrack", zzbho.f10718f);
        } else {
            L0("/click", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzeze
                @Override // com.google.android.gms.internal.ads.zzbhp
                public final void a(Object obj, Map map) {
                    zzdcc zzdccVar2 = zzdccVar;
                    zzfff zzfffVar2 = zzfffVar;
                    zzeaf zzeafVar2 = zzeafVar;
                    zzcei zzceiVar = (zzcei) obj;
                    zzbho.d(map, zzdccVar2);
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzbza.g("URL missing from click GMSG.");
                    } else {
                        zzfuj.q(zzbho.b(zzceiVar, str), new zzezf(zzceiVar, zzfffVar2, zzeafVar2), zzbzn.f11614a);
                    }
                }
            });
            L0("/httpTrack", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzezd
                @Override // com.google.android.gms.internal.ads.zzbhp
                public final void a(Object obj, Map map) {
                    zzfff zzfffVar2 = zzfffVar;
                    zzeaf zzeafVar2 = zzeafVar;
                    zzcdz zzcdzVar = (zzcdz) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzbza.g("URL missing from httpTrack GMSG.");
                    } else if (zzcdzVar.u().f17651j0) {
                        zzeafVar2.e(new zzeah(com.google.android.gms.ads.internal.zzt.b().a(), ((zzcff) zzcdzVar).g0().f17679b, str, 2));
                    } else {
                        zzfffVar2.c(str, null);
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzt.p().z(this.f12015o.getContext())) {
            L0("/logScionEvent", new zzbhu(this.f12015o.getContext()));
        }
        if (zzbhrVar != null) {
            L0("/setInterstitialProperties", new zzbhq(zzbhrVar, null));
        }
        if (zzbihVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue()) {
                L0("/inspectorNetworkExtras", zzbihVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10431y8)).booleanValue() && zzbigVar != null) {
            L0("/shareSheet", zzbigVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue() && zzbiaVar != null) {
            L0("/inspectorOutOfContextTest", zzbiaVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E9)).booleanValue()) {
            L0("/bindPlayStoreOverlay", zzbho.f10733u);
            L0("/presentPlayStoreOverlay", zzbho.f10734v);
            L0("/expandPlayStoreOverlay", zzbho.f10735w);
            L0("/collapsePlayStoreOverlay", zzbho.f10736x);
            L0("/closePlayStoreOverlay", zzbho.f10737y);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L2)).booleanValue()) {
                L0("/setPAIDPersonalizationEnabled", zzbho.A);
                L0("/resetPAID", zzbho.f10738z);
            }
        }
        this.f12019s = zzaVar;
        this.f12020t = zzoVar;
        this.f12023w = zzbgiVar;
        this.f12024x = zzbgkVar;
        this.E = zzzVar;
        this.G = zzbVar3;
        this.f12025y = zzdccVar;
        this.f12026z = z10;
        this.J = zzfffVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void O0(boolean z10) {
        synchronized (this.f12018r) {
            this.D = z10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void R0(Uri uri) {
        String path = uri.getPath();
        List list = (List) this.f12017q.get(path);
        if (path == null || list == null) {
            com.google.android.gms.ads.internal.util.zze.k("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10319o6)).booleanValue() || com.google.android.gms.ads.internal.zzt.q().f() == null) {
                return;
            }
            final String strSubstring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcej
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    String str = strSubstring;
                    int i10 = zzcep.Q;
                    com.google.android.gms.ads.internal.zzt.q().f().e(str);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10230g5)).booleanValue() && this.O.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10252i5)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.k("Parsing gmsg query params on BG thread: ".concat(path));
                zzfuj.q(com.google.android.gms.ads.internal.zzt.r().A(uri), new zzcen(this, list, path, uri), zzbzn.f11618e);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzt.r();
        o(com.google.android.gms.ads.internal.util.zzs.l(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void T0(int i10, int i11, boolean z10) {
        zzbqe zzbqeVar = this.F;
        if (zzbqeVar != null) {
            zzbqeVar.h(i10, i11);
        }
        zzbpz zzbpzVar = this.H;
        if (zzbpzVar != null) {
            zzbpzVar.j(i10, i11, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void V0(int i10, int i11) {
        zzbpz zzbpzVar = this.H;
        if (zzbpzVar != null) {
            zzbpzVar.k(i10, i11);
        }
    }

    public final void a(boolean z10) {
        this.f12026z = false;
    }

    public final void b(String str, zzbhp zzbhpVar) {
        synchronized (this.f12018r) {
            List list = (List) this.f12017q.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbhpVar);
        }
    }

    public final void c(String str, Predicate predicate) {
        synchronized (this.f12018r) {
            List<zzbhp> list = (List) this.f12017q.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbhp zzbhpVar : list) {
                if (predicate.a(zzbhpVar)) {
                    arrayList.add(zzbhpVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final com.google.android.gms.ads.internal.zzb d() {
        return this.G;
    }

    public final void d0() {
        if (this.f12021u != null && ((this.K && this.M <= 0) || this.L || this.A)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() && this.f12015o.l() != null) {
                zzbbb.a(this.f12015o.l().a(), this.f12015o.i(), "awfllc");
            }
            zzcft zzcftVar = this.f12021u;
            boolean z10 = false;
            if (!this.L && !this.A) {
                z10 = true;
            }
            zzcftVar.S(z10);
            this.f12021u = null;
        }
        this.f12015o.Q();
    }

    public final boolean e() {
        boolean z10;
        synchronized (this.f12018r) {
            z10 = this.D;
        }
        return z10;
    }

    public final boolean f() {
        boolean z10;
        synchronized (this.f12018r) {
            z10 = this.C;
        }
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void i() {
        zzawe zzaweVar = this.f12016p;
        if (zzaweVar != null) {
            zzaweVar.c(10005);
        }
        this.L = true;
        d0();
        this.f12015o.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void j() {
        synchronized (this.f12018r) {
        }
        this.M++;
        d0();
    }

    public final void k0() {
        zzbwb zzbwbVar = this.I;
        if (zzbwbVar != null) {
            zzbwbVar.b();
            this.I = null;
        }
        v();
        synchronized (this.f12018r) {
            this.f12017q.clear();
            this.f12019s = null;
            this.f12020t = null;
            this.f12021u = null;
            this.f12022v = null;
            this.f12023w = null;
            this.f12024x = null;
            this.f12026z = false;
            this.B = false;
            this.C = false;
            this.E = null;
            this.G = null;
            this.F = null;
            zzbpz zzbpzVar = this.H;
            if (zzbpzVar != null) {
                zzbpzVar.h(true);
                this.H = null;
            }
            this.J = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void l() {
        this.M--;
        d0();
    }

    public final void l0(boolean z10) {
        this.N = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void n0(zzcft zzcftVar) {
        this.f12021u = zzcftVar;
    }

    final /* synthetic */ void o0() {
        this.f12015o.A();
        com.google.android.gms.ads.internal.overlay.zzl zzlVarQ0 = this.f12015o.q0();
        if (zzlVarQ0 != null) {
            zzlVarQ0.y();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.k("Loading resource: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            R0(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f12018r) {
            if (this.f12015o.U()) {
                com.google.android.gms.ads.internal.util.zze.k("Blank page loaded, 1...");
                this.f12015o.f0();
                return;
            }
            this.K = true;
            zzcfu zzcfuVar = this.f12022v;
            if (zzcfuVar != null) {
                zzcfuVar.zza();
                this.f12022v = null;
            }
            d0();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.A = true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f12015o.X(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        zzdcc zzdccVar = this.f12025y;
        if (zzdccVar != null) {
            zzdccVar.p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
        zzdcc zzdccVar = this.f12025y;
        if (zzdccVar != null) {
            zzdccVar.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void r() {
        zzbwb zzbwbVar = this.I;
        if (zzbwbVar != null) {
            WebView webViewV = this.f12015o.V();
            if (a0.T(webViewV)) {
                w(webViewV, zzbwbVar, 10);
                return;
            }
            v();
            zzcem zzcemVar = new zzcem(this, zzbwbVar);
            this.P = zzcemVar;
            ((View) this.f12015o).addOnAttachStateChangeListener(zzcemVar);
        }
    }

    final /* synthetic */ void r0(View view, zzbwb zzbwbVar, int i10) {
        w(view, zzbwbVar, i10 - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final boolean s() {
        boolean z10;
        synchronized (this.f12018r) {
            z10 = this.B;
        }
        return z10;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return I(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.k("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri uriA = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriA.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriA.getHost())) {
            R0(uriA);
        } else {
            if (this.f12026z && webView == this.f12015o.V()) {
                String scheme = uriA.getScheme();
                if ("http".equalsIgnoreCase(scheme) || TournamentShareDialogURIBuilder.scheme.equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.f12019s;
                    if (zzaVar != null) {
                        zzaVar.w0();
                        zzbwb zzbwbVar = this.I;
                        if (zzbwbVar != null) {
                            zzbwbVar.t0(str);
                        }
                        this.f12019s = null;
                    }
                    zzdcc zzdccVar = this.f12025y;
                    if (zzdccVar != null) {
                        zzdccVar.p();
                        this.f12025y = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.f12015o.V().willNotDraw()) {
                zzbza.g("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    zzapw zzapwVarT = this.f12015o.T();
                    if (zzapwVarT != null && zzapwVarT.f(uriA)) {
                        Context context = this.f12015o.getContext();
                        zzcei zzceiVar = this.f12015o;
                        uriA = zzapwVarT.a(uriA, context, (View) zzceiVar, zzceiVar.g());
                    }
                } catch (zzapx unused) {
                    zzbza.g("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.G;
                if (zzbVar == null || zzbVar.c()) {
                    t0(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uriA.toString(), null, null, null, null, null, null), true);
                } else {
                    this.G.b(str);
                }
            }
        }
        return true;
    }

    public final void t0(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z10) {
        boolean zB = this.f12015o.B();
        boolean zC = C(zB, this.f12015o);
        boolean z11 = true;
        if (!zC && z10) {
            z11 = false;
        }
        D0(new AdOverlayInfoParcel(zzcVar, zC ? null : this.f12019s, zB ? null : this.f12020t, this.E, this.f12015o.k(), this.f12015o, z11 ? null : this.f12025y));
    }

    public final void u0(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzeaf zzeafVar, zzdpi zzdpiVar, zzfdk zzfdkVar, String str, String str2, int i10) {
        zzcei zzceiVar = this.f12015o;
        D0(new AdOverlayInfoParcel(zzceiVar, zzceiVar.k(), zzbrVar, zzeafVar, zzdpiVar, zzfdkVar, str, str2, 14));
    }

    public final void v0(boolean z10, int i10, boolean z11) {
        boolean zC = C(this.f12015o.B(), this.f12015o);
        boolean z12 = true;
        if (!zC && z11) {
            z12 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zC ? null : this.f12019s;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.f12020t;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.E;
        zzcei zzceiVar = this.f12015o;
        D0(new AdOverlayInfoParcel(zzaVar, zzoVar, zzzVar, zzceiVar, z10, i10, zzceiVar.k(), z12 ? null : this.f12025y));
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.f12019s;
        if (zzaVar != null) {
            zzaVar.w0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void z0(boolean z10) {
        synchronized (this.f12018r) {
            this.C = true;
        }
    }
}
