package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedu implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdes f16355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzbnu f16356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbzg f16357d;

    public zzedu(Context context, zzdes zzdesVar, zzbzg zzbzgVar) {
        this.f16354a = context;
        this.f16355b = zzdesVar;
        this.f16357d = zzbzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            ((zzbpc) zzeawVar.f16127b).K9(zzeycVar.f17633a0);
            zzeds zzedsVar = null;
            if (this.f16357d.f11607q < ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10424y1)).intValue()) {
                ((zzbpc) zzeawVar.f16127b).r3(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16354a), new zzedt(this, zzeawVar, zzedsVar), (zzbnl) zzeawVar.f16128c);
            } else {
                ((zzbpc) zzeawVar.f16127b).a8(zzeycVar.V, zzeycVar.f17670w.toString(), zzeyoVar.f17702a.f17696a.f17731d, ObjectWrapper.Q4(this.f16354a), new zzedt(this, zzeawVar, zzedsVar), (zzbnl) zzeawVar.f16128c, zzeyoVar.f17702a.f17696a.f17736i);
            }
        } catch (RemoteException e10) {
            throw new zzezc(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        if (!zzeyoVar.f17702a.f17696a.f17734g.contains(Integer.toString(6))) {
            throw new zzeek(2, "Unified must be used for RTB.");
        }
        zzdgi zzdgiVarC0 = zzdgi.c0(this.f16356c);
        if (!zzeyoVar.f17702a.f17696a.f17734g.contains(Integer.toString(zzdgiVarC0.M()))) {
            throw new zzeek(1, "No corresponding native ad listener");
        }
        zzdgk zzdgkVarD = this.f16355b.d(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdgu(zzdgiVarC0), new zzdij(null, null, this.f16356c, null));
        ((zzecq) zzeawVar.f16128c).Ta(zzdgkVarD.f());
        return zzdgkVarD.h();
    }
}
