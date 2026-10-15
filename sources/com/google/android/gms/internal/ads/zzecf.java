package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecf implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcph f16228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f16229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzbno f16230d;

    public zzecf(Context context, zzcph zzcphVar) {
        this.f16227a = context;
        this.f16228b = zzcphVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            ((zzbpc) zzeawVar.f16127b).K9(zzeycVar.f17633a0);
            zzecd zzecdVar = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) {
                ((zzbpc) zzeawVar.f16127b).f6(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16227a), new zzece(this, zzeawVar, zzecdVar), (zzbnl) zzeawVar.f16128c, zzeyoVar.f17702a.f17696a.f17732e);
            } else {
                ((zzbpc) zzeawVar.f16127b).R4(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16227a), new zzece(this, zzeawVar, zzecdVar), (zzbnl) zzeawVar.f16128c, zzeyoVar.f17702a.f17696a.f17732e);
            }
        } catch (RemoteException e10) {
            throw new zzezc(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, final zzeyc zzeycVar, final zzeaw zzeawVar) throws zzezc, zzeek {
        final View view;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) {
            try {
                view = (View) ObjectWrapper.t1(this.f16230d.b());
                boolean zC = this.f16230d.c();
                if (view == null) {
                    throw new zzezc(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zC) {
                    try {
                        view = (View) zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzecb
                            @Override // com.google.android.gms.internal.ads.zzftq
                            public final zzfut a(Object obj) {
                                return this.f16221a.c(view, zzeycVar, obj);
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
            view = this.f16229c;
        }
        zzcol zzcolVarA = this.f16228b.a(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzcor(view, null, new zzcqk() { // from class: com.google.android.gms.internal.ads.zzecc
            @Override // com.google.android.gms.internal.ads.zzcqk
            public final com.google.android.gms.ads.internal.client.zzdq zza() throws zzezc {
                try {
                    return ((zzbpc) zzeawVar.f16127b).b();
                } catch (RemoteException e12) {
                    throw new zzezc(e12);
                }
            }
        }, (zzeyd) zzeycVar.f17669v.get(0)));
        zzcolVarA.i().Y0(view);
        ((zzecq) zzeawVar.f16128c).Ta(zzcolVarA.f());
        return zzcolVarA.h();
    }

    final /* synthetic */ zzfut c(View view, zzeyc zzeycVar, Object obj) throws Exception {
        return zzfuj.h(zzcpy.a(this.f16227a, view, zzeycVar));
    }
}
