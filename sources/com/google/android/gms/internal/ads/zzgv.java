package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f19670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgt f19671b;

    public zzgv(Context context, Handler handler, zzgu zzguVar) {
        this.f19670a = context.getApplicationContext();
        this.f19671b = new zzgt(this, handler, zzguVar);
    }
}
