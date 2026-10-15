package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfem {
    public static void a(zzfut zzfutVar, zzfen zzfenVar, zzfec zzfecVar) {
        g(zzfutVar, zzfenVar, zzfecVar, false);
    }

    public static void b(zzfut zzfutVar, zzfen zzfenVar, zzfec zzfecVar) {
        g(zzfutVar, zzfenVar, zzfecVar, true);
    }

    public static void c(zzfut zzfutVar, zzfen zzfenVar, zzfec zzfecVar) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfuj.q(zzfua.D(zzfutVar), new zzfel(zzfenVar, zzfecVar), zzbzn.f11619f);
        }
    }

    public static void d(zzfut zzfutVar, zzfec zzfecVar) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfuj.q(zzfua.D(zzfutVar), new zzfej(zzfecVar), zzbzn.f11619f);
        }
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10167a8), str);
    }

    public static int f(zzeyx zzeyxVar) {
        int iE = com.google.android.gms.ads.nonagon.signalgeneration.zzf.e(zzeyxVar) - 1;
        return (iE == 0 || iE == 1) ? 7 : 23;
    }

    private static void g(zzfut zzfutVar, zzfen zzfenVar, zzfec zzfecVar, boolean z10) {
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfuj.q(zzfua.D(zzfutVar), new zzfek(zzfenVar, zzfecVar, z10), zzbzn.f11619f);
        }
    }
}
