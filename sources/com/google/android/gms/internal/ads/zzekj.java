package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekj implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.client.zzw f16832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbzg f16833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f16834c;

    public zzekj(com.google.android.gms.ads.internal.client.zzw zzwVar, zzbzg zzbzgVar, boolean z10) {
        this.f16832a = zzwVar;
        this.f16833b = zzbzgVar;
        this.f16834c = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.f16833b.f11607q >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N4)).intValue()) {
            bundle.putString("app_open_version", "2");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O4)).booleanValue()) {
            bundle.putBoolean("app_switched", this.f16834c);
        }
        com.google.android.gms.ads.internal.client.zzw zzwVar = this.f16832a;
        if (zzwVar != null) {
            int i10 = zzwVar.f5955o;
            if (i10 == 1) {
                bundle.putString("avo", "p");
            } else if (i10 == 2) {
                bundle.putString("avo", "l");
            }
        }
    }
}
