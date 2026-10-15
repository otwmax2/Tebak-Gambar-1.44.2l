package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbgz implements zzbhp {
    zzbgz() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        if (TextUtils.isEmpty((CharSequence) map.get("appId"))) {
            com.google.android.gms.ads.internal.util.zze.k("Missing App Id, cannot show LMD Overlay without it");
            return;
        }
        zzfly zzflyVarJ = zzflz.j();
        zzflyVarJ.b((String) map.get("appId"));
        zzflyVarJ.h(zzceiVar.getWidth());
        zzflyVarJ.g(zzceiVar.L().getWindowToken());
        if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
            zzflyVarJ.d(Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY")));
        } else {
            zzflyVarJ.d(81);
        }
        if (map.containsKey("verticalMargin")) {
            zzflyVarJ.e(Float.parseFloat((String) map.get("verticalMargin")));
        } else {
            zzflyVarJ.e(0.02f);
        }
        if (map.containsKey("enifd")) {
            zzflyVarJ.a((String) map.get("enifd"));
        }
        try {
            com.google.android.gms.ads.internal.zzt.l().j(zzceiVar, zzflyVarJ.i());
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "DefaultGmsgHandlers.ShowLMDOverlay");
            com.google.android.gms.ads.internal.util.zze.k("Missing parameters for LMD Overlay show request");
        }
    }
}
