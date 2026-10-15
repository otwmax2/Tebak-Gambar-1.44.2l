package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcwx extends zzczy implements zzcvi, zzcwn {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeyc f14137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicBoolean f14138q;

    public zzcwx(Set set, zzeyc zzeycVar) {
        super(set);
        this.f14138q = new AtomicBoolean();
        this.f14137p = zzeycVar;
    }

    private final void zzb() {
        com.google.android.gms.ads.internal.client.zzs zzsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10232g7)).booleanValue() && this.f14138q.compareAndSet(false, true) && (zzsVar = this.f14137p.f17643f0) != null && zzsVar.f5943o == 3) {
            W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzcww
                @Override // com.google.android.gms.internal.ads.zzczx
                public final void a(Object obj) throws Exception {
                    this.f14136a.Y0((zzcwz) obj);
                }
            });
        }
    }

    final /* synthetic */ void Y0(zzcwz zzcwzVar) throws Exception {
        zzcwzVar.c(this.f14137p.f17643f0);
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void e() {
        if (this.f14137p.f17634b == 1) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        int i10 = this.f14137p.f17634b;
        if (i10 == 2 || i10 == 5 || i10 == 4 || i10 == 6 || i10 == 7) {
            zzb();
        }
    }
}
