package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeiz implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16755a;

    zzeiz(Context context) {
        this.f16755a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10414x2)).booleanValue()) {
            return zzfuj.h(new zzeja(androidx.core.content.a.a(this.f16755a, "com.google.android.gms.permission.AD_ID") == 0));
        }
        return zzfuj.h(null);
    }
}
