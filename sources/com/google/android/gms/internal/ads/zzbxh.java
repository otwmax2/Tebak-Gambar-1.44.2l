package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbxh {
    @VisibleForTesting
    static Uri a(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i10 = iIndexOf + 1;
        return Uri.parse(str.substring(0, i10) + str2 + "=" + str3 + "&" + str.substring(i10));
    }

    public static String b(Uri uri, Context context) {
        if (!com.google.android.gms.ads.internal.zzt.p().z(context)) {
            return uri.toString();
        }
        String strF = com.google.android.gms.ads.internal.zzt.p().f(context);
        if (strF == null) {
            return uri.toString();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10181c0);
        String string = uri.toString();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10170b0)).booleanValue() && string.contains(str)) {
            com.google.android.gms.ads.internal.zzt.p().r(context, strF);
            return d(string, context).replace(str, strF);
        }
        if (!TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            return string;
        }
        String string2 = a(d(string, context), "fbs_aeid", strF).toString();
        com.google.android.gms.ads.internal.zzt.p().r(context, strF);
        return string2;
    }

    public static String c(String str, Context context, boolean z10) {
        String strF;
        if ((((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10258j0)).booleanValue() && !z10) || !com.google.android.gms.ads.internal.zzt.p().z(context) || TextUtils.isEmpty(str) || (strF = com.google.android.gms.ads.internal.zzt.p().f(context)) == null) {
            return str;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10181c0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10170b0)).booleanValue() && str.contains(str2)) {
            if (com.google.android.gms.ads.internal.zzt.r().F(str)) {
                com.google.android.gms.ads.internal.zzt.p().r(context, strF);
                return d(str, context).replace(str2, strF);
            }
            if (!com.google.android.gms.ads.internal.zzt.r().G(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.zzt.p().s(context, strF);
            return d(str, context).replace(str2, strF);
        }
        if (str.contains("fbs_aeid")) {
            return str;
        }
        if (com.google.android.gms.ads.internal.zzt.r().F(str)) {
            com.google.android.gms.ads.internal.zzt.p().r(context, strF);
            return a(d(str, context), "fbs_aeid", strF).toString();
        }
        if (!com.google.android.gms.ads.internal.zzt.r().G(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.zzt.p().s(context, strF);
        return a(d(str, context), "fbs_aeid", strF).toString();
    }

    private static String d(String str, Context context) {
        String strJ = com.google.android.gms.ads.internal.zzt.p().j(context);
        String strH = com.google.android.gms.ads.internal.zzt.p().h(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(strJ)) {
            str = a(str, "gmp_app_id", strJ).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(strH)) ? str : a(str, "fbs_aiid", strH).toString();
    }
}
