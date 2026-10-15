package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzern implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzfuu f17261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f17262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzavt f17263c;

    public zzern(zzavt zzavtVar, zzfuu zzfuuVar, Context context, byte[] bArr) {
        this.f17263c = zzavtVar;
        this.f17261a = zzfuuVar;
        this.f17262b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17261a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzerm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzero(new JSONObject());
            }
        });
    }
}
