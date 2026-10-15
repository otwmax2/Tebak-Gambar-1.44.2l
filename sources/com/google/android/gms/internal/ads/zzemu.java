package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemu implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f16977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f16978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f16979d;

    public zzemu(String str, boolean z10, boolean z11, boolean z12) {
        this.f16976a = str;
        this.f16977b = z10;
        this.f16978c = z11;
        this.f16979d = z12;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (!this.f16976a.isEmpty()) {
            bundle.putString("inspector_extras", this.f16976a);
        }
        bundle.putInt("test_mode", this.f16977b ? 1 : 0);
        bundle.putInt("linked_device", this.f16978c ? 1 : 0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10398v8)).booleanValue()) {
            if (this.f16977b || this.f16978c) {
                bundle.putInt("risd", !this.f16979d ? 1 : 0);
            }
        }
    }
}
