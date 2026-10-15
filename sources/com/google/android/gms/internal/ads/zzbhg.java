package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhg implements zzbhp {
    zzbhg() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        if (zzceiVar.z() != null) {
            zzceiVar.z().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlVarQ0 = zzceiVar.q0();
        if (zzlVarQ0 != null) {
            zzlVarQ0.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlVarY = zzceiVar.Y();
        if (zzlVarY != null) {
            zzlVarY.zzb();
        } else {
            zzbza.g("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
