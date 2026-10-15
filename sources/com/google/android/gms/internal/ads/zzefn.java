package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefn implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f16542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdlz f16543c;

    public zzefn(Context context, Executor executor, zzdlz zzdlzVar) {
        this.f16541a = context;
        this.f16542b = executor;
        this.f16543c = zzdlzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) {
        try {
            ((zzezs) zzeawVar.f16127b).p(zzeyoVar.f17702a.f17696a.f17731d, zzeycVar.f17670w.toString());
        } catch (Exception e10) {
            zzbza.h("Fail to load ad from adapter ".concat(String.valueOf(zzeawVar.f16126a)), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        if (((zzezs) zzeawVar.f16127b).c()) {
            e(zzeyoVar, zzeycVar, zzeawVar);
            return;
        }
        ((zzecr) zzeawVar.f16128c).Ua(new zzefl(this, zzeyoVar, zzeycVar, zzeawVar));
        ((zzezs) zzeawVar.f16127b).m(this.f16541a, zzeyoVar.f17702a.f17696a.f17731d, null, (zzbuo) zzeawVar.f16128c, zzeycVar.f17670w.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, final zzeaw zzeawVar) throws zzezc, zzeek {
        zzdlv zzdlvVarD = this.f16543c.d(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdlw(new zzdee() { // from class: com.google.android.gms.internal.ads.zzefj
            @Override // com.google.android.gms.internal.ads.zzdee
            public final void a(boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
                zzeaw zzeawVar2 = zzeawVar;
                try {
                    ((zzezs) zzeawVar2.f16127b).A(z10);
                    ((zzezs) zzeawVar2.f16127b).a();
                } catch (zzezc e10) {
                    zzbza.h("Cannot show rewarded video.", e10);
                    throw new zzded(e10.getCause());
                }
            }
        }));
        zzdlvVarD.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16542b);
        zzcvv zzcvvVarD = zzdlvVarD.d();
        zzcum zzcumVarA = zzdlvVarD.a();
        ((zzecr) zzeawVar.f16128c).Ta(new zzefm(this, zzdlvVarD.h(), zzcumVarA, zzcvvVarD, zzdlvVarD.i()));
        return zzdlvVarD.k();
    }
}
