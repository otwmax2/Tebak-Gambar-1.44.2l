package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbhq implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbhr f10739a;

    public zzbhq(zzbhr zzbhrVar, byte[] bArr) {
        this.f10739a = zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("transparentBackground"));
        boolean zEquals2 = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("blur"));
        float f10 = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f10 = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e10) {
            zzbza.e("Fail to parse float", e10);
        }
        this.f10739a.c(zEquals);
        this.f10739a.b(zEquals2, f10);
        zzceiVar.R(zEquals);
    }
}
