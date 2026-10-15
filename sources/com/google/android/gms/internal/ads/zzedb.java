package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedb implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzddw f16309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzg f16310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f16311d;

    public zzedb(Context context, zzbzg zzbzgVar, zzddw zzddwVar, Executor executor) {
        this.f16308a = context;
        this.f16310c = zzbzgVar;
        this.f16309b = zzddwVar;
        this.f16311d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        ((zzezs) zzeawVar.f16127b).t(this.f16308a, zzeyoVar.f17702a.f17696a.f17731d, zzeycVar.f17670w.toString(), com.google.android.gms.ads.internal.util.zzbu.l(zzeycVar.f17667t), (zzbnl) zzeawVar.f16128c);
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, final zzeaw zzeawVar) throws zzezc, zzeek {
        zzdcw zzdcwVarC = this.f16309b.c(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdcz(new zzdee() { // from class: com.google.android.gms.internal.ads.zzeda
            @Override // com.google.android.gms.internal.ads.zzdee
            public final void a(boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
                this.f16306a.c(zzeawVar, z10, context, zzcvbVar);
            }
        }, null));
        zzdcwVarC.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16311d);
        ((zzecq) zzeawVar.f16128c).Ta(zzdcwVarC.g());
        return zzdcwVarC.i();
    }

    final /* synthetic */ void c(zzeaw zzeawVar, boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
        try {
            ((zzezs) zzeawVar.f16127b).A(z10);
            if (this.f16310c.f11607q < ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B0)).intValue()) {
                ((zzezs) zzeawVar.f16127b).C();
            } else {
                ((zzezs) zzeawVar.f16127b).D(context);
            }
        } catch (zzezc e10) {
            zzbza.f("Cannot show interstitial.");
            throw new zzded(e10.getCause());
        }
    }
}
