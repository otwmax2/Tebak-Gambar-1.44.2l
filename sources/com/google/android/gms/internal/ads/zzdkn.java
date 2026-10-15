package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
import o.g;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkn extends zzbeq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15005o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdgi f15006p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzdhi f15007q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzdgd f15008r;

    public zzdkn(Context context, zzdgi zzdgiVar, zzdhi zzdhiVar, zzdgd zzdgdVar) {
        this.f15005o = context;
        this.f15006p = zzdgiVar;
        this.f15007q = zzdhiVar;
        this.f15008r = zzdgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final com.google.android.gms.ads.internal.client.zzdq b() {
        return this.f15006p.T();
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final zzbdu c() throws RemoteException {
        return this.f15008r.N().a();
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final boolean c0(IObjectWrapper iObjectWrapper) {
        zzdhi zzdhiVar;
        Object objT1 = ObjectWrapper.t1(iObjectWrapper);
        if (!(objT1 instanceof ViewGroup) || (zzdhiVar = this.f15007q) == null || !zzdhiVar.f((ViewGroup) objT1)) {
            return false;
        }
        this.f15006p.b0().K(new zzdkm(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final void c6(IObjectWrapper iObjectWrapper) {
        zzdgd zzdgdVar;
        Object objT1 = ObjectWrapper.t1(iObjectWrapper);
        if (!(objT1 instanceof View) || this.f15006p.e0() == null || (zzdgdVar = this.f15008r) == null) {
            return;
        }
        zzdgdVar.p((View) objT1);
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final String c9(String str) {
        return (String) this.f15006p.S().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final zzbdx d0(String str) {
        return (zzbdx) this.f15006p.R().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final IObjectWrapper f() {
        return ObjectWrapper.Q4(this.f15005o);
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final String g() {
        return this.f15006p.j0();
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final List i() {
        g gVarR = this.f15006p.R();
        g gVarS = this.f15006p.S();
        String[] strArr = new String[gVarR.size() + gVarS.size()];
        int i10 = 0;
        for (int i11 = 0; i11 < gVarR.size(); i11++) {
            strArr[i10] = (String) gVarR.k(i11);
            i10++;
        }
        for (int i12 = 0; i12 < gVarS.size(); i12++) {
            strArr[i10] = (String) gVarS.k(i12);
            i10++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final void j() {
        zzdgd zzdgdVar = this.f15008r;
        if (zzdgdVar != null) {
            zzdgdVar.a();
        }
        this.f15008r = null;
        this.f15007q = null;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final void l() {
        String strB = this.f15006p.b();
        if ("Google".equals(strB)) {
            zzbza.g("Illegal argument specified for omid partner name.");
            return;
        }
        if (TextUtils.isEmpty(strB)) {
            zzbza.g("Not starting OMID session. OM partner name has not been configured.");
            return;
        }
        zzdgd zzdgdVar = this.f15008r;
        if (zzdgdVar != null) {
            zzdgdVar.Y(strB, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final void m() {
        zzdgd zzdgdVar = this.f15008r;
        if (zzdgdVar != null) {
            zzdgdVar.o();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final boolean q() {
        IObjectWrapper iObjectWrapperE0 = this.f15006p.e0();
        if (iObjectWrapperE0 == null) {
            zzbza.g("Trying to start OMID session before creation.");
            return false;
        }
        com.google.android.gms.ads.internal.zzt.a().x0(iObjectWrapperE0);
        if (this.f15006p.a0() == null) {
            return true;
        }
        this.f15006p.a0().v0("onSdkLoaded", new o.a());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final boolean r() {
        zzdgd zzdgdVar = this.f15008r;
        return (zzdgdVar == null || zzdgdVar.C()) && this.f15006p.a0() != null && this.f15006p.b0() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final void s0(String str) {
        zzdgd zzdgdVar = this.f15008r;
        if (zzdgdVar != null) {
            zzdgdVar.l(str);
        }
    }
}
