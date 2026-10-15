package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdrm implements zzdbh {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Bundle f15483o = new Bundle();

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final synchronized void D(String str) {
        this.f15483o.putInt(str, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final synchronized void O(String str) {
        this.f15483o.putInt(str, 2);
    }

    public final synchronized Bundle a() {
        return new Bundle(this.f15483o);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final synchronized void n(String str, String str2) {
        this.f15483o.putInt(str, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void o(String str) {
    }
}
