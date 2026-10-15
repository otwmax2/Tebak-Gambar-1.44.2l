package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeqy implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f17220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfuu f17221c;

    public zzeqy(zzbtp zzbtpVar, Context context, String str, zzfuu zzfuuVar) {
        this.f17219a = context;
        this.f17220b = str;
        this.f17221c = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 42;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17221c.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeqz(new JSONObject());
            }
        });
    }
}
