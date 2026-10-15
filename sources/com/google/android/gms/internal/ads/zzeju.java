package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeju implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzq f16798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f16801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f16802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f16804g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f16805h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16806i;

    public zzeju(com.google.android.gms.ads.internal.client.zzq zzqVar, String str, boolean z10, String str2, float f10, int i10, int i11, String str3, boolean z11) {
        Preconditions.l(zzqVar, "the adSize must not be null");
        this.f16798a = zzqVar;
        this.f16799b = str;
        this.f16800c = z10;
        this.f16801d = str2;
        this.f16802e = f10;
        this.f16803f = i10;
        this.f16804g = i11;
        this.f16805h = str3;
        this.f16806i = z11;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzezi.f(bundle, "smart_w", "full", this.f16798a.f5935s == -1);
        zzezi.f(bundle, "smart_h", "auto", this.f16798a.f5932p == -2);
        zzezi.g(bundle, "ene", true, this.f16798a.f5940x);
        zzezi.f(bundle, "rafmt", "102", this.f16798a.A);
        zzezi.f(bundle, "rafmt", "103", this.f16798a.B);
        zzezi.f(bundle, "rafmt", "105", this.f16798a.C);
        zzezi.g(bundle, "inline_adaptive_slot", true, this.f16806i);
        zzezi.g(bundle, "interscroller_slot", true, this.f16798a.C);
        zzezi.c(bundle, "format", this.f16799b);
        zzezi.f(bundle, "fluid", ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.f16800c);
        zzezi.f(bundle, "sz", this.f16801d, !TextUtils.isEmpty(r0));
        bundle.putFloat("u_sd", this.f16802e);
        bundle.putInt("sw", this.f16803f);
        bundle.putInt("sh", this.f16804g);
        String str = this.f16805h;
        zzezi.f(bundle, "sc", str, true ^ TextUtils.isEmpty(str));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr = this.f16798a.f5937u;
        if (zzqVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.f16798a.f5932p);
            bundle2.putInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, this.f16798a.f5935s);
            bundle2.putBoolean("is_fluid_height", this.f16798a.f5939w);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzq zzqVar : zzqVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzqVar.f5939w);
                bundle3.putInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, zzqVar.f5932p);
                bundle3.putInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, zzqVar.f5935s);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
