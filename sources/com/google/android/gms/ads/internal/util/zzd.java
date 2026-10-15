package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzq;
import com.google.android.gms.internal.ads.zzfut;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzd {
    public static void a(Context context) {
        if (zzbyz.k(context) && !zzbyz.m()) {
            zzfut zzfutVarB = new k(context).b();
            zzbza.f("Updating ad debug logging enablement.");
            zzbzq.a(zzfutVarB, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
