package com.google.android.gms.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbyp;
import com.google.android.gms.internal.ads.zzbza;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseAdView extends ViewGroup {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotOnlyInitialized
    protected final zzea f5602o;

    protected BaseAdView(Context context, int i10) {
        super(context);
        this.f5602o = new zzea(this, i10);
    }

    public void a() {
        zzbar.c(getContext());
        if (((Boolean) zzbci.f10550e.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10377t9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.zze
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = this.f6497o;
                        try {
                            baseAdView.f5602o.n();
                        } catch (IllegalStateException e10) {
                            zzbsf.c(baseAdView.getContext()).a(e10, "BaseAdView.destroy");
                        }
                    }
                });
                return;
            }
        }
        this.f5602o.n();
    }

    public void b(final AdRequest adRequest) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbar.c(getContext());
        if (((Boolean) zzbci.f10551f.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10410w9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.zzc
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = this.f6494o;
                        try {
                            baseAdView.f5602o.p(adRequest.f5576a);
                        } catch (IllegalStateException e10) {
                            zzbsf.c(baseAdView.getContext()).a(e10, "BaseAdView.loadAd");
                        }
                    }
                });
                return;
            }
        }
        this.f5602o.p(adRequest.f5576a);
    }

    public void c() {
        zzbar.c(getContext());
        if (((Boolean) zzbci.f10552g.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10388u9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.zzd
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = this.f6496o;
                        try {
                            baseAdView.f5602o.q();
                        } catch (IllegalStateException e10) {
                            zzbsf.c(baseAdView.getContext()).a(e10, "BaseAdView.pause");
                        }
                    }
                });
                return;
            }
        }
        this.f5602o.q();
    }

    public void d() {
        zzbar.c(getContext());
        if (((Boolean) zzbci.f10553h.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10366s9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.zzf
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = this.f6498o;
                        try {
                            baseAdView.f5602o.r();
                        } catch (IllegalStateException e10) {
                            zzbsf.c(baseAdView.getContext()).a(e10, "BaseAdView.resume");
                        }
                    }
                });
                return;
            }
        }
        this.f5602o.r();
    }

    public AdListener getAdListener() {
        return this.f5602o.d();
    }

    public AdSize getAdSize() {
        return this.f5602o.e();
    }

    public String getAdUnitId() {
        return this.f5602o.m();
    }

    public OnPaidEventListener getOnPaidEventListener() {
        return this.f5602o.f();
    }

    public ResponseInfo getResponseInfo() {
        return this.f5602o.g();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i14 = ((i12 - i10) - measuredWidth) / 2;
        int i15 = ((i13 - i11) - measuredHeight) / 2;
        childAt.layout(i14, i15, measuredWidth + i14, measuredHeight + i15);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        AdSize adSize;
        int iC;
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e10) {
                zzbza.e("Unable to retrieve ad size.", e10);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int iE = adSize.e(context);
                iC = adSize.c(context);
                measuredWidth = iE;
            } else {
                iC = 0;
            }
        } else {
            measureChild(childAt, i10, i11);
            measuredWidth = childAt.getMeasuredWidth();
            iC = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i10), View.resolveSize(Math.max(iC, getSuggestedMinimumHeight()), i11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(AdListener adListener) {
        this.f5602o.t(adListener);
        if (adListener == 0) {
            this.f5602o.s(null);
            return;
        }
        if (adListener instanceof com.google.android.gms.ads.internal.client.zza) {
            this.f5602o.s((com.google.android.gms.ads.internal.client.zza) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.f5602o.x((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.f5602o.u(adSize);
    }

    public void setAdUnitId(String str) {
        this.f5602o.w(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.f5602o.z(onPaidEventListener);
    }
}
