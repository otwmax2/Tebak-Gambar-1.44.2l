package com.vungle.mediation;

import android.os.Bundle;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.ads.mediation.vungle.a;
import com.vungle.warren.Vungle;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class VungleManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f27608b = "VungleManager";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static VungleManager f27609c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f27610a = new ConcurrentHashMap<>();

    private VungleManager() {
    }

    private void b() {
        for (String str : new HashSet(this.f27610a.keySet())) {
            a aVar = this.f27610a.get(str);
            if (aVar != null && aVar.d() == null) {
                removeActiveBannerAd(str, aVar);
            }
        }
    }

    public static synchronized VungleManager getInstance() {
        if (f27609c == null) {
            f27609c = new VungleManager();
        }
        return f27609c;
    }

    synchronized boolean a(String str, String str2) {
        b();
        a aVar = this.f27610a.get(str);
        if (aVar == null) {
            return true;
        }
        if (aVar.d() == null) {
            this.f27610a.remove(str);
            return true;
        }
        String uniqueRequestId = aVar.d().getUniqueRequestId();
        String str3 = f27608b;
        Log.d(str3, "activeUniqueId: " + uniqueRequestId + " ###  RequestId: " + str2);
        if (uniqueRequestId == null) {
            Log.w(str3, "Ad already loaded for placement ID: " + str + ", and cannot determine if this is a refresh. Set Vungle extras when making an ad request to support refresh on Vungle banner ads.");
            return false;
        }
        if (uniqueRequestId.equals(str2)) {
            return true;
        }
        Log.w(str3, "Ad already loaded for placement ID: " + str);
        return false;
    }

    boolean c(String str) {
        return Vungle.isInitialized() && Vungle.getValidPlacements().contains(str);
    }

    void d(String str, a aVar) {
        removeActiveBannerAd(str, this.f27610a.get(str));
        if (this.f27610a.containsKey(str)) {
            return;
        }
        this.f27610a.put(str, aVar);
        Log.d(f27608b, "registerBannerAd: " + aVar + "; size=" + this.f27610a.size());
    }

    public String findPlacement(Bundle bundle, Bundle bundle2) {
        String string = (bundle == null || !bundle.containsKey("playPlacement")) ? null : bundle.getString("playPlacement");
        if (bundle2 != null && bundle2.containsKey(SDKConstants.PARAM_PLACEMENT_ID)) {
            if (string != null) {
                Log.i(f27608b, "'placementID' had a value in both serverParameters and networkExtras. Used one from serverParameters");
            }
            string = bundle2.getString(SDKConstants.PARAM_PLACEMENT_ID);
        }
        if (string == null) {
            Log.e(f27608b, "placementID not provided from serverParameters.");
        }
        return string;
    }

    public a getVungleBannerAd(String str) {
        return this.f27610a.get(str);
    }

    public void removeActiveBannerAd(String str, a aVar) {
        String str2 = f27608b;
        Log.d(str2, "try to removeActiveBannerAd: " + str);
        if (!this.f27610a.remove(str, aVar) || aVar == null) {
            return;
        }
        Log.d(str2, "removeActiveBannerAd: " + aVar + "; size=" + this.f27610a.size());
        aVar.c();
        aVar.b();
    }
}
