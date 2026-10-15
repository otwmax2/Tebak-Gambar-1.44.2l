package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeev implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdlz f16472b;

    public zzeev(Context context, zzdlz zzdlzVar) {
        this.f16471a = context;
        this.f16472b = zzdlzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            ((zzbpc) zzeawVar.f16127b).K9(zzeycVar.f17633a0);
            if (zzeyoVar.f17702a.f17696a.f17742o.f17695a == 3) {
                ((zzbpc) zzeawVar.f16127b).l2(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16471a), new zzeeu(this, zzeawVar, null), (zzbnl) zzeawVar.f16128c);
            } else {
                ((zzbpc) zzeawVar.f16127b).xa(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16471a), new zzeeu(this, zzeawVar, null), (zzbnl) zzeawVar.f16128c);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Remote exception loading a rewarded RTB ad", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        zzecz zzeczVar = new zzecz(zzeycVar, (zzbpc) zzeawVar.f16127b, AdFormat.REWARDED);
        zzdlv zzdlvVarD = this.f16472b.d(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdlw(zzeczVar));
        zzeczVar.b(zzdlvVarD.b());
        ((zzecq) zzeawVar.f16128c).Ta(zzdlvVarD.n());
        return zzdlvVarD.k();
    }
}
