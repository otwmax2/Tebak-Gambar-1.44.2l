package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzese implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ScheduledExecutorService f17291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f17292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzbrg f17293c;

    public zzese(zzbrg zzbrgVar, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.f17293c = zzbrgVar;
        this.f17291a = scheduledExecutorService;
        this.f17292b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 49;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.l(zzfuj.n(zzfuj.h(new Bundle()), ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G3)).longValue(), TimeUnit.MILLISECONDS, this.f17291a), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzesd
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return new zzesf((Bundle) obj);
            }
        }, zzbzn.f11614a);
    }
}
