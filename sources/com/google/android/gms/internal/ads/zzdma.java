package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdma implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15130c;

    public zzdma(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15128a = zzgxlVar;
        this.f15129b = zzgxlVar2;
        this.f15130c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        zzgxl zzgxlVar = this.f15128a;
        zzgxl zzgxlVar2 = this.f15129b;
        int i10 = ((zzcuf) this.f15130c).a().f17742o.f17695a;
        int i11 = i10 - 1;
        if (i10 != 0) {
            return i11 != 0 ? ((zzefx) zzgxlVar2).zzb() : ((zzefx) zzgxlVar).zzb();
        }
        throw null;
    }
}
