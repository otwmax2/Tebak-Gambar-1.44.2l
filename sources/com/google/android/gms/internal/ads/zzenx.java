package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenx implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f17027b;

    public zzenx(zzfuu zzfuuVar, Bundle bundle) {
        this.f17026a = zzfuuVar;
        this.f17027b = bundle;
    }

    final /* synthetic */ zzeny a() throws Exception {
        return new zzeny(this.f17027b);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 30;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17026a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzenw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17025a.a();
            }
        });
    }
}
