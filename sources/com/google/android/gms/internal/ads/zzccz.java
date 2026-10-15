package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f11871a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f11872b;

    zzccz() {
    }

    final long a() {
        Iterator it = this.f11871a.iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : ((zzft) it.next()).b().entrySet()) {
                try {
                    if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                        this.f11872b = Math.max(this.f11872b, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                    }
                } catch (RuntimeException unused) {
                }
            }
            it.remove();
        }
        return this.f11872b;
    }

    final void b(zzft zzftVar) {
        this.f11871a.add(zzftVar);
    }
}
