package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcqo implements zzcqp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f13779a;

    zzcqo(Map map) {
        this.f13779a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcqp
    public final zzeat P(int i10, String str) {
        return (zzeat) this.f13779a.get(str);
    }
}
