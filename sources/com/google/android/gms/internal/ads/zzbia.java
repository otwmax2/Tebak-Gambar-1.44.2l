package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbia implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdsz f10764a;

    public zzbia(zzdsz zzdszVar) {
        this.f10764a = zzdszVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B8)).booleanValue()) {
            String str = (String) map.get("action");
            String str2 = (String) map.get("adUnitId");
            String str3 = (String) map.get("redirectUrl");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return;
            }
            String str4 = (String) map.get("format");
            if (str.equals("load") && !TextUtils.isEmpty(str4)) {
                this.f10764a.Xa(str2, str4, str3);
            } else if (str.equals("show")) {
                this.f10764a.Ya(str2, str3);
            }
        }
    }
}
