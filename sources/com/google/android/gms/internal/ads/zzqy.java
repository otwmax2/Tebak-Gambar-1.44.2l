package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqy {
    public static void a(zzqs zzqsVar, zzno zznoVar) {
        LogSessionId logSessionIdA = zznoVar.a();
        if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        zzqsVar.f20505b.setString("log-session-id", logSessionIdA.getStringId());
    }
}
