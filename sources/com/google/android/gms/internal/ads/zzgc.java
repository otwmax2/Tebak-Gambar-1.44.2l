package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f18997a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f18998b;

    public final synchronized Map a() {
        if (this.f18998b == null) {
            this.f18998b = Collections.unmodifiableMap(new HashMap(this.f18997a));
        }
        return this.f18998b;
    }
}
