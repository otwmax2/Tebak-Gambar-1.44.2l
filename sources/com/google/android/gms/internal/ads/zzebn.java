package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebn implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcny f16187b;

    zzebn(Context context, zzcny zzcnyVar) {
        this.f16186a = context;
        this.f16187b = zzcnyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            ((zzbpc) zzeawVar.f16127b).K9(zzeycVar.f17633a0);
            ((zzbpc) zzeawVar.f16127b).D5(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16186a), new zzebm(zzeawVar, null), (zzbnl) zzeawVar.f16128c);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Remote exception loading an app open RTB ad", e10);
            throw new zzezc(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        zzecz zzeczVar = new zzecz(zzeycVar, (zzbpc) zzeawVar.f16127b, AdFormat.APP_OPEN_AD);
        zzcnv zzcnvVarB = this.f16187b.b(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdcz(zzeczVar, null), new zzcnw(zzeycVar.f17635b0));
        zzeczVar.b(zzcnvVarB.b());
        ((zzecq) zzeawVar.f16128c).Ta(zzcnvVarB.f());
        return zzcnvVarB.h();
    }
}
