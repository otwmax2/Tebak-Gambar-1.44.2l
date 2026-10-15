package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.Collections;
import java.util.List;
import o.g;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzdq f14634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzbdp f14635c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f14636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f14637e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzel f14639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bundle f14640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzcei f14641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzcei f14642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzcei f14643k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private IObjectWrapper f14644l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f14645m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzfut f14646n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f14647o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IObjectWrapper f14648p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private double f14649q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzbdx f14650r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzbdx f14651s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f14652t;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f14655w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f14656x;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final g f14653u = new g();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final g f14654v = new g();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f14638f = Collections.emptyList();

    public static zzdgi E(zzbnq zzbnqVar) {
        try {
            zzdgh zzdghVarI = I(zzbnqVar.A9(), null);
            zzbdp zzbdpVarRa = zzbnqVar.Ra();
            View view = (View) K(zzbnqVar.Ta());
            String strM = zzbnqVar.m();
            List listVa = zzbnqVar.Va();
            String strL = zzbnqVar.l();
            Bundle bundleC = zzbnqVar.c();
            String strK = zzbnqVar.k();
            View view2 = (View) K(zzbnqVar.Ua());
            IObjectWrapper iObjectWrapperJ = zzbnqVar.j();
            String strR = zzbnqVar.r();
            String strN = zzbnqVar.n();
            double dB = zzbnqVar.b();
            zzbdx zzbdxVarSa = zzbnqVar.Sa();
            zzdgi zzdgiVar = new zzdgi();
            zzdgiVar.f14633a = 2;
            zzdgiVar.f14634b = zzdghVarI;
            zzdgiVar.f14635c = zzbdpVarRa;
            zzdgiVar.f14636d = view;
            zzdgiVar.w("headline", strM);
            zzdgiVar.f14637e = listVa;
            zzdgiVar.w(SDKConstants.PARAM_A2U_BODY, strL);
            zzdgiVar.f14640h = bundleC;
            zzdgiVar.w("call_to_action", strK);
            zzdgiVar.f14645m = view2;
            zzdgiVar.f14648p = iObjectWrapperJ;
            zzdgiVar.w("store", strR);
            zzdgiVar.w("price", strN);
            zzdgiVar.f14649q = dB;
            zzdgiVar.f14650r = zzbdxVarSa;
            return zzdgiVar;
        } catch (RemoteException e10) {
            zzbza.h("Failed to get native ad from app install ad mapper", e10);
            return null;
        }
    }

    public static zzdgi F(zzbnr zzbnrVar) {
        try {
            zzdgh zzdghVarI = I(zzbnrVar.A9(), null);
            zzbdp zzbdpVarRa = zzbnrVar.Ra();
            View view = (View) K(zzbnrVar.g());
            String strM = zzbnrVar.m();
            List listVa = zzbnrVar.Va();
            String strL = zzbnrVar.l();
            Bundle bundleB = zzbnrVar.b();
            String strK = zzbnrVar.k();
            View view2 = (View) K(zzbnrVar.Ta());
            IObjectWrapper iObjectWrapperUa = zzbnrVar.Ua();
            String strJ = zzbnrVar.j();
            zzbdx zzbdxVarSa = zzbnrVar.Sa();
            zzdgi zzdgiVar = new zzdgi();
            zzdgiVar.f14633a = 1;
            zzdgiVar.f14634b = zzdghVarI;
            zzdgiVar.f14635c = zzbdpVarRa;
            zzdgiVar.f14636d = view;
            zzdgiVar.w("headline", strM);
            zzdgiVar.f14637e = listVa;
            zzdgiVar.w(SDKConstants.PARAM_A2U_BODY, strL);
            zzdgiVar.f14640h = bundleB;
            zzdgiVar.w("call_to_action", strK);
            zzdgiVar.f14645m = view2;
            zzdgiVar.f14648p = iObjectWrapperUa;
            zzdgiVar.w(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, strJ);
            zzdgiVar.f14651s = zzbdxVarSa;
            return zzdgiVar;
        } catch (RemoteException e10) {
            zzbza.h("Failed to get native ad from content ad mapper", e10);
            return null;
        }
    }

    public static zzdgi G(zzbnq zzbnqVar) {
        try {
            return J(I(zzbnqVar.A9(), null), zzbnqVar.Ra(), (View) K(zzbnqVar.Ta()), zzbnqVar.m(), zzbnqVar.Va(), zzbnqVar.l(), zzbnqVar.c(), zzbnqVar.k(), (View) K(zzbnqVar.Ua()), zzbnqVar.j(), zzbnqVar.r(), zzbnqVar.n(), zzbnqVar.b(), zzbnqVar.Sa(), null, 0.0f);
        } catch (RemoteException e10) {
            zzbza.h("Failed to get native ad assets from app install ad mapper", e10);
            return null;
        }
    }

    public static zzdgi H(zzbnr zzbnrVar) {
        try {
            return J(I(zzbnrVar.A9(), null), zzbnrVar.Ra(), (View) K(zzbnrVar.g()), zzbnrVar.m(), zzbnrVar.Va(), zzbnrVar.l(), zzbnrVar.b(), zzbnrVar.k(), (View) K(zzbnrVar.Ta()), zzbnrVar.Ua(), null, null, -1.0d, zzbnrVar.Sa(), zzbnrVar.j(), 0.0f);
        } catch (RemoteException e10) {
            zzbza.h("Failed to get native ad assets from content ad mapper", e10);
            return null;
        }
    }

    private static zzdgh I(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbnu zzbnuVar) {
        if (zzdqVar == null) {
            return null;
        }
        return new zzdgh(zzdqVar, zzbnuVar);
    }

    private static zzdgi J(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbdp zzbdpVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d10, zzbdx zzbdxVar, String str6, float f10) {
        zzdgi zzdgiVar = new zzdgi();
        zzdgiVar.f14633a = 6;
        zzdgiVar.f14634b = zzdqVar;
        zzdgiVar.f14635c = zzbdpVar;
        zzdgiVar.f14636d = view;
        zzdgiVar.w("headline", str);
        zzdgiVar.f14637e = list;
        zzdgiVar.w(SDKConstants.PARAM_A2U_BODY, str2);
        zzdgiVar.f14640h = bundle;
        zzdgiVar.w("call_to_action", str3);
        zzdgiVar.f14645m = view2;
        zzdgiVar.f14648p = iObjectWrapper;
        zzdgiVar.w("store", str4);
        zzdgiVar.w("price", str5);
        zzdgiVar.f14649q = d10;
        zzdgiVar.f14650r = zzbdxVar;
        zzdgiVar.w(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, str6);
        zzdgiVar.q(f10);
        return zzdgiVar;
    }

    private static Object K(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.t1(iObjectWrapper);
    }

    public static zzdgi c0(zzbnu zzbnuVar) {
        try {
            return J(I(zzbnuVar.h(), zzbnuVar), zzbnuVar.i(), (View) K(zzbnuVar.l()), zzbnuVar.q(), zzbnuVar.t(), zzbnuVar.r(), zzbnuVar.g(), zzbnuVar.p(), (View) K(zzbnuVar.k()), zzbnuVar.m(), zzbnuVar.v(), zzbnuVar.x(), zzbnuVar.b(), zzbnuVar.j(), zzbnuVar.n(), zzbnuVar.c());
        } catch (RemoteException e10) {
            zzbza.h("Failed to get native ad assets from unified ad mapper", e10);
            return null;
        }
    }

    public final synchronized double A() {
        return this.f14649q;
    }

    public final synchronized void B(zzcei zzceiVar) {
        this.f14641i = zzceiVar;
    }

    public final synchronized void C(View view) {
        this.f14647o = view;
    }

    public final synchronized void D(IObjectWrapper iObjectWrapper) {
        this.f14644l = iObjectWrapper;
    }

    public final synchronized float L() {
        return this.f14655w;
    }

    public final synchronized int M() {
        return this.f14633a;
    }

    public final synchronized Bundle N() {
        if (this.f14640h == null) {
            this.f14640h = new Bundle();
        }
        return this.f14640h;
    }

    public final synchronized View O() {
        return this.f14636d;
    }

    public final synchronized View P() {
        return this.f14645m;
    }

    public final synchronized View Q() {
        return this.f14647o;
    }

    public final synchronized g R() {
        return this.f14653u;
    }

    public final synchronized g S() {
        return this.f14654v;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzdq T() {
        return this.f14634b;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzel U() {
        return this.f14639g;
    }

    public final synchronized zzbdp V() {
        return this.f14635c;
    }

    public final zzbdx W() {
        List list = this.f14637e;
        if (list != null && !list.isEmpty()) {
            Object obj = this.f14637e.get(0);
            if (obj instanceof IBinder) {
                return zzbdw.Sa((IBinder) obj);
            }
        }
        return null;
    }

    public final synchronized zzbdx X() {
        return this.f14650r;
    }

    public final synchronized zzbdx Y() {
        return this.f14651s;
    }

    public final synchronized zzcei Z() {
        return this.f14642j;
    }

    public final synchronized String a() {
        return e("headline");
    }

    public final synchronized zzcei a0() {
        return this.f14643k;
    }

    public final synchronized String b() {
        return this.f14656x;
    }

    public final synchronized zzcei b0() {
        return this.f14641i;
    }

    public final synchronized String c() {
        return e("price");
    }

    public final synchronized String d() {
        return e("store");
    }

    public final synchronized IObjectWrapper d0() {
        return this.f14648p;
    }

    public final synchronized String e(String str) {
        return (String) this.f14654v.get(str);
    }

    public final synchronized IObjectWrapper e0() {
        return this.f14644l;
    }

    public final synchronized List f() {
        return this.f14637e;
    }

    public final synchronized zzfut f0() {
        return this.f14646n;
    }

    public final synchronized List g() {
        return this.f14638f;
    }

    public final synchronized String g0() {
        return e(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER);
    }

    public final synchronized void h() {
        zzcei zzceiVar = this.f14641i;
        if (zzceiVar != null) {
            zzceiVar.destroy();
            this.f14641i = null;
        }
        zzcei zzceiVar2 = this.f14642j;
        if (zzceiVar2 != null) {
            zzceiVar2.destroy();
            this.f14642j = null;
        }
        zzcei zzceiVar3 = this.f14643k;
        if (zzceiVar3 != null) {
            zzceiVar3.destroy();
            this.f14643k = null;
        }
        this.f14644l = null;
        this.f14653u.clear();
        this.f14654v.clear();
        this.f14634b = null;
        this.f14635c = null;
        this.f14636d = null;
        this.f14637e = null;
        this.f14640h = null;
        this.f14645m = null;
        this.f14647o = null;
        this.f14648p = null;
        this.f14650r = null;
        this.f14651s = null;
        this.f14652t = null;
    }

    public final synchronized String h0() {
        return e(SDKConstants.PARAM_A2U_BODY);
    }

    public final synchronized void i(zzbdp zzbdpVar) {
        this.f14635c = zzbdpVar;
    }

    public final synchronized String i0() {
        return e("call_to_action");
    }

    public final synchronized void j(String str) {
        this.f14652t = str;
    }

    public final synchronized String j0() {
        return this.f14652t;
    }

    public final synchronized void k(com.google.android.gms.ads.internal.client.zzel zzelVar) {
        this.f14639g = zzelVar;
    }

    public final synchronized void l(zzbdx zzbdxVar) {
        this.f14650r = zzbdxVar;
    }

    public final synchronized void m(String str, zzbdj zzbdjVar) {
        if (zzbdjVar == null) {
            this.f14653u.remove(str);
        } else {
            this.f14653u.put(str, zzbdjVar);
        }
    }

    public final synchronized void n(zzcei zzceiVar) {
        this.f14642j = zzceiVar;
    }

    public final synchronized void o(List list) {
        this.f14637e = list;
    }

    public final synchronized void p(zzbdx zzbdxVar) {
        this.f14651s = zzbdxVar;
    }

    public final synchronized void q(float f10) {
        this.f14655w = f10;
    }

    public final synchronized void r(List list) {
        this.f14638f = list;
    }

    public final synchronized void s(zzcei zzceiVar) {
        this.f14643k = zzceiVar;
    }

    public final synchronized void t(zzfut zzfutVar) {
        this.f14646n = zzfutVar;
    }

    public final synchronized void u(String str) {
        this.f14656x = str;
    }

    public final synchronized void v(double d10) {
        this.f14649q = d10;
    }

    public final synchronized void w(String str, String str2) {
        if (str2 == null) {
            this.f14654v.remove(str);
        } else {
            this.f14654v.put(str, str2);
        }
    }

    public final synchronized void x(int i10) {
        this.f14633a = i10;
    }

    public final synchronized void y(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.f14634b = zzdqVar;
    }

    public final synchronized void z(View view) {
        this.f14645m = view;
    }
}
