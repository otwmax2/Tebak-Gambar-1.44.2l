package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbyt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@TargetApi(24)
public class zzu extends zzt {
    static final boolean m(int i10, int i11, int i12) {
        return Math.abs(i10 - i11) <= i12;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final boolean e(Activity activity, Configuration configuration) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10361s4)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10383u4)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        com.google.android.gms.ads.internal.client.zzay.b();
        int iD = zzbyt.D(activity, configuration.screenHeightDp);
        int iD2 = zzbyt.D(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzt.r();
        DisplayMetrics displayMetricsP = zzs.P(windowManager);
        int i10 = displayMetricsP.heightPixels;
        int i11 = displayMetricsP.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        double d10 = activity.getResources().getDisplayMetrics().density;
        Double.isNaN(d10);
        int iRound = ((int) Math.round(d10 + 0.5d)) * ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10339q4)).intValue();
        return (m(i10, iD + dimensionPixelSize, iRound) && m(i11, iD2, iRound)) ? false : true;
    }
}
