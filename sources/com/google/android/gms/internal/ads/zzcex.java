package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcex extends FrameLayout implements zzcei {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcei f12047o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcay f12048p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicBoolean f12049q;

    /* JADX WARN: Multi-variable type inference failed */
    public zzcex(zzcei zzceiVar) {
        super(zzceiVar.getContext());
        this.f12049q = new AtomicBoolean();
        this.f12047o = zzceiVar;
        this.f12048p = new zzcay(zzceiVar.H(), this, this);
        addView((View) zzceiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void A() {
        this.f12047o.A();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean B() {
        return this.f12047o.B();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final String B0() {
        return this.f12047o.B0();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void C() {
        this.f12047o.C();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void C0(zzcfx zzcfxVar) {
        this.f12047o.C0(zzcfxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void D(boolean z10, int i10, String str, boolean z11) {
        this.f12047o.D(z10, i10, str, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void D0(boolean z10, int i10, String str, String str2, boolean z11) {
        this.f12047o.D0(z10, i10, str, str2, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final IObjectWrapper E() {
        return this.f12047o.E();
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void E0(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z10) {
        this.f12047o.E0(zzcVar, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final void F(zzcfe zzcfeVar) {
        this.f12047o.F(zzcfeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void F0() {
        this.f12047o.F0();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void G(int i10) {
        this.f12048p.f(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void G0(boolean z10) {
        this.f12047o.G0(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final Context H() {
        return this.f12047o.H();
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        this.f12047o.H0(zzateVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void I0(String str, Predicate predicate) {
        this.f12047o.I0(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final zzcfv J() {
        return ((zzcfb) this.f12047o).e1();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean J0() {
        return this.f12049q.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void K(zzbdk zzbdkVar) {
        this.f12047o.K(zzbdkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void K0() {
        setBackgroundColor(0);
        this.f12047o.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfs
    public final View L() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final String L0() {
        return this.f12047o.L0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfp
    public final zzcfx M() {
        return this.f12047o.M();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void N(boolean z10) {
        this.f12047o.N(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void N0(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.f12047o.N0(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void O(int i10) {
        this.f12047o.O(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void P() {
        TextView textView = new TextView(getContext());
        com.google.android.gms.ads.internal.zzt.r();
        textView.setText(com.google.android.gms.ads.internal.util.zzs.T());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void P0(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void Q() {
        this.f12047o.Q();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void Q0(String str, String str2, String str3) {
        this.f12047o.Q0(str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void R(boolean z10) {
        this.f12047o.R(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void S(IObjectWrapper iObjectWrapper) {
        this.f12047o.S(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void S0(boolean z10) {
        this.f12047o.S0(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfq
    public final zzapw T() {
        return this.f12047o.T();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean U() {
        return this.f12047o.U();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final WebView V() {
        return (WebView) this.f12047o;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void W(zzaus zzausVar) {
        this.f12047o.W(zzausVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void W0(boolean z10, int i10, boolean z11) {
        this.f12047o.W0(z10, i10, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean X(boolean z10, int i10) {
        if (!this.f12049q.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F0)).booleanValue()) {
            return false;
        }
        if (this.f12047o.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.f12047o.getParent()).removeView((View) this.f12047o);
        }
        this.f12047o.X(z10, i10);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void X0(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final com.google.android.gms.ads.internal.overlay.zzl Y() {
        return this.f12047o.Y();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void Y0(boolean z10, long j10) {
        this.f12047o.Y0(z10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void Z(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.f12047o.Z(zzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void Z0(String str, JSONObject jSONObject) {
        ((zzcfb) this.f12047o).n(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean a0() {
        return this.f12047o.a0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final zzfut a1() {
        return this.f12047o.a1();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final String b() {
        return this.f12047o.b();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzccu b0(String str) {
        return this.f12047o.b0(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void b1(int i10) {
        this.f12047o.b1(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final int c() {
        return this.f12047o.c();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void c0(String str, zzbhp zzbhpVar) {
        this.f12047o.c0(str, zzbhpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean canGoBack() {
        return this.f12047o.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void destroy() {
        final IObjectWrapper iObjectWrapperE = E();
        if (iObjectWrapperE == null) {
            this.f12047o.destroy();
            return;
        }
        zzfkr zzfkrVar = com.google.android.gms.ads.internal.util.zzs.f6190i;
        zzfkrVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcev
            @Override // java.lang.Runnable
            public final void run() {
                IObjectWrapper iObjectWrapper = iObjectWrapperE;
                com.google.android.gms.ads.internal.zzt.a();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C4)).booleanValue() && zzffi.b()) {
                    Object objT1 = ObjectWrapper.t1(iObjectWrapper);
                    if (objT1 instanceof zzffk) {
                        ((zzffk) objT1).c();
                    }
                }
            }
        });
        final zzcei zzceiVar = this.f12047o;
        zzceiVar.getClass();
        zzfkrVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcew
            @Override // java.lang.Runnable
            public final void run() {
                zzceiVar.destroy();
            }
        }, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.D4)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final int e() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10371t3)).booleanValue() ? this.f12047o.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void e0(String str, zzbhp zzbhpVar) {
        this.f12047o.e0(str, zzbhpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final int f() {
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10371t3)).booleanValue() ? this.f12047o.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void f0() {
        this.f12048p.d();
        this.f12047o.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcbj
    public final Activity g() {
        return this.f12047o.g();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcff
    public final zzeyf g0() {
        return this.f12047o.g0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void goBack() {
        this.f12047o.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final com.google.android.gms.ads.internal.zza h() {
        return this.f12047o.h();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final WebViewClient h0() {
        return this.f12047o.h0();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzbbg i() {
        return this.f12047o.i();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void i0(boolean z10) {
        this.f12047o.i0(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void j0(zzeyc zzeycVar, zzeyf zzeyfVar) {
        this.f12047o.j0(zzeycVar, zzeyfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfr, com.google.android.gms.internal.ads.zzcbj
    public final zzbzg k() {
        return this.f12047o.k();
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void k0() {
        this.f12047o.k0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final zzbbh l() {
        return this.f12047o.l();
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void l0(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzeaf zzeafVar, zzdpi zzdpiVar, zzfdk zzfdkVar, String str, String str2, int i10) {
        this.f12047o.l0(zzbrVar, zzeafVar, zzdpiVar, zzfdkVar, str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void loadData(String str, String str2, String str3) {
        this.f12047o.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f12047o.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void loadUrl(String str) {
        this.f12047o.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzcay m() {
        return this.f12048p;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void m0() {
        this.f12047o.m0();
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void n(String str, String str2) {
        this.f12047o.n("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void n1() {
        zzcei zzceiVar = this.f12047o;
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzt.t().e()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzt.t().a()));
        zzcfb zzcfbVar = (zzcfb) zzceiVar;
        map.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.util.zzab.b(zzcfbVar.getContext())));
        zzcfbVar.v0("volume", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void o(String str) {
        ((zzcfb) this.f12047o).j1(str);
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final void o0() {
        this.f12047o.o0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void onPause() {
        this.f12048p.e();
        this.f12047o.onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void onResume() {
        this.f12047o.onResume();
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        zzcei zzceiVar = this.f12047o;
        if (zzceiVar != null) {
            zzceiVar.p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void p0(boolean z10) {
        this.f12047o.p0(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
        zzcei zzceiVar = this.f12047o;
        if (zzceiVar != null) {
            zzceiVar.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final com.google.android.gms.ads.internal.overlay.zzl q0() {
        return this.f12047o.q0();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final zzcfe r() {
        return this.f12047o.r();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final zzbdk s() {
        return this.f12047o.s();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void s0(Context context) {
        this.f12047o.s0(context);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcei
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f12047o.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcei
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f12047o.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f12047o.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f12047o.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean t() {
        return this.f12047o.t();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcdz
    public final zzeyc u() {
        return this.f12047o.u();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void u0(boolean z10) {
        this.f12047o.u0(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void v() {
        this.f12047o.v();
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void v0(String str, Map map) {
        this.f12047o.v0(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void w(String str, JSONObject jSONObject) {
        this.f12047o.w(str, jSONObject);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        zzcei zzceiVar = this.f12047o;
        if (zzceiVar != null) {
            zzceiVar.w0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean x() {
        return this.f12047o.x();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void x0(int i10) {
        this.f12047o.x0(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final void y(String str, zzccu zzccuVar) {
        this.f12047o.y(str, zzccuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void y0(zzbdi zzbdiVar) {
        this.f12047o.y0(zzbdiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final zzaus z() {
        return this.f12047o.z();
    }
}
