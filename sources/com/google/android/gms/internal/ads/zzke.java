package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzke implements zzjv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzsn f20022a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f20025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f20026e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f20024c = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f20023b = new Object();

    public zzke(zzsu zzsuVar, boolean z10) {
        this.f20022a = new zzsn(zzsuVar, z10);
    }

    public final void a(int i10) {
        this.f20025d = i10;
        this.f20026e = false;
        this.f20024c.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final zzcn zza() {
        return this.f20022a.G();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    public final Object zzb() {
        return this.f20023b;
    }
}
