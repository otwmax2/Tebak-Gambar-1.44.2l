package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdfc implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f14481a;

    /* synthetic */ zzdfc(zzdff zzdffVar, zzdfb zzdfbVar) {
        this.f14481a = new WeakReference(zzdffVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        zzdff zzdffVar = (zzdff) this.f14481a.get();
        if (zzdffVar == null) {
            return;
        }
        zzdffVar.f14490h.w0();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10223f9)).booleanValue()) {
            zzdffVar.f14491i.p();
            if (TextUtils.isEmpty((CharSequence) map.get("sccg"))) {
                return;
            }
            zzdffVar.f14491i.q();
        }
    }
}
