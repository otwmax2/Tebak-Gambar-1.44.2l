package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f17971c;

    public zzfds(Context context, zzbzg zzbzgVar) {
        this.f17969a = context;
        this.f17970b = context.getPackageName();
        this.f17971c = zzbzgVar.f11605o;
    }

    public final void a(Map map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.r();
        map.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, com.google.android.gms.ads.internal.util.zzs.O());
        map.put("app", this.f17970b);
        com.google.android.gms.ads.internal.zzt.r();
        boolean zA = com.google.android.gms.ads.internal.util.zzs.a(this.f17969a);
        String str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        map.put("is_lite_sdk", true != zA ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        List listB = zzbar.b();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10407w6)).booleanValue()) {
            listB.addAll(com.google.android.gms.ads.internal.zzt.q().h().f().d());
        }
        map.put("e", TextUtils.join(",", listB));
        map.put("sdkVersion", this.f17971c);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A9)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.r();
            if (true == com.google.android.gms.ads.internal.util.zzs.W(this.f17969a)) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            map.put("is_bstar", str);
        }
    }
}
