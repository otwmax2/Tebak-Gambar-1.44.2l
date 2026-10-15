package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zza {
    public static final boolean a(Context context, Intent intent, zzz zzzVar, zzx zzxVar, boolean z10) {
        if (z10) {
            return c(context, intent.getData(), zzzVar, zzxVar);
        }
        try {
            com.google.android.gms.ads.internal.util.zze.k("Launching an intent: " + intent.toURI());
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.q(context, intent);
            if (zzzVar != null) {
                zzzVar.e();
            }
            if (zzxVar != null) {
                zzxVar.S(true);
            }
            return true;
        } catch (ActivityNotFoundException e10) {
            zzbza.g(e10.getMessage());
            if (zzxVar != null) {
                zzxVar.S(false);
            }
            return false;
        }
    }

    public static final boolean b(Context context, zzc zzcVar, zzz zzzVar, zzx zzxVar) {
        int i10 = 0;
        if (zzcVar == null) {
            zzbza.g("No intent data for launcher overlay.");
            return false;
        }
        zzbar.c(context);
        Intent intent = zzcVar.f5993v;
        if (intent != null) {
            return a(context, intent, zzzVar, zzxVar, zzcVar.f5995x);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.f5987p)) {
            zzbza.g("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(zzcVar.f5988q)) {
            intent2.setData(Uri.parse(zzcVar.f5987p));
        } else {
            intent2.setDataAndType(Uri.parse(zzcVar.f5987p), zzcVar.f5988q);
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.f5989r)) {
            intent2.setPackage(zzcVar.f5989r);
        }
        if (!TextUtils.isEmpty(zzcVar.f5990s)) {
            String[] strArrSplit = zzcVar.f5990s.split("/", 2);
            if (strArrSplit.length < 2) {
                zzbza.g("Could not parse component name from open GMSG: ".concat(String.valueOf(zzcVar.f5990s)));
                return false;
            }
            intent2.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str = zzcVar.f5991t;
        if (!TextUtils.isEmpty(str)) {
            try {
                i10 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                zzbza.g("Could not parse intent flags.");
            }
            intent2.addFlags(i10);
        }
        if (((Boolean) zzba.c().b(zzbar.f10185c4)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzba.c().b(zzbar.f10174b4)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.r();
                com.google.android.gms.ads.internal.util.zzs.L(context, intent2);
            }
        }
        return a(context, intent2, zzzVar, zzxVar, zzcVar.f5995x);
    }

    private static final boolean c(Context context, Uri uri, zzz zzzVar, zzx zzxVar) {
        int iJ;
        try {
            iJ = com.google.android.gms.ads.internal.zzt.r().J(context, uri);
            if (zzzVar != null) {
                zzzVar.e();
            }
        } catch (ActivityNotFoundException e10) {
            zzbza.g(e10.getMessage());
            iJ = 6;
        }
        if (zzxVar != null) {
            zzxVar.z(iJ);
        }
        return iJ == 5;
    }
}
