package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f9862a = new HashMap();

    public final AtomicReference a(String str) {
        synchronized (this) {
            if (!this.f9862a.containsKey(str)) {
                this.f9862a.put(str, new AtomicReference());
            }
        }
        return (AtomicReference) this.f9862a.get(str);
    }
}
