package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzlj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f24864a;

    @VisibleForTesting
    public zzlj(Context context) {
        Preconditions.k(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.k(applicationContext);
        this.f24864a = applicationContext;
    }
}
