package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f19733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f19734b;

    /* synthetic */ zzgxi(int i10, int i11, zzgxh zzgxhVar) {
        this.f19733a = zzgwv.c(i10);
        this.f19734b = zzgwv.c(i11);
    }

    public final zzgxi a(zzgxl zzgxlVar) {
        this.f19734b.add(zzgxlVar);
        return this;
    }

    public final zzgxi b(zzgxl zzgxlVar) {
        this.f19733a.add(zzgxlVar);
        return this;
    }

    public final zzgxj c() {
        return new zzgxj(this.f19733a, this.f19734b, null);
    }
}
