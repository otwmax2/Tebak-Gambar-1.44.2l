package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfm implements zzff {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzff f18427b;

    public zzfm(Context context) {
        zzfo zzfoVar = new zzfo();
        this.f18426a = context.getApplicationContext();
        this.f18427b = zzfoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzff
    public final /* bridge */ /* synthetic */ zzfg zza() {
        return new zzfn(this.f18426a, ((zzfo) this.f18427b).zza());
    }
}
