package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zadc {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Status f7264c = new Status(8, "The connection to Google Play services was lost");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final Set<BasePendingResult<?>> f7265a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f7266b = new j0(this);

    final void a(BasePendingResult<? extends Result> basePendingResult) {
        this.f7265a.add(basePendingResult);
        basePendingResult.r(this.f7266b);
    }

    public final void b() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f7265a.toArray(new BasePendingResult[0])) {
            basePendingResult.r(null);
            if (basePendingResult.q()) {
                this.f7265a.remove(basePendingResult);
            }
        }
    }
}
