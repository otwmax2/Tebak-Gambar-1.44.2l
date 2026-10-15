package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzctj implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13969c;

    public zzctj(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f13967a = zzgxlVar;
        this.f13968b = zzgxlVar2;
        this.f13969c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f13967a.zzb();
        final zzbzg zzbzgVarA = ((zzcgu) this.f13968b).a();
        final zzeyx zzeyxVarA = ((zzcuf) this.f13969c).a();
        return new zzfnj() { // from class: com.google.android.gms.internal.ads.zzcti
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                Context context2 = context;
                zzbzg zzbzgVar = zzbzgVarA;
                zzeyx zzeyxVar = zzeyxVarA;
                zzeyc zzeycVar = (zzeyc) obj;
                com.google.android.gms.ads.internal.util.zzas zzasVar = new com.google.android.gms.ads.internal.util.zzas(context2);
                zzasVar.p(zzeycVar.C);
                zzasVar.q(zzeycVar.D.toString());
                zzasVar.o(zzbzgVar.f11605o);
                zzasVar.n(zzeyxVar.f17733f);
                return zzasVar;
            }
        };
    }
}
