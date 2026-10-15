package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegi implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbbp f16607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f16608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfda f16609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzegr f16610d;

    public zzegi(zzfda zzfdaVar, zzfuu zzfuuVar, zzbbp zzbbpVar, zzegr zzegrVar, byte[] bArr) {
        this.f16609c = zzfdaVar;
        this.f16608b = zzfuuVar;
        this.f16607a = zzbbpVar;
        this.f16610d = zzegrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar;
        return (this.f16607a == null || (zzeyhVar = zzeycVar.f17667t) == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzbzs zzbzsVar = new zzbzs();
        zzegn zzegnVar = new zzegn();
        zzegnVar.c(new zzegh(this, zzbzsVar, zzeyoVar, zzeycVar, zzegnVar));
        zzeyh zzeyhVar = zzeycVar.f17667t;
        final zzbbk zzbbkVar = new zzbbk(zzegnVar, zzeyhVar.f17691b, zzeyhVar.f17690a);
        zzfda zzfdaVar = this.f16609c;
        return zzfck.d(new zzfce() { // from class: com.google.android.gms.internal.ads.zzegg
            @Override // com.google.android.gms.internal.ads.zzfce
            public final void zza() throws Exception {
                this.f16600a.c(zzbbkVar);
            }
        }, this.f16608b, zzfcu.CUSTOM_RENDER_SYN, zzfdaVar).b(zzfcu.CUSTOM_RENDER_ACK).d(zzbzsVar).a();
    }

    final /* synthetic */ void c(zzbbk zzbbkVar) throws Exception {
        this.f16607a.S4(zzbbkVar);
    }
}
