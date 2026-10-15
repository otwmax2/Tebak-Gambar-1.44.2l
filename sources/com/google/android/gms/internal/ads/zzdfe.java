package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdfe implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f14482a;

    /* synthetic */ zzdfe(zzdff zzdffVar, zzdfd zzdfdVar) {
        this.f14482a = new WeakReference(zzdffVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        zzdff zzdffVar = (zzdff) this.f14482a.get();
        if (zzdffVar == null) {
            return;
        }
        zzdffVar.f14489g.zza();
    }
}
