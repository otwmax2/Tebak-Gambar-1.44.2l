package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzblr f10970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzfut f10971b;

    zzbmo(zzblr zzblrVar) {
        this.f10970a = zzblrVar;
    }

    private final void d() {
        if (this.f10971b == null) {
            final zzbzs zzbzsVar = new zzbzs();
            this.f10971b = zzbzsVar;
            this.f10970a.b(null).e(new zzbzw() { // from class: com.google.android.gms.internal.ads.zzbmm
                @Override // com.google.android.gms.internal.ads.zzbzw
                public final void a(Object obj) {
                    zzbzsVar.c((zzbls) obj);
                }
            }, new zzbzu() { // from class: com.google.android.gms.internal.ads.zzbmn
                @Override // com.google.android.gms.internal.ads.zzbzu
                public final void zza() {
                    zzbzsVar.d(new zzblu("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzbmr a(String str, zzbly zzblyVar, zzblx zzblxVar) {
        d();
        return new zzbmr(this.f10971b, "google.afma.activeView.handleUpdate", zzblyVar, zzblxVar);
    }

    public final void b(final String str, final zzbhp zzbhpVar) {
        d();
        this.f10971b = zzfuj.m(this.f10971b, new zzftq() { // from class: com.google.android.gms.internal.ads.zzbmk
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                zzbls zzblsVar = (zzbls) obj;
                zzblsVar.c1(str, zzbhpVar);
                return zzfuj.h(zzblsVar);
            }
        }, zzbzn.f11619f);
    }

    public final void c(final String str, final zzbhp zzbhpVar) {
        this.f10971b = zzfuj.l(this.f10971b, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbml
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzbls zzblsVar = (zzbls) obj;
                zzblsVar.U0(str, zzbhpVar);
                return zzblsVar;
            }
        }, zzbzn.f11619f);
    }
}
