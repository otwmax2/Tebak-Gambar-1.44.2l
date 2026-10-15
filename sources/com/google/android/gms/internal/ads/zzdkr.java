package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkr implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbfb f15019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdlf f15020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgws f15021c;

    public zzdkr(zzdgt zzdgtVar, zzdgi zzdgiVar, zzdlf zzdlfVar, zzgws zzgwsVar) {
        this.f15019a = zzdgtVar.c(zzdgiVar.j0());
        this.f15020b = zzdlfVar;
        this.f15021c = zzgwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.f15019a.d3((zzber) this.f15021c.zzb(), str);
        } catch (RemoteException e10) {
            zzbza.h("Failed to call onCustomClick for asset " + str + ".", e10);
        }
    }

    public final void b() {
        if (this.f15019a == null) {
            return;
        }
        this.f15020b.i("/nativeAdCustomClick", this);
    }
}
