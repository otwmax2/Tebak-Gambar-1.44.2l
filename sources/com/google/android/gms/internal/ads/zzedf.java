package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedf implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzddw f16318b;

    public zzedf(Context context, zzddw zzddwVar) {
        this.f16317a = context;
        this.f16318b = zzddwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            ((zzbpc) zzeawVar.f16127b).K9(zzeycVar.f17633a0);
            ((zzbpc) zzeawVar.f16127b).K3(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16317a), new zzede(this, zzeawVar, null), (zzbnl) zzeawVar.f16128c);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Remote exception loading a interstitial RTB ad", e10);
            throw new zzezc(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        zzecz zzeczVar = new zzecz(zzeycVar, (zzbpc) zzeawVar.f16127b, AdFormat.INTERSTITIAL);
        zzdcw zzdcwVarC = this.f16318b.c(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdcz(zzeczVar, null));
        zzeczVar.b(zzdcwVarC.b());
        ((zzecq) zzeawVar.f16128c).Ta(zzdcwVarC.f());
        return zzdcwVarC.i();
    }
}
