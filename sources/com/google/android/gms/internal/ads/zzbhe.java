package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbhe implements zzbhp {
    zzbhe() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        try {
            String str = (String) map.get("enabled");
            if (!zzfnb.c(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, str) && !zzfnb.c("false", str)) {
                return;
            }
            zzfkw.j(zzceiVar.getContext()).n(Boolean.parseBoolean(str));
        } catch (IOException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
