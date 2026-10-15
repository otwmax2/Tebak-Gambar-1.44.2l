package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzdhc extends zzbeg implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdie {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference f14708o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map f14709p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map f14710q = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Map f14711r = new HashMap();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    private zzdgd f14712s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzatg f14713t;

    public zzdhc(View view, HashMap map, HashMap map2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.a(view, this);
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.b(view, this);
        this.f14708o = new WeakReference(view);
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            View view2 = (View) entry.getValue();
            if (view2 != null) {
                this.f14709p.put(str, new WeakReference(view2));
                if (!"1098".equals(str) && !"3011".equals(str)) {
                    view2.setOnTouchListener(this);
                    view2.setClickable(true);
                    view2.setOnClickListener(this);
                }
            }
        }
        this.f14711r.putAll(this.f14709p);
        for (Map.Entry entry2 : map2.entrySet()) {
            View view3 = (View) entry2.getValue();
            if (view3 != null) {
                this.f14710q.put((String) entry2.getKey(), new WeakReference(view3));
                view3.setOnTouchListener(this);
                view3.setClickable(false);
            }
        }
        this.f14711r.putAll(this.f14710q);
        this.f14713t = new zzatg(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.zzbeh
    public final synchronized void J9(IObjectWrapper iObjectWrapper) {
        Object objT1 = ObjectWrapper.t1(iObjectWrapper);
        if (!(objT1 instanceof zzdgd)) {
            zzbza.g("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.y(this);
        }
        zzdgd zzdgdVar2 = (zzdgd) objT1;
        if (!zzdgdVar2.z()) {
            zzbza.d("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
            return;
        }
        this.f14712s = zzdgdVar2;
        zzdgdVar2.x(this);
        this.f14712s.p(c());
    }

    @Override // com.google.android.gms.internal.ads.zzbeh
    public final synchronized void U0(IObjectWrapper iObjectWrapper) {
        if (this.f14712s != null) {
            Object objT1 = ObjectWrapper.t1(iObjectWrapper);
            if (!(objT1 instanceof View)) {
                zzbza.g("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
            }
            this.f14712s.s((View) objT1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final View c() {
        return (View) this.f14708o.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbeh
    public final synchronized void d() {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.y(this);
            this.f14712s = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized View d0(String str) {
        WeakReference weakReference = (WeakReference) this.f14711r.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final FrameLayout f() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final zzatg g() {
        return this.f14713t;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized IObjectWrapper h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized String i() {
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map j() {
        return this.f14711r;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map k() {
        return this.f14710q;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized Map l() {
        return this.f14709p;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized JSONObject m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized JSONObject n() {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar == null) {
            return null;
        }
        return zzdgdVar.U(c(), j(), l());
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.j(view, c(), j(), l(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.h(c(), j(), l(), zzdgd.D(c()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.h(c(), j(), l(), zzdgd.D(c()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdgd zzdgdVar = this.f14712s;
        if (zzdgdVar != null) {
            zzdgdVar.q(view, motionEvent, c());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdie
    public final synchronized void t1(String str, View view, boolean z10) {
        this.f14711r.put(str, new WeakReference(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            this.f14709p.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }
}
