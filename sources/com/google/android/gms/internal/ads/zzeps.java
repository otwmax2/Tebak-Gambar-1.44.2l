package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzeps implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f17158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f17162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f17163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f17164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f17165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    public final String f17166i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    public final String f17167j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17168k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f17169l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f17170m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f17171n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f17172o;

    public zzeps(boolean z10, boolean z11, String str, boolean z12, boolean z13, boolean z14, String str2, ArrayList arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z15, String str6, long j10, boolean z16) {
        this.f17158a = z10;
        this.f17159b = z11;
        this.f17160c = str;
        this.f17161d = z12;
        this.f17162e = z13;
        this.f17163f = z14;
        this.f17164g = str2;
        this.f17165h = arrayList;
        this.f17166i = str3;
        this.f17167j = str4;
        this.f17168k = str5;
        this.f17169l = z15;
        this.f17170m = str6;
        this.f17171n = j10;
        this.f17172o = z16;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putBoolean("cog", this.f17158a);
        bundle.putBoolean("coh", this.f17159b);
        bundle.putString("gl", this.f17160c);
        bundle.putBoolean("simulator", this.f17161d);
        bundle.putBoolean("is_latchsky", this.f17162e);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10333p9)).booleanValue()) {
            bundle.putBoolean("is_sidewinder", this.f17163f);
        }
        bundle.putString("hl", this.f17164g);
        if (!this.f17165h.isEmpty()) {
            bundle.putStringArrayList("hl_list", this.f17165h);
        }
        bundle.putString("mv", this.f17166i);
        bundle.putString("submodel", this.f17170m);
        Bundle bundleA = zzezi.a(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE);
        bundle.putBundle(DeviceRequestsHelper.DEVICE_INFO_DEVICE, bundleA);
        bundleA.putString("build", this.f17168k);
        bundleA.putLong("remaining_data_partition_space", this.f17171n);
        Bundle bundleA2 = zzezi.a(bundleA, "browser");
        bundleA.putBundle("browser", bundleA2);
        bundleA2.putBoolean("is_browser_custom_tabs_capable", this.f17169l);
        if (!TextUtils.isEmpty(this.f17167j)) {
            Bundle bundleA3 = zzezi.a(bundleA, "play_store");
            bundleA.putBundle("play_store", bundleA3);
            bundleA3.putString("package_version", this.f17167j);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.B9)).booleanValue()) {
            bundle.putBoolean("is_bstar", this.f17172o);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10443z9)).booleanValue()) {
            zzezi.g(bundle, "gotmt_l", true, ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10410w9)).booleanValue());
            zzezi.g(bundle, "gotmt_i", true, ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10399v9)).booleanValue());
        }
    }
}
