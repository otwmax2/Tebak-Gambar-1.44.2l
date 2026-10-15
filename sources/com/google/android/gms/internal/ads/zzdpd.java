package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzdpd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f15311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbyn f15312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeyx f15313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f15315e;

    public zzdpd(zzdpn zzdpnVar, zzbyn zzbynVar, zzeyx zzeyxVar, String str, String str2) {
        ConcurrentHashMap concurrentHashMapC = zzdpnVar.c();
        this.f15311a = concurrentHashMapC;
        this.f15312b = zzbynVar;
        this.f15313c = zzeyxVar;
        this.f15314d = str;
        this.f15315e = str2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.C6)).booleanValue()) {
            int iE = com.google.android.gms.ads.nonagon.signalgeneration.zzf.e(zzeyxVar);
            int i10 = iE - 1;
            if (i10 == 0) {
                concurrentHashMapC.put("scar", "false");
                return;
            }
            if (i10 == 1) {
                concurrentHashMapC.put("se", "query_g");
            } else if (i10 == 2) {
                concurrentHashMapC.put("se", "r_adinfo");
            } else if (i10 != 3) {
                concurrentHashMapC.put("se", "r_both");
            } else {
                concurrentHashMapC.put("se", "r_adstring");
            }
            concurrentHashMapC.put("scar", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10177b7)).booleanValue()) {
                concurrentHashMapC.put("ad_format", str2);
            }
            if (iE == 2) {
                concurrentHashMapC.put("rid", str);
            }
            d("ragent", zzeyxVar.f17731d.D);
            d("rtype", com.google.android.gms.ads.nonagon.signalgeneration.zzf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzf.b(zzeyxVar.f17731d)));
        }
    }

    private final void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f15311a.put(str, str2);
    }

    public final Map a() {
        return this.f15311a;
    }

    public final void b(zzeyo zzeyoVar) {
        if (zzeyoVar.f17703b.f17699a.size() > 0) {
            switch (((zzeyc) zzeyoVar.f17703b.f17699a.get(0)).f17634b) {
                case 1:
                    this.f15311a.put("ad_format", "banner");
                    break;
                case 2:
                    this.f15311a.put("ad_format", "interstitial");
                    break;
                case 3:
                    this.f15311a.put("ad_format", "native_express");
                    break;
                case 4:
                    this.f15311a.put("ad_format", "native_advanced");
                    break;
                case 5:
                    this.f15311a.put("ad_format", "rewarded");
                    break;
                case 6:
                    this.f15311a.put("ad_format", "app_open_ad");
                    this.f15311a.put("as", true != this.f15312b.i() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
                    break;
                default:
                    this.f15311a.put("ad_format", "unknown");
                    break;
            }
        }
        d("gqi", zzeyoVar.f17703b.f17700b.f17679b);
    }

    public final void c(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f15311a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f15311a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
