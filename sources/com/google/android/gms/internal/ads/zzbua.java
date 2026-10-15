package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbua extends zzbuc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f11352o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f11353p;

    public zzbua(String str, int i10) {
        this.f11352o = str;
        this.f11353p = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzbud
    public final String a() {
        return this.f11352o;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbua)) {
            zzbua zzbuaVar = (zzbua) obj;
            if (Objects.b(this.f11352o, zzbuaVar.f11352o) && Objects.b(Integer.valueOf(this.f11353p), Integer.valueOf(zzbuaVar.f11353p))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbud
    public final int zzb() {
        return this.f11353p;
    }
}
