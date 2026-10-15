package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdtw implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15664b;

    public zzdtw(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15663a = zzgxlVar;
        this.f15664b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return Wrappers.a((Context) this.f15663a.zzb()).f(((zzdtr) this.f15664b).zzb().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
