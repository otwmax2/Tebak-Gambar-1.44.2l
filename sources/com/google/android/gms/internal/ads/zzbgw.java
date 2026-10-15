package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbgw implements zzbhp {
    zzbgw() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        JSONObject jSONObjectZza;
        zzcei zzceiVar = (zzcei) obj;
        zzbdk zzbdkVarS = zzceiVar.s();
        if (zzbdkVarS == null || (jSONObjectZza = zzbdkVarS.zza()) == null) {
            zzceiVar.w("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzceiVar.w("nativeAdViewSignalsReady", jSONObjectZza);
        }
    }
}
