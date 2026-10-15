package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzele implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f16898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f16899b;

    public zzele(double d10, boolean z10) {
        this.f16898a = d10;
        this.f16899b = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundleA = zzezi.a(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE);
        bundle.putBundle(DeviceRequestsHelper.DEVICE_INFO_DEVICE, bundleA);
        Bundle bundleA2 = zzezi.a(bundleA, "battery");
        bundleA.putBundle("battery", bundleA2);
        bundleA2.putBoolean("is_charging", this.f16899b);
        bundleA2.putDouble("battery_level", this.f16898a);
    }
}
