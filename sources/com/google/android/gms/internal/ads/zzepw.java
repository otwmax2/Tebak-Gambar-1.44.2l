package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepw implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f17182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17183f;

    public zzepw(String str, int i10, int i11, int i12, boolean z10, int i13) {
        this.f17178a = str;
        this.f17179b = i10;
        this.f17180c = i11;
        this.f17181d = i12;
        this.f17182e = z10;
        this.f17183f = i13;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzezi.f(bundle, "carrier", this.f17178a, !TextUtils.isEmpty(r0));
        int i10 = this.f17179b;
        zzezi.e(bundle, "cnt", i10, i10 != -2);
        bundle.putInt("gnt", this.f17180c);
        bundle.putInt("pt", this.f17181d);
        Bundle bundleA = zzezi.a(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE);
        bundle.putBundle(DeviceRequestsHelper.DEVICE_INFO_DEVICE, bundleA);
        Bundle bundleA2 = zzezi.a(bundleA, "network");
        bundleA.putBundle("network", bundleA2);
        bundleA2.putInt("active_network_state", this.f17183f);
        bundleA2.putBoolean("active_network_metered", this.f17182e);
    }
}
