package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebj implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcny f16180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f16181c;

    zzebj(Context context, zzcny zzcnyVar, Executor executor) {
        this.f16179a = context;
        this.f16180b = zzcnyVar;
        this.f16181c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        ((zzezs) zzeawVar.f16127b).q(this.f16179a, zzeyoVar.f17702a.f17696a.f17731d, zzeycVar.f17670w.toString(), (zzbnl) zzeawVar.f16128c);
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, final zzeaw zzeawVar) throws zzezc, zzeek {
        zzcnv zzcnvVarB = this.f16180b.b(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdcz(new zzdee() { // from class: com.google.android.gms.internal.ads.zzebi
            @Override // com.google.android.gms.internal.ads.zzdee
            public final void a(boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
                zzeaw zzeawVar2 = zzeawVar;
                try {
                    ((zzezs) zzeawVar2.f16127b).A(z10);
                    ((zzezs) zzeawVar2.f16127b).B(context);
                } catch (zzezc e10) {
                    throw new zzded(e10.getCause());
                }
            }
        }, null), new zzcnw(zzeycVar.f17635b0));
        zzcnvVarB.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16181c);
        ((zzecq) zzeawVar.f16128c).Ta(zzcnvVarB.g());
        return zzcnvVarB.h();
    }
}
