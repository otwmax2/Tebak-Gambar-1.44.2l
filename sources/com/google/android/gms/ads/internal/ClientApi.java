package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzcd;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzdj;
import com.google.android.gms.ads.internal.client.zzew;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzae;
import com.google.android.gms.ads.internal.overlay.zzaf;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbeh;
import com.google.android.gms.internal.ads.zzbim;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzbug;
import com.google.android.gms.internal.ads.zzbuw;
import com.google.android.gms.internal.ads.zzbxr;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzcgd;
import com.google.android.gms.internal.ads.zzdhc;
import com.google.android.gms.internal.ads.zzdhe;
import com.google.android.gms.internal.ads.zzdqq;
import com.google.android.gms.internal.ads.zzehe;
import com.google.android.gms.internal.ads.zzetc;
import com.google.android.gms.internal.ads.zzeuq;
import com.google.android.gms.internal.ads.zzewh;
import com.google.android.gms.internal.ads.zzexv;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class ClientApi extends zzcd {
    @KeepForSdk
    public ClientApi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbuw H5(IObjectWrapper iObjectWrapper, String str, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzexv zzexvVarX = zzcgd.e(context, zzbnfVar, i10).x();
        zzexvVarX.b(context);
        zzexvVarX.o(str);
        return zzexvVarX.a().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu I5(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzetc zzetcVarU = zzcgd.e(context, zzbnfVar, i10).u();
        zzetcVarU.o(str);
        zzetcVarU.b(context);
        return i10 >= ((Integer) zzba.c().b(zzbar.N4)).intValue() ? zzetcVarU.a().zza() : new zzew();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbqv J6(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) {
        return zzcgd.e((Context) ObjectWrapper.t1(iObjectWrapper), zzbnfVar, i10).p();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzco T0(IObjectWrapper iObjectWrapper, int i10) {
        return zzcgd.e((Context) ObjectWrapper.t1(iObjectWrapper), null, i10).f();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbip U3(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10, zzbim zzbimVar) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzdqq zzdqqVarM = zzcgd.e(context, zzbnfVar, i10).m();
        zzdqqVarM.b(context);
        zzdqqVarM.c(zzbimVar);
        return zzdqqVarM.a().d();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbeb U6(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdhe((FrameLayout) ObjectWrapper.t1(iObjectWrapper), (FrameLayout) ObjectWrapper.t1(iObjectWrapper2), ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbq V9(IObjectWrapper iObjectWrapper, String str, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        return new zzehe(zzcgd.e(context, zzbnfVar, i10), context, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbeh W6(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdhc((View) ObjectWrapper.t1(iObjectWrapper), (HashMap) ObjectWrapper.t1(iObjectWrapper2), (HashMap) ObjectWrapper.t1(iObjectWrapper3));
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbxr e2(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) {
        return zzcgd.e((Context) ObjectWrapper.t1(iObjectWrapper), zzbnfVar, i10).s();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbrc l1(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.t1(iObjectWrapper);
        AdOverlayInfoParcel adOverlayInfoParcelV3 = AdOverlayInfoParcel.V3(activity.getIntent());
        if (adOverlayInfoParcelV3 == null) {
            return new com.google.android.gms.ads.internal.overlay.zzt(activity);
        }
        int i10 = adOverlayInfoParcelV3.f5979y;
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? new com.google.android.gms.ads.internal.overlay.zzt(activity) : new zzac(activity) : new zzy(activity, adOverlayInfoParcelV3) : new zzaf(activity) : new zzae(activity) : new com.google.android.gms.ads.internal.overlay.zzs(activity);
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu p2(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzeuq zzeuqVarV = zzcgd.e(context, zzbnfVar, i10).v();
        zzeuqVarV.b(context);
        zzeuqVarV.a(zzqVar);
        zzeuqVarV.u(str);
        return zzeuqVarV.d().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu w6(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, int i10) {
        return new zzs((Context) ObjectWrapper.t1(iObjectWrapper), zzqVar, str, new zzbzg(ModuleDescriptor.MODULE_VERSION, i10, true, false));
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbug x4(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzexv zzexvVarX = zzcgd.e(context, zzbnfVar, i10).x();
        zzexvVarX.b(context);
        return zzexvVarX.a().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzdj y1(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) {
        return zzcgd.e((Context) ObjectWrapper.t1(iObjectWrapper), zzbnfVar, i10).o();
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu z3(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) {
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        zzewh zzewhVarW = zzcgd.e(context, zzbnfVar, i10).w();
        zzewhVarW.b(context);
        zzewhVarW.a(zzqVar);
        zzewhVarW.u(str);
        return zzewhVarW.d().zza();
    }
}
