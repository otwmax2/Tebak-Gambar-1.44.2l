package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzery implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzfuu f17282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List f17283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzbac f17284c;

    public zzery(zzbac zzbacVar, zzfuu zzfuuVar, List list, byte[] bArr) {
        this.f17284c = zzbacVar;
        this.f17282a = zzfuuVar;
        this.f17283b = list;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 48;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17282a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzerx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzerz(this.f17281a.f17283b);
            }
        });
    }
}
