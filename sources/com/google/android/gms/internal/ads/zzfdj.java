package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f17948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfdp f17949b;

    private zzfdj() {
        HashMap map = new HashMap();
        this.f17948a = map;
        this.f17949b = new zzfdp(com.google.android.gms.ads.internal.zzt.b());
        map.put("new_csi", AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }

    public static zzfdj b(String str) {
        zzfdj zzfdjVar = new zzfdj();
        zzfdjVar.f17948a.put("action", str);
        return zzfdjVar;
    }

    public static zzfdj c(String str) {
        zzfdj zzfdjVar = new zzfdj();
        zzfdjVar.f17948a.put(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str);
        return zzfdjVar;
    }

    public final zzfdj a(String str, String str2) {
        this.f17948a.put(str, str2);
        return this;
    }

    public final zzfdj d(String str) {
        this.f17949b.b(str);
        return this;
    }

    public final zzfdj e(String str, String str2) {
        this.f17949b.c(str, str2);
        return this;
    }

    public final zzfdj f(zzeyc zzeycVar) {
        this.f17948a.put("aai", zzeycVar.f17671x);
        return this;
    }

    public final zzfdj g(zzeyf zzeyfVar) {
        if (!TextUtils.isEmpty(zzeyfVar.f17679b)) {
            this.f17948a.put("gqi", zzeyfVar.f17679b);
        }
        return this;
    }

    public final zzfdj h(zzeyo zzeyoVar, zzbyn zzbynVar) {
        zzeyn zzeynVar = zzeyoVar.f17703b;
        g(zzeynVar.f17700b);
        if (!zzeynVar.f17699a.isEmpty()) {
            switch (((zzeyc) zzeynVar.f17699a.get(0)).f17634b) {
                case 1:
                    this.f17948a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f17948a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f17948a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f17948a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f17948a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f17948a.put("ad_format", "app_open_ad");
                    if (zzbynVar != null) {
                        this.f17948a.put("as", true != zzbynVar.i() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
                    }
                    break;
                default:
                    this.f17948a.put("ad_format", "unknown");
                    break;
            }
        }
        return this;
    }

    public final zzfdj i(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f17948a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f17948a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final Map j() {
        HashMap map = new HashMap(this.f17948a);
        for (zzfdo zzfdoVar : this.f17949b.a()) {
            map.put(zzfdoVar.f17958a, zzfdoVar.f17959b);
        }
        return map;
    }
}
