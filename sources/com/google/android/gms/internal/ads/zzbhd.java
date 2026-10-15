package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhd implements zzbhp {
    zzbhd() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        try {
            zzfkv.k(zzceiVar.getContext()).l();
            zzfkw.j(zzceiVar.getContext()).k();
        } catch (IOException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "DefaultGmsgHandlers.ResetPaid");
        }
    }
}
