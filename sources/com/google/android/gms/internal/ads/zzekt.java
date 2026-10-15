package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekt implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final String f16853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final int f16854b;

    public zzekt(String str, int i10) {
        this.f16853a = str;
        this.f16854b = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (TextUtils.isEmpty(this.f16853a) || this.f16854b == -1) {
            return;
        }
        Bundle bundleA = zzezi.a(bundle, "pii");
        bundle.putBundle("pii", bundleA);
        bundleA.putString("pvid", this.f16853a);
        bundleA.putInt("pvid_s", this.f16854b);
    }
}
