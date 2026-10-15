package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10446a = (String) zzbce.f10518b.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f10447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f10448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10449d;

    public zzbax(Context context, String str) {
        this.f10448c = context;
        this.f10449d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f10447b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.r();
        linkedHashMap.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, com.google.android.gms.ads.internal.util.zzs.O());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        com.google.android.gms.ads.internal.zzt.r();
        boolean zA = com.google.android.gms.ads.internal.util.zzs.a(context);
        String str2 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        linkedHashMap.put("is_lite_sdk", true != zA ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        Future futureB = com.google.android.gms.ads.internal.zzt.o().b(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((zzbts) futureB.get()).f11333k));
            linkedHashMap.put("network_fine", Integer.toString(((zzbts) futureB.get()).f11334l));
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "CsiConfiguration.CsiConfiguration");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A9)).booleanValue()) {
            Map map = this.f10447b;
            com.google.android.gms.ads.internal.zzt.r();
            map.put("is_bstar", true == com.google.android.gms.ads.internal.util.zzs.W(context) ? AppEventsConstants.EVENT_PARAM_VALUE_YES : str2);
        }
    }

    final Context a() {
        return this.f10448c;
    }

    final String b() {
        return this.f10449d;
    }

    final String c() {
        return this.f10446a;
    }

    final Map d() {
        return this.f10447b;
    }
}
