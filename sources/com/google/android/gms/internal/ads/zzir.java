package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzir {
    public static zzno a(Context context, zzjc zzjcVar, boolean z10) {
        zznk zznkVarQ = zznk.q(context);
        if (zznkVarQ == null) {
            zzee.e("ExoPlayerImpl", "MediaMetricsService unavailable.");
            return new zzno(LogSessionId.LOG_SESSION_ID_NONE);
        }
        if (z10) {
            zzjcVar.v(zznkVarQ);
        }
        return new zzno(zznkVarQ.o());
    }
}
