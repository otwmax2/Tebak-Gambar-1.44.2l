package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzevp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfaj f17480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzctw f17481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f17482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzevo f17483d;

    public zzevp(zzfaj zzfajVar, zzctw zzctwVar, Executor executor) {
        this.f17480a = zzfajVar;
        this.f17481b = zzctwVar;
        this.f17482c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public final zzfat e() {
        zzeyx zzeyxVarE = this.f17481b.e();
        return this.f17480a.d(zzeyxVarE.f17731d, zzeyxVarE.f17733f, zzeyxVarE.f17737j);
    }

    public final zzfut c() {
        zzfut zzfutVarE;
        zzevo zzevoVar = this.f17483d;
        if (zzevoVar != null) {
            return zzfuj.h(zzevoVar);
        }
        if (((Boolean) zzbcr.f10588a.e()).booleanValue()) {
            zzfutVarE = zzfuj.e(zzfuj.l(zzfua.D(this.f17481b.zzb().e(this.f17480a.zza())), new zzevm(this), this.f17482c), zzdvi.class, new zzevl(this), this.f17482c);
        } else {
            zzevo zzevoVar2 = new zzevo(null, e(), null);
            this.f17483d = zzevoVar2;
            zzfutVarE = zzfuj.h(zzevoVar2);
        }
        return zzfuj.l(zzfutVarE, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzevk
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return (zzevo) obj;
            }
        }, this.f17482c);
    }
}
