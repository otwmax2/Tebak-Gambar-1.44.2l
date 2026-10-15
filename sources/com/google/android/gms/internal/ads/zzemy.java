package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzemy implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f16984a;

    public zzemy(Bundle bundle) {
        this.f16984a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundleA = zzezi.a(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE);
        bundleA.putBundle("android_mem_info", this.f16984a);
        bundle.putBundle(DeviceRequestsHelper.DEVICE_INFO_DEVICE, bundleA);
    }
}
