package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebz implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcph f16216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f16217c;

    public zzebz(Context context, zzcph zzcphVar, Executor executor) {
        this.f16215a = context;
        this.f16216b = zzcphVar;
        this.f16217c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        com.google.android.gms.ads.internal.client.zzq zzqVar;
        com.google.android.gms.ads.internal.client.zzq zzqVar2 = zzeyoVar.f17702a.f17696a.f17732e;
        if (zzqVar2.B) {
            zzqVar = new com.google.android.gms.ads.internal.client.zzq(this.f16215a, com.google.android.gms.ads.zzb.d(zzqVar2.f5935s, zzqVar2.f5932p));
        } else {
            zzqVar = (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) ? new com.google.android.gms.ads.internal.client.zzq(this.f16215a, com.google.android.gms.ads.zzb.e(zzqVar2.f5935s, zzqVar2.f5932p)) : zzezb.a(this.f16215a, zzeycVar.f17669v);
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar3 = zzqVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) {
            ((zzezs) zzeawVar.f16127b).s(this.f16215a, zzqVar3, zzeyoVar.f17702a.f17696a.f17731d, zzeycVar.f17670w.toString(), com.google.android.gms.ads.internal.util.zzbu.l(zzeycVar.f17667t), (zzbnl) zzeawVar.f16128c);
        } else {
            ((zzezs) zzeawVar.f16127b).r(this.f16215a, zzqVar3, zzeyoVar.f17702a.f17696a.f17731d, zzeycVar.f17670w.toString(), com.google.android.gms.ads.internal.util.zzbu.l(zzeycVar.f17667t), (zzbnl) zzeawVar.f16128c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, final zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        final View viewF;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) {
            zzbno zzbnoVarH = ((zzezs) zzeawVar.f16127b).h();
            if (zzbnoVarH == null) {
                zzbza.d("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzezc(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                viewF = (View) ObjectWrapper.t1(zzbnoVarH.b());
                boolean zC = zzbnoVarH.c();
                if (viewF == null) {
                    throw new zzezc(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zC) {
                    try {
                        viewF = (View) zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzeby
                            @Override // com.google.android.gms.internal.ads.zzftq
                            public final zzfut a(Object obj) {
                                return this.f16212a.c(viewF, zzeycVar, obj);
                            }
                        }, zzbzn.f11618e).get();
                    } catch (InterruptedException | ExecutionException e10) {
                        throw new zzezc(e10);
                    }
                }
            } catch (RemoteException e11) {
                throw new zzezc(e11);
            }
        } else {
            viewF = ((zzezs) zzeawVar.f16127b).f();
        }
        zzcph zzcphVar = this.f16216b;
        zzcrb zzcrbVar = new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a);
        final zzezs zzezsVar = (zzezs) zzeawVar.f16127b;
        zzcol zzcolVarA = zzcphVar.a(zzcrbVar, new zzcor(viewF, null, new zzcqk() { // from class: com.google.android.gms.internal.ads.zzebx
            @Override // com.google.android.gms.internal.ads.zzcqk
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzezsVar.g();
            }
        }, (zzeyd) zzeycVar.f17669v.get(0)));
        zzcolVarA.i().Y0(viewF);
        zzcolVarA.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16217c);
        ((zzecq) zzeawVar.f16128c).Ta(zzcolVarA.g());
        return zzcolVarA.h();
    }

    final /* synthetic */ zzfut c(View view, zzeyc zzeycVar, Object obj) throws Exception {
        return zzfuj.h(zzcpy.a(this.f16215a, view, zzeycVar));
    }
}
