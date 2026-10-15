package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbok extends zzbnt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final UnifiedNativeAdMapper f11077o;

    public zzbok(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f11077o = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void A8(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f11077o.E((View) ObjectWrapper.t1(iObjectWrapper), (HashMap) ObjectWrapper.t1(iObjectWrapper2), (HashMap) ObjectWrapper.t1(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final boolean B() {
        return this.f11077o.l();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void P4(IObjectWrapper iObjectWrapper) {
        this.f11077o.F((View) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final boolean R() {
        return this.f11077o.m();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void X1(IObjectWrapper iObjectWrapper) {
        this.f11077o.q((View) ObjectWrapper.t1(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final double b() {
        if (this.f11077o.o() != null) {
            return this.f11077o.o().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float c() {
        return this.f11077o.k();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float e() {
        return this.f11077o.e();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final float f() {
        return this.f11077o.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final Bundle g() {
        return this.f11077o.g();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final com.google.android.gms.ads.internal.client.zzdq h() {
        if (this.f11077o.H() != null) {
            return this.f11077o.H().b();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzbdp i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzbdx j() {
        NativeAd.Image imageI = this.f11077o.i();
        if (imageI != null) {
            return new zzbdj(imageI.a(), imageI.c(), imageI.b(), imageI.e(), imageI.d());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper k() {
        View viewG = this.f11077o.G();
        if (viewG == null) {
            return null;
        }
        return ObjectWrapper.Q4(viewG);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper l() {
        View viewA = this.f11077o.a();
        if (viewA == null) {
            return null;
        }
        return ObjectWrapper.Q4(viewA);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final IObjectWrapper m() {
        Object objI = this.f11077o.I();
        if (objI == null) {
            return null;
        }
        return ObjectWrapper.Q4(objI);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String n() {
        return this.f11077o.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String p() {
        return this.f11077o.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String q() {
        return this.f11077o.h();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String r() {
        return this.f11077o.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final List t() {
        List<NativeAd.Image> listJ = this.f11077o.j();
        ArrayList arrayList = new ArrayList();
        if (listJ != null) {
            for (NativeAd.Image image : listJ) {
                arrayList.add(new zzbdj(image.a(), image.c(), image.b(), image.e(), image.d()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String v() {
        return this.f11077o.p();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final String x() {
        return this.f11077o.n();
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void y() {
        this.f11077o.s();
    }
}
