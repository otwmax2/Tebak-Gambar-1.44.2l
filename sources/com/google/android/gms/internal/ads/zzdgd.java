package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgd extends zzcqm {
    public static final zzfqk H = zzfqk.B("3010", "3008", "1005", "1009", "2011", "2007");
    private final Context A;
    private final zzdgf B;
    private final zzeie C;
    private final Map D;
    private final List E;
    private final zzath F;
    private zzfvc G;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f14591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzdgi f14592j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzdgq f14593k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzdhi f14594l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzdgn f14595m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzdgt f14596n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgws f14597o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzgws f14598p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzgws f14599q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzgws f14600r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzgws f14601s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzdie f14602t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f14603u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f14604v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f14605w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzbwn f14606x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zzapw f14607y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzbzg f14608z;

    public zzdgd(zzcql zzcqlVar, Executor executor, zzdgi zzdgiVar, zzdgq zzdgqVar, zzdhi zzdhiVar, zzdgn zzdgnVar, zzdgt zzdgtVar, zzgws zzgwsVar, zzgws zzgwsVar2, zzgws zzgwsVar3, zzgws zzgwsVar4, zzgws zzgwsVar5, zzbwn zzbwnVar, zzapw zzapwVar, zzbzg zzbzgVar, Context context, zzdgf zzdgfVar, zzeie zzeieVar, zzath zzathVar) {
        super(zzcqlVar);
        this.f14591i = executor;
        this.f14592j = zzdgiVar;
        this.f14593k = zzdgqVar;
        this.f14594l = zzdhiVar;
        this.f14595m = zzdgnVar;
        this.f14596n = zzdgtVar;
        this.f14597o = zzgwsVar;
        this.f14598p = zzgwsVar2;
        this.f14599q = zzgwsVar3;
        this.f14600r = zzgwsVar4;
        this.f14601s = zzgwsVar5;
        this.f14606x = zzbwnVar;
        this.f14607y = zzapwVar;
        this.f14608z = zzbzgVar;
        this.A = context;
        this.B = zzdgfVar;
        this.C = zzeieVar;
        this.D = new HashMap();
        this.E = new ArrayList();
        this.F = zzathVar;
    }

    public static boolean D(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.X8)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        com.google.android.gms.ads.internal.zzt.r();
        long jR = com.google.android.gms.ads.internal.util.zzs.R(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            if (jR >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y8)).intValue()) {
                return true;
            }
        }
        return false;
    }

    private final synchronized View F(Map map) {
        if (map == null) {
            return null;
        }
        zzfqk zzfqkVar = H;
        int size = zzfqkVar.size();
        int i10 = 0;
        while (i10 < size) {
            WeakReference weakReference = (WeakReference) map.get((String) zzfqkVar.get(i10));
            i10++;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
        }
        return null;
    }

    private final synchronized ImageView.ScaleType G() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10331p7)).booleanValue()) {
            return null;
        }
        zzdie zzdieVar = this.f14602t;
        if (zzdieVar == null) {
            zzbza.b("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper iObjectWrapperH = zzdieVar.h();
        if (iObjectWrapperH != null) {
            return (ImageView.ScaleType) ObjectWrapper.t1(iObjectWrapperH);
        }
        return zzdhi.f14733k;
    }

    private final void I(String str, boolean z10) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I4)).booleanValue()) {
            Y("Google", true);
            return;
        }
        zzfut zzfutVarF0 = this.f14592j.f0();
        if (zzfutVarF0 == null) {
            return;
        }
        this.G = zzfvc.D();
        zzfuj.q(zzfutVarF0, new zzdgc(this, "Google", true), this.f14591i);
    }

    private final synchronized void J(View view, Map map, Map map2) {
        this.f14594l.d(this.f14602t);
        this.f14593k.b(view, map, map2, G());
        this.f14604v = true;
    }

    private final void K(View view, IObjectWrapper iObjectWrapper) {
        zzcei zzceiVarA0 = this.f14592j.a0();
        if (!this.f14595m.d() || iObjectWrapper == null || zzceiVarA0 == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.a().b(iObjectWrapper, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final synchronized void d0(zzdie zzdieVar) {
        Iterator<String> itKeys;
        View view;
        zzaps zzapsVarC;
        if (this.f14603u) {
            return;
        }
        this.f14602t = zzdieVar;
        this.f14594l.e(zzdieVar);
        this.f14593k.i(zzdieVar.c(), zzdieVar.l(), zzdieVar.k(), zzdieVar, zzdieVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10260j2)).booleanValue() && (zzapsVarC = this.f14607y.c()) != null) {
            zzapsVarC.a(zzdieVar.c());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B1)).booleanValue()) {
            zzeyc zzeycVar = this.f13772b;
            if (zzeycVar.f17655l0 && (itKeys = zzeycVar.f17653k0.keys()) != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    WeakReference weakReference = (WeakReference) this.f14602t.j().get(next);
                    this.D.put(next, Boolean.FALSE);
                    if (weakReference != null && (view = (View) weakReference.get()) != null) {
                        zzatg zzatgVar = new zzatg(this.A, view);
                        this.E.add(zzatgVar);
                        zzatgVar.c(new zzdgb(this, next));
                    }
                }
            }
        }
        if (zzdieVar.g() != null) {
            zzdieVar.g().c(this.f14606x);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final void e0(zzdie zzdieVar) {
        this.f14593k.c(zzdieVar.c(), zzdieVar.j());
        if (zzdieVar.f() != null) {
            zzdieVar.f().setClickable(false);
            zzdieVar.f().removeAllViews();
        }
        if (zzdieVar.g() != null) {
            zzdieVar.g().e(this.f14606x);
        }
        this.f14602t = null;
    }

    public static /* synthetic */ void V(zzdgd zzdgdVar) {
        try {
            zzdgi zzdgiVar = zzdgdVar.f14592j;
            int iM = zzdgiVar.M();
            if (iM == 1) {
                if (zzdgdVar.f14596n.b() != null) {
                    zzdgdVar.I("Google", true);
                    zzdgdVar.f14596n.b().z1((zzbeo) zzdgdVar.f14597o.zzb());
                    return;
                }
                return;
            }
            if (iM == 2) {
                if (zzdgdVar.f14596n.a() != null) {
                    zzdgdVar.I("Google", true);
                    zzdgdVar.f14596n.a().d4((zzbem) zzdgdVar.f14598p.zzb());
                    return;
                }
                return;
            }
            if (iM == 3) {
                if (zzdgdVar.f14596n.d(zzdgiVar.j0()) != null) {
                    if (zzdgdVar.f14592j.b0() != null) {
                        zzdgdVar.Y("Google", true);
                    }
                    zzdgdVar.f14596n.d(zzdgdVar.f14592j.j0()).q9((zzber) zzdgdVar.f14601s.zzb());
                    return;
                }
                return;
            }
            if (iM == 6) {
                if (zzdgdVar.f14596n.f() != null) {
                    zzdgdVar.I("Google", true);
                    zzdgdVar.f14596n.f().t9((zzbfu) zzdgdVar.f14599q.zzb());
                    return;
                }
                return;
            }
            if (iM != 7) {
                zzbza.d("Wrong native template id!");
                return;
            }
            zzdgt zzdgtVar = zzdgdVar.f14596n;
            if (zzdgtVar.g() != null) {
                zzdgtVar.g().A7((zzbka) zzdgdVar.f14600r.zzb());
            }
        } catch (RemoteException e10) {
            zzbza.e("RemoteException when notifyAdLoad is called", e10);
        }
    }

    public final synchronized boolean A() {
        return this.f14593k.B();
    }

    public final synchronized boolean B() {
        return this.f14593k.R();
    }

    public final boolean C() {
        return this.f14595m.d();
    }

    public final synchronized boolean E(Bundle bundle) {
        if (this.f14604v) {
            return true;
        }
        boolean zD = this.f14593k.d(bundle);
        this.f14604v = zD;
        return zD;
    }

    public final synchronized int H() {
        return this.f14593k.zza();
    }

    public final zzdgf N() {
        return this.B;
    }

    public final String R() {
        return this.f14595m.b();
    }

    public final synchronized JSONObject T(View view, Map map, Map map2) {
        return this.f14593k.m(view, map, map2, G());
    }

    public final synchronized JSONObject U(View view, Map map, Map map2) {
        return this.f14593k.s(view, map, map2, G());
    }

    public final void W(View view) {
        IObjectWrapper iObjectWrapperE0 = this.f14592j.e0();
        if (!this.f14595m.d() || iObjectWrapperE0 == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.a();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() && zzffi.b()) {
            Object objT1 = ObjectWrapper.t1(iObjectWrapperE0);
            if (objT1 instanceof zzffk) {
                ((zzffk) objT1).b(view, zzffq.NOT_VISIBLE, "Ad overlay");
            }
        }
    }

    public final synchronized void X() {
        this.f14593k.f();
    }

    public final void Y(String str, boolean z10) {
        String str2;
        zzear zzearVar;
        zzeas zzeasVar;
        if (!this.f14595m.d() || TextUtils.isEmpty(str)) {
            return;
        }
        zzdgi zzdgiVar = this.f14592j;
        zzcei zzceiVarA0 = zzdgiVar.a0();
        zzcei zzceiVarB0 = zzdgiVar.b0();
        if (zzceiVarA0 == null && zzceiVarB0 == null) {
            zzbza.g("Omid display and video webview are null. Skipping initialization.");
            return;
        }
        boolean z11 = false;
        boolean z12 = zzceiVarA0 != null;
        boolean z13 = zzceiVarB0 != null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G4)).booleanValue()) {
            this.f14595m.a();
            int iB = this.f14595m.a().b();
            int i10 = iB - 1;
            if (i10 != 0) {
                if (i10 != 1) {
                    zzbza.g("Unknown omid media type: " + (iB != 1 ? iB != 2 ? "UNKNOWN" : "DISPLAY" : ShareConstants.VIDEO_URL) + ". Not initializing Omid.");
                    return;
                }
                if (zzceiVarA0 == null) {
                    zzbza.g("Omid media type was display but there was no display webview.");
                    return;
                } else {
                    z11 = true;
                    z13 = false;
                }
            } else {
                if (zzceiVarB0 == null) {
                    zzbza.g("Omid media type was video but there was no video webview.");
                    return;
                }
                z13 = true;
            }
        } else {
            z11 = z12;
        }
        if (z11) {
            str2 = null;
        } else {
            str2 = "javascript";
            zzceiVarA0 = zzceiVarB0;
        }
        String str3 = str2;
        zzceiVarA0.V();
        if (!com.google.android.gms.ads.internal.zzt.a().d(this.A)) {
            zzbza.g("Failed to initialize omid in InternalNativeAd");
            return;
        }
        zzbzg zzbzgVar = this.f14608z;
        String str4 = zzbzgVar.f11606p + "." + zzbzgVar.f11607q;
        if (z13) {
            zzearVar = zzear.VIDEO;
            zzeasVar = zzeas.DEFINED_BY_JAVASCRIPT;
        } else {
            zzearVar = zzear.NATIVE_DISPLAY;
            zzeasVar = this.f14592j.M() == 3 ? zzeas.UNSPECIFIED : zzeas.ONE_PIXEL;
        }
        IObjectWrapper iObjectWrapperA = com.google.android.gms.ads.internal.zzt.a().a(str4, zzceiVarA0.V(), BuildConfig.FLAVOR, "javascript", str3, str, zzeasVar, zzearVar, this.f13772b.f17657m0);
        if (iObjectWrapperA == null) {
            zzbza.g("Failed to create omid session in InternalNativeAd");
            return;
        }
        this.f14592j.D(iObjectWrapperA);
        zzceiVarA0.S(iObjectWrapperA);
        if (z13) {
            com.google.android.gms.ads.internal.zzt.a().b(iObjectWrapperA, zzceiVarB0.L());
            this.f14605w = true;
        }
        if (z10) {
            com.google.android.gms.ads.internal.zzt.a().x0(iObjectWrapperA);
            zzceiVarA0.v0("onSdkLoaded", new o.a());
        }
    }

    final /* synthetic */ void Z() {
        this.f14593k.g();
        this.f14592j.h();
    }

    @Override // com.google.android.gms.internal.ads.zzcqm
    public final synchronized void a() {
        this.f14603u = true;
        this.f14591i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdga
            @Override // java.lang.Runnable
            public final void run() {
                this.f14586o.Z();
            }
        });
        super.a();
    }

    final /* synthetic */ void a0(View view, boolean z10, int i10) {
        this.f14593k.q(view, this.f14602t.c(), this.f14602t.j(), this.f14602t.l(), z10, G(), i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcqm
    public final void b() {
        this.f14591i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfw
            @Override // java.lang.Runnable
            public final void run() {
                zzdgd.V(this.f14558o);
            }
        });
        if (this.f14592j.M() != 7) {
            Executor executor = this.f14591i;
            final zzdgq zzdgqVar = this.f14593k;
            zzdgqVar.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfx
                @Override // java.lang.Runnable
                public final void run() {
                    zzdgqVar.n();
                }
            });
        }
        super.b();
    }

    final /* synthetic */ void b0(boolean z10) {
        this.f14593k.q(null, this.f14602t.c(), this.f14602t.j(), this.f14602t.l(), z10, G(), 0);
    }

    final /* synthetic */ void c0(View view) {
        K(view, this.f14592j.e0());
    }

    public final synchronized void h(View view, Map map, Map map2, boolean z10) {
        if (this.f14604v) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B1)).booleanValue() && this.f13772b.f17655l0) {
            Iterator it = this.D.keySet().iterator();
            while (it.hasNext()) {
                if (!((Boolean) this.D.get((String) it.next())).booleanValue()) {
                    return;
                }
            }
        }
        if (!z10) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10382u3)).booleanValue() && map != null) {
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                    if (view2 != null && D(view2)) {
                        J(view, map, map2);
                        return;
                    }
                }
            }
            return;
        }
        View viewF = F(map);
        if (viewF == null) {
            J(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10393v3)).booleanValue()) {
            if (D(viewF)) {
                J(view, map, map2);
                return;
            }
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10404w3)).booleanValue()) {
            J(view, map, map2);
            return;
        }
        Rect rect = new Rect();
        if (viewF.getGlobalVisibleRect(rect, null) && viewF.getHeight() == rect.height() && viewF.getWidth() == rect.width()) {
            J(view, map, map2);
        }
    }

    public final synchronized void i(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.f14593k.r(zzcwVar);
    }

    public final synchronized void j(View view, View view2, Map map, Map map2, boolean z10) {
        this.f14594l.c(this.f14602t);
        this.f14593k.j(view, view2, map, map2, z10, G());
        if (this.f14605w) {
            zzdgi zzdgiVar = this.f14592j;
            if (zzdgiVar.b0() != null) {
                zzdgiVar.b0().v0("onSdkAdUserInteractionClick", new o.a());
            }
        }
    }

    public final synchronized void k(final View view, final int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue()) {
            zzdie zzdieVar = this.f14602t;
            if (zzdieVar == null) {
                zzbza.b("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z10 = zzdieVar instanceof zzdhc;
                this.f14591i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdft
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f14550o.a0(view, z10, i10);
                    }
                });
            }
        }
    }

    public final synchronized void l(String str) {
        this.f14593k.m0(str);
    }

    public final synchronized void m(Bundle bundle) {
        this.f14593k.k(bundle);
    }

    public final synchronized void n() {
        zzdie zzdieVar = this.f14602t;
        if (zzdieVar == null) {
            zzbza.b("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z10 = zzdieVar instanceof zzdhc;
            this.f14591i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfy
                @Override // java.lang.Runnable
                public final void run() {
                    this.f14560o.b0(z10);
                }
            });
        }
    }

    public final synchronized void o() {
        if (this.f14604v) {
            return;
        }
        this.f14593k.p();
    }

    public final void p(final View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I4)).booleanValue()) {
            K(view, this.f14592j.e0());
            return;
        }
        zzfvc zzfvcVar = this.G;
        if (zzfvcVar == null) {
            return;
        }
        zzfvcVar.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfu
            @Override // java.lang.Runnable
            public final void run() {
                this.f14554o.c0(view);
            }
        }, this.f14591i);
    }

    public final synchronized void q(View view, MotionEvent motionEvent, View view2) {
        this.f14593k.a(view, motionEvent, view2);
    }

    public final synchronized void r(Bundle bundle) {
        this.f14593k.l(bundle);
    }

    public final synchronized void s(View view) {
        this.f14593k.h(view);
    }

    public final synchronized void t() {
        this.f14593k.t();
    }

    public final synchronized void u(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.f14593k.o(zzcsVar);
    }

    public final synchronized void v(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.C.a(zzdgVar);
    }

    public final synchronized void w(zzbfr zzbfrVar) {
        this.f14593k.u(zzbfrVar);
    }

    public final synchronized void x(final zzdie zzdieVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10435z1)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfz
                @Override // java.lang.Runnable
                public final void run() {
                    this.f14562o.d0(zzdieVar);
                }
            });
        } else {
            d0(zzdieVar);
        }
    }

    public final synchronized void y(final zzdie zzdieVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10435z1)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfv
                @Override // java.lang.Runnable
                public final void run() {
                    this.f14556o.e0(zzdieVar);
                }
            });
        } else {
            e0(zzdieVar);
        }
    }

    public final boolean z() {
        return this.f14595m.e();
    }
}
