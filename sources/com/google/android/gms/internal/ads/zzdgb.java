package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdgb implements zzatf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f14587o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzdgd f14588p;

    zzdgb(zzdgd zzdgdVar, String str) {
        this.f14588p = zzdgdVar;
        this.f14587o = str;
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A1)).booleanValue()) {
            if (zzateVar.f9886j) {
                this.f14588p.D.put(this.f14587o, Boolean.TRUE);
                zzdgd zzdgdVar = this.f14588p;
                zzdgdVar.h(zzdgdVar.f14602t.c(), this.f14588p.f14602t.j(), this.f14588p.f14602t.l(), true);
                return;
            }
            return;
        }
        synchronized (this) {
            if (zzateVar.f9886j) {
                zzdgd zzdgdVar2 = this.f14588p;
                if (zzdgdVar2.f14602t == null) {
                    return;
                }
                zzdgdVar2.D.put(this.f14587o, Boolean.TRUE);
                zzdgd zzdgdVar3 = this.f14588p;
                zzdgdVar3.h(zzdgdVar3.f14602t.c(), this.f14588p.f14602t.j(), this.f14588p.f14602t.l(), true);
            }
        }
    }
}
