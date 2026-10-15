package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbgl implements zzbhp {
    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzbza.g("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                zzbza.g("No timestamp given for CSI tick.");
                return;
            }
            try {
                long jB = com.google.android.gms.ads.internal.zzt.b().b() + (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzt.b().a());
                if (true == TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                zzceiVar.l().c(str2, str3, jB);
                return;
            } catch (NumberFormatException e10) {
                zzbza.h("Malformed timestamp for CSI tick.", e10);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get(SDKConstants.PARAM_VALUE);
            if (TextUtils.isEmpty(str5)) {
                zzbza.g("No value given for CSI experiment.");
                return;
            } else {
                zzceiVar.l().a().d("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get(SDKConstants.PARAM_VALUE);
            if (TextUtils.isEmpty(str7)) {
                zzbza.g("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                zzbza.g("No name given for CSI extra.");
            } else {
                zzceiVar.l().a().d(str6, str7);
            }
        }
    }
}
