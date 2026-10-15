package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeer implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f16465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdlz f16466c;

    public zzeer(Context context, Executor executor, zzdlz zzdlzVar) {
        this.f16464a = context;
        this.f16465b = executor;
        this.f16466c = zzdlzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        try {
            zzeyx zzeyxVar = zzeyoVar.f17702a.f17696a;
            if (zzeyxVar.f17742o.f17695a == 3) {
                ((zzezs) zzeawVar.f16127b).w(this.f16464a, zzeyxVar.f17731d, zzeycVar.f17670w.toString(), (zzbnl) zzeawVar.f16128c);
            } else {
                ((zzezs) zzeawVar.f16127b).v(this.f16464a, zzeyxVar.f17731d, zzeycVar.f17670w.toString(), (zzbnl) zzeawVar.f16128c);
            }
        } catch (Exception e10) {
            zzbza.h("Fail to load ad from adapter ".concat(String.valueOf(zzeawVar.f16126a)), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, final zzeaw zzeawVar) throws zzezc, zzeek {
        zzdlv zzdlvVarD = this.f16466c.d(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdlw(new zzdee() { // from class: com.google.android.gms.internal.ads.zzeeq
            @Override // com.google.android.gms.internal.ads.zzdee
            public final void a(boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
                zzeaw zzeawVar2 = zzeawVar;
                try {
                    ((zzezs) zzeawVar2.f16127b).A(z10);
                    ((zzezs) zzeawVar2.f16127b).E(context);
                } catch (zzezc e10) {
                    throw new zzded(e10.getCause());
                }
            }
        }));
        zzdlvVarD.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16465b);
        ((zzecq) zzeawVar.f16128c).Ta(zzdlvVarD.m());
        return zzdlvVarD.k();
    }
}
