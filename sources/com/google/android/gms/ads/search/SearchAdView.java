package com.google.android.gms.ads.search;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.internal.ads.zzbza;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotOnlyInitialized
    private final zzea f6490o;

    public AdListener getAdListener() {
        return this.f6490o.d();
    }

    public AdSize getAdSize() {
        return this.f6490o.e();
    }

    public String getAdUnitId() {
        return this.f6490o.m();
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

    public void setAdListener(AdListener adListener) {
        this.f6490o.t(adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.f6490o.u(adSize);
    }

    public void setAdUnitId(String str) {
        this.f6490o.w(str);
    }
}
