package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpp implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13720a;

    public zzcpp(zzgxl zzgxlVar) {
        this.f13720a = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean zzb() {
        boolean z10 = true;
        if (((zzcuf) this.f13720a).a().a() == null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10197d5)).booleanValue()) {
                z10 = false;
            }
        }
        return Boolean.valueOf(z10);
    }
}
