package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcje implements zzdqq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f12880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzbim f12882c;

    /* synthetic */ zzcje(zzchy zzchyVar, zzcjd zzcjdVar) {
        this.f12880a = zzchyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqq
    public final zzdqr a() {
        zzgxg.c(this.f12881b, Context.class);
        zzgxg.c(this.f12882c, zzbim.class);
        return new zzcjg(this.f12880a, this.f12881b, this.f12882c, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdqq
    public final /* synthetic */ zzdqq b(Context context) {
        Objects.requireNonNull(context);
        this.f12881b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdqq
    public final /* synthetic */ zzdqq c(zzbim zzbimVar) {
        Objects.requireNonNull(zzbimVar);
        this.f12882c = zzbimVar;
        return this;
    }
}
