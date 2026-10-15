package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbzf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzby extends zzb {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzf f6130c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6131d;

    public zzby(Context context, String str, String str2) {
        this.f6130c = new zzbzf(com.google.android.gms.ads.internal.zzt.r().B(context, str));
        this.f6131d = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void a() {
        this.f6130c.o(this.f6131d);
    }
}
