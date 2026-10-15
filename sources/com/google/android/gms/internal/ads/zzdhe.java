package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhe extends zzbea implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdie {
    public static final zzfqk C = zzfqk.y("2011", "1009", "3010");
    private GestureDetector B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f14715o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private FrameLayout f14717q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private FrameLayout f14718r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzfuu f14719s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f14720t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("this")
    private zzdgd f14722v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzatg f14723w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private zzbdu f14725y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f14726z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private Map f14716p = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private IObjectWrapper f14724x = null;
    private boolean A = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f14721u = ModuleDescriptor.MODULE_VERSION;

    public zzdhe(FrameLayout frameLayout, FrameLayout frameLayout2, int i10) {
        this.f14717q = frameLayout;
        this.f14718r = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        String str = "3012";
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
        }
        this.f14715o = str;
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.a(frameLayout, this);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.b(frameLayout, this);
        this.f14719s = zzbzn.f11618e;
        this.f14723w = new zzatg(this.f14717q.getContext(), this.f14717q);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final synchronized void t() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue() || this.f14722v.H() == 0) {
            return;
        }
        this.B = new GestureDetector(this.f14717q.getContext(), new zzdhk(this.f14722v, this));
    }

    private final synchronized void v() {
        this.f14719s.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhd
            @Override // java.lang.Runnable
            public final void run() {
                this.f14714o.q();
            }
        });
    }

    private final synchronized void z0(String str) {
        DisplayMetrics displayMetrics;
        FrameLayout frameLayout = new FrameLayout(this.f14718r.getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        Context context = this.f14718r.getContext();
        frameLayout.setClickable(false);
        frameLayout.setFocusable(false);
        if (!TextUtils.isEmpty(str)) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                try {
                    byte[] bArrDecode = Base64.decode(str, 0);
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
                    bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                    Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                    bitmapDrawable.setTileModeXY(tileMode, tileMode);
                    frameLayout.setBackground(bitmapDrawable);
                } catch (IllegalArgumentException e10) {
                    zzbza.h("Encountered invalid base64 watermark.", e10);
                }
            }
        }
        this.f14718r.addView(frameLayout);
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void L3(IObjectWrapper iObjectWrapper) {
        this.f14722v.s((View) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void L6(zzbdu zzbduVar) {
        if (this.A) {
            return;
        }
        this.f14726z = true;
        this.f14725y = zzbduVar;
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar != null) {
            zzdgdVar.N().b(zzbduVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void Oa(IObjectWrapper iObjectWrapper) {
        if (this.A) {
            return;
        }
        this.f14724x = iObjectWrapper;
    }

    public final FrameLayout Ta() {
        return this.f14717q;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void a() {
        if (this.A) {
            return;
        }
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar != null) {
            zzdgdVar.y(this);
            this.f14722v = null;
        }
        this.f14716p.clear();
        this.f14717q.removeAllViews();
        this.f14718r.removeAllViews();
        this.f14716p = null;
        this.f14717q = null;
        this.f14718r = null;
        this.f14720t = null;
        this.f14723w = null;
        this.A = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final /* synthetic */ View c() {
        return this.f14717q;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized View d0(String str) {
        if (this.A) {
            return null;
        }
        WeakReference weakReference = (WeakReference) this.f14716p.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final FrameLayout f() {
        return this.f14718r;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final zzatg g() {
        return this.f14723w;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final IObjectWrapper h() {
        return this.f14724x;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized String i() {
        return this.f14715o;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map j() {
        return this.f14716p;
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void j7(IObjectWrapper iObjectWrapper) {
        if (this.A) {
            return;
        }
        Object objT1 = ObjectWrapper.t1(iObjectWrapper);
        if (!(objT1 instanceof zzdgd)) {
            zzbza.g("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar != null) {
            zzdgdVar.y(this);
        }
        v();
        zzdgd zzdgdVar2 = (zzdgd) objT1;
        this.f14722v = zzdgdVar2;
        zzdgdVar2.x(this);
        this.f14722v.p(this.f14717q);
        this.f14722v.W(this.f14718r);
        if (this.f14726z) {
            this.f14722v.N().b(this.f14725y);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10415x3)).booleanValue() && !TextUtils.isEmpty(this.f14722v.R())) {
            z0(this.f14722v.R());
        }
        t();
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map l() {
        return this.f14716p;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized JSONObject m() {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar == null) {
            return null;
        }
        return zzdgdVar.T(this.f14717q, j(), l());
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized JSONObject n() {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar == null) {
            return null;
        }
        return zzdgdVar.U(this.f14717q, j(), l());
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void n4(IObjectWrapper iObjectWrapper, int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized void n5(String str, IObjectWrapper iObjectWrapper) {
        t1(str, (View) ObjectWrapper.t1(iObjectWrapper), true);
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar == null || !zzdgdVar.A()) {
            return;
        }
        this.f14722v.X();
        this.f14722v.j(view, this.f14717q, j(), l(), false);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar != null) {
            FrameLayout frameLayout = this.f14717q;
            zzdgdVar.h(frameLayout, j(), l(), zzdgd.D(frameLayout));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar != null) {
            FrameLayout frameLayout = this.f14717q;
            zzdgdVar.h(frameLayout, j(), l(), zzdgd.D(frameLayout));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdgd zzdgdVar = this.f14722v;
        if (zzdgdVar == null) {
            return false;
        }
        zzdgdVar.q(view, motionEvent, this.f14717q);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue() && this.B != null && this.f14722v.H() != 0) {
            this.B.onTouchEvent(motionEvent);
        }
        return false;
    }

    final /* synthetic */ void q() {
        if (this.f14720t == null) {
            View view = new View(this.f14717q.getContext());
            this.f14720t = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.f14717q != this.f14720t.getParent()) {
            this.f14717q.addView(this.f14720t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized void t1(String str, View view, boolean z10) {
        if (this.A) {
            return;
        }
        if (view == null) {
            this.f14716p.remove(str);
            return;
        }
        this.f14716p.put(str, new WeakReference(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            if (com.google.android.gms.ads.internal.util.zzbx.i(this.f14721u)) {
                view.setOnTouchListener(this);
            }
            view.setClickable(true);
            view.setOnClickListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final synchronized IObjectWrapper u(String str) {
        return ObjectWrapper.Q4(d0(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbeb
    public final void x0(IObjectWrapper iObjectWrapper) {
        onTouch(this.f14717q, (MotionEvent) ObjectWrapper.t1(iObjectWrapper));
    }
}
