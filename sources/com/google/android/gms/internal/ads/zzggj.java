package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f19183a = new HashMap();

    public final zzggl a() {
        if (this.f19183a == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        zzggl zzgglVar = new zzggl(Collections.unmodifiableMap(this.f19183a), null);
        this.f19183a = null;
        return zzgglVar;
    }
}
