package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejm implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16783a;

    public zzejm(String str) {
        this.f16783a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f16783a;
        if (str != null) {
            bundle.putString("arek", str);
        }
    }
}
