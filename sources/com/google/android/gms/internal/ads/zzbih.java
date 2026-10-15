package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbih implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdsf f10770a;

    public zzbih(zzdsf zzdsfVar) {
        Preconditions.l(zzdsfVar, "The Inspector Manager must not be null");
        this.f10770a = zzdsfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        long j10 = Long.MAX_VALUE;
        if (map.containsKey("expires")) {
            try {
                j10 = Long.parseLong((String) map.get("expires"));
            } catch (NumberFormatException unused) {
            }
        }
        this.f10770a.i((String) map.get("extras"), j10);
    }
}
