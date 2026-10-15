package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhm implements zzbhp {
    zzbhm() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        if (map.keySet().contains("start")) {
            zzceiVar.J().j();
        } else if (map.keySet().contains("stop")) {
            zzceiVar.J().l();
        } else if (map.keySet().contains("cancel")) {
            zzceiVar.J().i();
        }
    }
}
