package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzgwu implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19723a;

    zzgwu(Map map) {
        this.f19723a = Collections.unmodifiableMap(map);
    }

    final Map a() {
        return this.f19723a;
    }
}
