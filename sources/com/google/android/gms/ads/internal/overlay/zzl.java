package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzawe;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbqf;
import com.google.android.gms.internal.ads.zzbrb;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzceu;
import com.google.android.gms.internal.ads.zzcft;
import com.google.android.gms.internal.ads.zzcfv;
import com.google.android.gms.internal.ads.zzcfx;
import com.google.android.gms.internal.ads.zzcvb;
import com.google.android.gms.internal.ads.zzdcc;
import com.google.android.gms.internal.ads.zzean;
import com.google.android.gms.internal.ads.zzfkr;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzl extends zzbrb implements zzad {

    @VisibleForTesting
    static final int I = Color.argb(0, 0, 0, 0);
    private Runnable B;
    private boolean C;
    private boolean D;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final Activity f6004o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    AdOverlayInfoParcel f6005p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    zzcei f6006q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    zzh f6007r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @VisibleForTesting
    zzr f6008s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @VisibleForTesting
    FrameLayout f6010u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @VisibleForTesting
    WebChromeClient.CustomViewCallback f6011v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @VisibleForTesting
    b f6014y;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    boolean f6009t = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @VisibleForTesting
    boolean f6012w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @VisibleForTesting
    boolean f6013x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @VisibleForTesting
    boolean f6015z = false;

    @VisibleForTesting
    int H = 1;
    private final Object A = new Object();
    private boolean E = false;
    private boolean F = false;
    private boolean G = true;

    public zzl(Activity activity) {
        this.f6004o = activity;
    }

    private final void Wa(Configuration configuration) {
        com.google.android.gms.ads.internal.zzj zzjVar;
        com.google.android.gms.ads.internal.zzj zzjVar2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        boolean z10 = true;
        boolean z11 = false;
        boolean z12 = (adOverlayInfoParcel == null || (zzjVar2 = adOverlayInfoParcel.C) == null || !zzjVar2.f6226p) ? false : true;
        boolean zE = com.google.android.gms.ads.internal.zzt.s().e(this.f6004o, configuration);
        if ((!this.f6013x || z12) && !zE) {
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f6005p;
            if (adOverlayInfoParcel2 != null && (zzjVar = adOverlayInfoParcel2.C) != null && zzjVar.f6231u) {
                z11 = true;
            }
        } else {
            z10 = false;
        }
        Window window = this.f6004o.getWindow();
        if (((Boolean) zzba.c().b(zzbar.Y0)).booleanValue()) {
            window.getDecorView().setSystemUiVisibility(z10 ? z11 ? 5894 : 5380 : 256);
            return;
        }
        if (!z10) {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
        if (z11) {
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    private static final void Xa(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.a().b(iObjectWrapper, view);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final boolean H() {
        this.H = 1;
        if (this.f6006q == null) {
            return true;
        }
        if (((Boolean) zzba.c().b(zzbar.f10222f8)).booleanValue() && this.f6006q.canGoBack()) {
            this.f6006q.goBack();
            return false;
        }
        boolean zA0 = this.f6006q.a0();
        if (!zA0) {
            this.f6006q.v0("onbackblocked", Collections.emptyMap());
        }
        return zA0;
    }

    public final void Ta(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.f6004o);
        this.f6010u = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.f6010u.addView(view, -1, -1);
        this.f6004o.setContentView(this.f6010u);
        this.D = true;
        this.f6011v = customViewCallback;
        this.f6009t = true;
    }

    protected final void Ua(boolean z10) throws a {
        if (!this.D) {
            this.f6004o.requestWindowFeature(1);
        }
        Window window = this.f6004o.getWindow();
        if (window == null) {
            throw new a("Invalid activity, no window available.");
        }
        zzcei zzceiVar = this.f6005p.f5972r;
        zzcfv zzcfvVarJ = zzceiVar != null ? zzceiVar.J() : null;
        boolean z11 = zzcfvVarJ != null && zzcfvVarJ.s();
        this.f6015z = false;
        if (z11) {
            int i10 = this.f6005p.f5978x;
            if (i10 == 6) {
                z = this.f6004o.getResources().getConfiguration().orientation == 1;
                this.f6015z = z;
            } else if (i10 == 7) {
                z = this.f6004o.getResources().getConfiguration().orientation == 2;
                this.f6015z = z;
            }
        }
        zzbza.b("Delay onShow to next orientation change: " + z);
        ab(this.f6005p.f5978x);
        window.setFlags(16777216, 16777216);
        zzbza.b("Hardware acceleration on the AdActivity window enabled.");
        if (this.f6013x) {
            this.f6014y.setBackgroundColor(I);
        } else {
            this.f6014y.setBackgroundColor(-16777216);
        }
        this.f6004o.setContentView(this.f6014y);
        this.D = true;
        if (z10) {
            try {
                com.google.android.gms.ads.internal.zzt.B();
                Activity activity = this.f6004o;
                zzcei zzceiVar2 = this.f6005p.f5972r;
                zzcfx zzcfxVarM = zzceiVar2 != null ? zzceiVar2.M() : null;
                zzcei zzceiVar3 = this.f6005p.f5972r;
                String strB0 = zzceiVar3 != null ? zzceiVar3.B0() : null;
                AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
                zzbzg zzbzgVar = adOverlayInfoParcel.A;
                zzcei zzceiVar4 = adOverlayInfoParcel.f5972r;
                zzcei zzceiVarA = zzceu.a(activity, zzcfxVarM, strB0, true, z11, null, null, zzbzgVar, null, null, zzceiVar4 != null ? zzceiVar4.h() : null, zzawe.a(), null, null);
                this.f6006q = zzceiVarA;
                zzcfv zzcfvVarJ2 = zzceiVarA.J();
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f6005p;
                zzbgi zzbgiVar = adOverlayInfoParcel2.D;
                zzbgk zzbgkVar = adOverlayInfoParcel2.f5973s;
                zzz zzzVar = adOverlayInfoParcel2.f5977w;
                zzcei zzceiVar5 = adOverlayInfoParcel2.f5972r;
                zzcfvVarJ2.M0(null, zzbgiVar, null, zzbgkVar, zzzVar, true, null, zzceiVar5 != null ? zzceiVar5.J().d() : null, null, null, null, null, null, null, null, null, null, null);
                this.f6006q.J().n0(new zzcft() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                    @Override // com.google.android.gms.internal.ads.zzcft
                    public final void S(boolean z12) {
                        zzcei zzceiVar6 = this.f5996o.f6006q;
                        if (zzceiVar6 != null) {
                            zzceiVar6.F0();
                        }
                    }
                });
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.f6005p;
                String str = adOverlayInfoParcel3.f5980z;
                if (str != null) {
                    this.f6006q.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel3.f5976v;
                    if (str2 == null) {
                        throw new a("No URL or HTML to display in ad overlay.");
                    }
                    this.f6006q.loadDataWithBaseURL(adOverlayInfoParcel3.f5974t, str2, "text/html", "UTF-8", null);
                }
                zzcei zzceiVar6 = this.f6005p.f5972r;
                if (zzceiVar6 != null) {
                    zzceiVar6.N0(this);
                }
            } catch (Exception e10) {
                zzbza.e("Error obtaining webview.", e10);
                throw new a("Could not obtain webview for the overlay.", e10);
            }
        } else {
            zzcei zzceiVar7 = this.f6005p.f5972r;
            this.f6006q = zzceiVar7;
            zzceiVar7.s0(this.f6004o);
        }
        this.f6006q.Z(this);
        zzcei zzceiVar8 = this.f6005p.f5972r;
        if (zzceiVar8 != null) {
            Xa(zzceiVar8.E(), this.f6014y);
        }
        if (this.f6005p.f5979y != 5) {
            ViewParent parent = this.f6006q.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.f6006q.L());
            }
            if (this.f6013x) {
                this.f6006q.K0();
            }
            this.f6014y.addView(this.f6006q.L(), -1, -1);
        }
        if (!z10 && !this.f6015z) {
            b();
        }
        AdOverlayInfoParcel adOverlayInfoParcel4 = this.f6005p;
        if (adOverlayInfoParcel4.f5979y == 5) {
            zzean.Va(this.f6004o, this, adOverlayInfoParcel4.I, adOverlayInfoParcel4.F, adOverlayInfoParcel4.G, adOverlayInfoParcel4.H, adOverlayInfoParcel4.E, adOverlayInfoParcel4.J);
            return;
        }
        Ya(z11);
        if (this.f6006q.x()) {
            Za(z11, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public void V7(Bundle bundle) {
        this.f6004o.requestWindowFeature(1);
        this.f6012w = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel adOverlayInfoParcelV3 = AdOverlayInfoParcel.V3(this.f6004o.getIntent());
            this.f6005p = adOverlayInfoParcelV3;
            if (adOverlayInfoParcelV3 == null) {
                throw new a("Could not get info for ad overlay.");
            }
            if (adOverlayInfoParcelV3.A.f11607q > 7500000) {
                this.H = 4;
            }
            if (this.f6004o.getIntent() != null) {
                this.G = this.f6004o.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
            com.google.android.gms.ads.internal.zzj zzjVar = adOverlayInfoParcel.C;
            if (zzjVar != null) {
                boolean z10 = zzjVar.f6225o;
                this.f6013x = z10;
                if (z10) {
                    if (adOverlayInfoParcel.f5979y != 5 && zzjVar.f6230t != -1) {
                        new c(this, null).b();
                    }
                }
            } else if (adOverlayInfoParcel.f5979y == 5) {
                this.f6013x = true;
                if (adOverlayInfoParcel.f5979y != 5) {
                    new c(this, null).b();
                }
            } else {
                this.f6013x = false;
            }
            if (bundle == null) {
                if (this.G) {
                    zzcvb zzcvbVar = this.f6005p.L;
                    if (zzcvbVar != null) {
                        zzcvbVar.b();
                    }
                    zzo zzoVar = this.f6005p.f5971q;
                    if (zzoVar != null) {
                        zzoVar.zzb();
                    }
                }
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f6005p;
                if (adOverlayInfoParcel2.f5979y != 1) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel2.f5970p;
                    if (zzaVar != null) {
                        zzaVar.w0();
                    }
                    zzdcc zzdccVar = this.f6005p.M;
                    if (zzdccVar != null) {
                        zzdccVar.p();
                    }
                }
            }
            Activity activity = this.f6004o;
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.f6005p;
            b bVar = new b(activity, adOverlayInfoParcel3.B, adOverlayInfoParcel3.A.f11605o, adOverlayInfoParcel3.K);
            this.f6014y = bVar;
            bVar.setId(1000);
            com.google.android.gms.ads.internal.zzt.s().j(this.f6004o);
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.f6005p;
            int i10 = adOverlayInfoParcel4.f5979y;
            if (i10 == 1) {
                Ua(false);
                return;
            }
            if (i10 == 2) {
                this.f6007r = new zzh(adOverlayInfoParcel4.f5972r);
                Ua(false);
            } else if (i10 == 3) {
                Ua(true);
            } else {
                if (i10 != 5) {
                    throw new a("Could not determine ad overlay type.");
                }
                Ua(false);
            }
        } catch (a e10) {
            zzbza.g(e10.getMessage());
            this.H = 4;
            this.f6004o.finish();
        }
    }

    protected final void Va() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzo zzoVar;
        if (!this.f6004o.isFinishing() || this.E) {
            return;
        }
        this.E = true;
        zzcei zzceiVar = this.f6006q;
        if (zzceiVar != null) {
            zzceiVar.b1(this.H - 1);
            synchronized (this.A) {
                if (!this.C && this.f6006q.t()) {
                    if (((Boolean) zzba.c().b(zzbar.f10350r4)).booleanValue() && !this.F && (adOverlayInfoParcel = this.f6005p) != null && (zzoVar = adOverlayInfoParcel.f5971q) != null) {
                        zzoVar.P0();
                    }
                    Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zze
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f5997o.a();
                        }
                    };
                    this.B = runnable;
                    com.google.android.gms.ads.internal.util.zzs.f6190i.postDelayed(runnable, ((Long) zzba.c().b(zzbar.R0)).longValue());
                    return;
                }
            }
        }
        a();
    }

    public final void Ya(boolean z10) {
        int iIntValue = ((Integer) zzba.c().b(zzbar.f10394v4)).intValue();
        boolean z11 = ((Boolean) zzba.c().b(zzbar.U0)).booleanValue() || z10;
        zzq zzqVar = new zzq();
        zzqVar.f6019d = 50;
        zzqVar.f6016a = true != z11 ? 0 : iIntValue;
        zzqVar.f6017b = true != z11 ? iIntValue : 0;
        zzqVar.f6018c = iIntValue;
        this.f6008s = new zzr(this.f6004o, zzqVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z11 ? 9 : 11);
        Za(z10, this.f6005p.f5975u);
        this.f6014y.addView(this.f6008s, layoutParams);
    }

    public final void Za(boolean z10, boolean z11) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzj zzjVar2;
        boolean z12 = true;
        boolean z13 = ((Boolean) zzba.c().b(zzbar.S0)).booleanValue() && (adOverlayInfoParcel2 = this.f6005p) != null && (zzjVar2 = adOverlayInfoParcel2.C) != null && zzjVar2.f6232v;
        boolean z14 = ((Boolean) zzba.c().b(zzbar.T0)).booleanValue() && (adOverlayInfoParcel = this.f6005p) != null && (zzjVar = adOverlayInfoParcel.C) != null && zzjVar.f6233w;
        if (z10 && z11 && z13 && !z14) {
            new zzbqf(this.f6006q, "useCustomClose").c("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzr zzrVar = this.f6008s;
        if (zzrVar != null) {
            if (!z14 && (!z11 || z13)) {
                z12 = false;
            }
            zzrVar.b(z12);
        }
    }

    @VisibleForTesting
    final void a() {
        zzcei zzceiVar;
        zzo zzoVar;
        if (this.F) {
            return;
        }
        this.F = true;
        zzcei zzceiVar2 = this.f6006q;
        if (zzceiVar2 != null) {
            this.f6014y.removeView(zzceiVar2.L());
            zzh zzhVar = this.f6007r;
            if (zzhVar != null) {
                this.f6006q.s0(zzhVar.f6001d);
                this.f6006q.S0(false);
                ViewGroup viewGroup = this.f6007r.f6000c;
                View viewL = this.f6006q.L();
                zzh zzhVar2 = this.f6007r;
                viewGroup.addView(viewL, zzhVar2.f5998a, zzhVar2.f5999b);
                this.f6007r = null;
            } else if (this.f6004o.getApplicationContext() != null) {
                this.f6006q.s0(this.f6004o.getApplicationContext());
            }
            this.f6006q = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.f5971q) != null) {
            zzoVar.G(this.H);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f6005p;
        if (adOverlayInfoParcel2 == null || (zzceiVar = adOverlayInfoParcel2.f5972r) == null) {
            return;
        }
        Xa(zzceiVar.E(), this.f6005p.f5972r.L());
    }

    public final void ab(int i10) {
        if (this.f6004o.getApplicationInfo().targetSdkVersion >= ((Integer) zzba.c().b(zzbar.A5)).intValue()) {
            if (this.f6004o.getApplicationInfo().targetSdkVersion <= ((Integer) zzba.c().b(zzbar.B5)).intValue()) {
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= ((Integer) zzba.c().b(zzbar.C5)).intValue()) {
                    if (i11 <= ((Integer) zzba.c().b(zzbar.D5)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.f6004o.setRequestedOrientation(i10);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().t(th, "AdOverlay.setRequestedOrientation");
        }
    }

    protected final void b() {
        this.f6006q.F0();
    }

    public final void bb(boolean z10) {
        if (z10) {
            this.f6014y.setBackgroundColor(0);
        } else {
            this.f6014y.setBackgroundColor(-16777216);
        }
    }

    public final void c() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel != null && this.f6009t) {
            ab(adOverlayInfoParcel.f5978x);
        }
        if (this.f6010u != null) {
            this.f6004o.setContentView(this.f6014y);
            this.D = true;
            this.f6010u.removeAllViews();
            this.f6010u = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f6011v;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f6011v = null;
        }
        this.f6009t = false;
    }

    public final void d() {
        this.f6014y.f5982p = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void e0(IObjectWrapper iObjectWrapper) {
        Wa((Configuration) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void f() {
        this.H = 1;
    }

    public final void f0() {
        synchronized (this.A) {
            this.C = true;
            Runnable runnable = this.B;
            if (runnable != null) {
                zzfkr zzfkrVar = com.google.android.gms.ads.internal.util.zzs.f6190i;
                zzfkrVar.removeCallbacks(runnable);
                zzfkrVar.post(this.B);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzad
    public final void g() {
        this.H = 2;
        this.f6004o.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void i0(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f6012w);
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void j() {
        zzcei zzceiVar = this.f6006q;
        if (zzceiVar != null) {
            try {
                this.f6014y.removeView(zzceiVar.L());
            } catch (NullPointerException unused) {
            }
        }
        Va();
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void k() {
        zzo zzoVar;
        c();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.f5971q) != null) {
            zzoVar.X0();
        }
        if (!((Boolean) zzba.c().b(zzbar.f10372t4)).booleanValue() && this.f6006q != null && (!this.f6004o.isFinishing() || this.f6007r == null)) {
            this.f6006q.onPause();
        }
        Va();
    }

    public final void l() {
        if (this.f6015z) {
            this.f6015z = false;
            b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void m5(int i10, int i11, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void n() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.f5971q) != null) {
            zzoVar.Q4();
        }
        Wa(this.f6004o.getResources().getConfiguration());
        if (((Boolean) zzba.c().b(zzbar.f10372t4)).booleanValue()) {
            return;
        }
        zzcei zzceiVar = this.f6006q;
        if (zzceiVar == null || zzceiVar.U()) {
            zzbza.g("The webview does not exist. Ignoring action.");
        } else {
            this.f6006q.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void p() {
        if (((Boolean) zzba.c().b(zzbar.f10372t4)).booleanValue()) {
            zzcei zzceiVar = this.f6006q;
            if (zzceiVar == null || zzceiVar.U()) {
                zzbza.g("The webview does not exist. Ignoring action.");
            } else {
                this.f6006q.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void q() {
        if (((Boolean) zzba.c().b(zzbar.f10372t4)).booleanValue() && this.f6006q != null && (!this.f6004o.isFinishing() || this.f6007r == null)) {
            this.f6006q.onPause();
        }
        Va();
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void t() {
        this.D = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbrc
    public final void x() {
        zzo zzoVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel == null || (zzoVar = adOverlayInfoParcel.f5971q) == null) {
            return;
        }
        zzoVar.b();
    }

    public final void y() {
        this.f6014y.removeView(this.f6008s);
        Ya(true);
    }

    public final void zzb() {
        this.H = 3;
        this.f6004o.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f6005p;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.f5979y != 5) {
            return;
        }
        this.f6004o.overridePendingTransition(0, 0);
    }
}
