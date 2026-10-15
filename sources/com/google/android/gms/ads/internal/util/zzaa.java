package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.internal.ads.zzawe;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzcfk;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzaa {
    private zzaa() {
    }

    /* synthetic */ zzaa(zzz zzzVar) {
    }

    public static zzaa l(int i10) {
        return i10 >= 30 ? new zzy() : i10 >= 28 ? new zzx() : i10 >= 26 ? new zzv() : i10 >= 24 ? new zzu() : i10 >= 21 ? new zzt() : new zzaa();
    }

    public int a() {
        return 1;
    }

    public CookieManager b(Context context) {
        com.google.android.gms.ads.internal.zzt.r();
        if (zzs.b()) {
            return null;
        }
        try {
            CookieSyncManager.createInstance(context);
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzbza.e("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.zzt.q().u(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    public WebResourceResponse c(String str, String str2, int i10, String str3, Map map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, inputStream);
    }

    public zzcep d(zzcei zzceiVar, zzawe zzaweVar, boolean z10) {
        return new zzcfk(zzceiVar, zzaweVar, z10);
    }

    public boolean e(Activity activity, Configuration configuration) {
        return false;
    }

    public void f(Context context, String str, String str2) {
    }

    public boolean g(Context context, String str) {
        return false;
    }

    public int h(Context context, TelephonyManager telephonyManager) {
        return 1001;
    }

    public int i(AudioManager audioManager) {
        return 0;
    }

    public void j(Activity activity) {
    }

    public int k(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }
}
