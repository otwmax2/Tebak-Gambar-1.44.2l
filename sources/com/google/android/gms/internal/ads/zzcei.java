package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public interface zzcei extends com.google.android.gms.ads.internal.client.zza, zzdcc, zzcdz, zzbki, zzcff, zzcfj, zzbkv, zzatf, zzcfn, com.google.android.gms.ads.internal.zzl, zzcfq, zzcfr, zzcbj, zzcfs {
    void A();

    boolean B();

    String B0();

    void C0(zzcfx zzcfxVar);

    IObjectWrapper E();

    @Override // com.google.android.gms.internal.ads.zzcbj
    void F(zzcfe zzcfeVar);

    void F0();

    void G0(boolean z10);

    Context H();

    void I0(String str, Predicate predicate);

    zzcfv J();

    boolean J0();

    void K(zzbdk zzbdkVar);

    void K0();

    @Override // com.google.android.gms.internal.ads.zzcfs
    View L();

    @Override // com.google.android.gms.internal.ads.zzcfp
    zzcfx M();

    void N(boolean z10);

    void N0(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    void P();

    void Q();

    void Q0(String str, String str2, String str3);

    void R(boolean z10);

    void S(IObjectWrapper iObjectWrapper);

    void S0(boolean z10);

    @Override // com.google.android.gms.internal.ads.zzcfq
    zzapw T();

    boolean U();

    WebView V();

    void W(zzaus zzausVar);

    boolean X(boolean z10, int i10);

    com.google.android.gms.ads.internal.overlay.zzl Y();

    void Z(com.google.android.gms.ads.internal.overlay.zzl zzlVar);

    boolean a0();

    zzfut a1();

    void b1(int i10);

    void c0(String str, zzbhp zzbhpVar);

    boolean canGoBack();

    void destroy();

    void e0(String str, zzbhp zzbhpVar);

    void f0();

    @Override // com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcbj
    Activity g();

    @Override // com.google.android.gms.internal.ads.zzcff
    zzeyf g0();

    @Override // com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcbj
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    @Override // com.google.android.gms.internal.ads.zzcbj
    com.google.android.gms.ads.internal.zza h();

    WebViewClient h0();

    void i0(boolean z10);

    void j0(zzeyc zzeycVar, zzeyf zzeyfVar);

    @Override // com.google.android.gms.internal.ads.zzcfr, com.google.android.gms.internal.ads.zzcbj
    zzbzg k();

    @Override // com.google.android.gms.internal.ads.zzcbj
    zzbbh l();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void m0();

    void measure(int i10, int i11);

    void n1();

    void onPause();

    void onResume();

    void p0(boolean z10);

    com.google.android.gms.ads.internal.overlay.zzl q0();

    @Override // com.google.android.gms.internal.ads.zzcbj
    zzcfe r();

    zzbdk s();

    void s0(Context context);

    @Override // com.google.android.gms.internal.ads.zzcbj
    void setBackgroundColor(int i10);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    boolean t();

    @Override // com.google.android.gms.internal.ads.zzcdz
    zzeyc u();

    boolean x();

    void x0(int i10);

    @Override // com.google.android.gms.internal.ads.zzcbj
    void y(String str, zzccu zzccuVar);

    void y0(zzbdi zzbdiVar);

    zzaus z();
}
