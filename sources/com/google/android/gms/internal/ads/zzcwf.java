package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcwf implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14123a;

    public zzcwf(zzgxl zzgxlVar) {
        this.f14123a = zzgxlVar;
    }

    public static zzcwe b(Set set) {
        return new zzcwe(set);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzcwe zzb() {
        return new zzcwe(((zzgxj) this.f14123a).zzb());
    }
}
