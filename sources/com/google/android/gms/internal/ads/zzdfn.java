package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdfn implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14538b;

    public zzdfn(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f14537a = zzgxlVar;
        this.f14538b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdbw((Context) this.f14537a.zzb(), new HashSet(), ((zzcrc) this.f14538b).a());
    }
}
