package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzbvy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbvy> CREATOR = new zzbvz();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11401o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11402p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11403q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11404r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11405s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11406t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f11407u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final List f11408v;

    @SafeParcelable.Constructor
    public zzbvy(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param List list, @SafeParcelable.Param boolean z12, @SafeParcelable.Param boolean z13, @SafeParcelable.Param List list2) {
        this.f11401o = str;
        this.f11402p = str2;
        this.f11403q = z10;
        this.f11404r = z11;
        this.f11405s = list;
        this.f11406t = z12;
        this.f11407u = z13;
        this.f11408v = list2 == null ? new ArrayList() : list2;
    }

    public static zzbvy V3(JSONObject jSONObject) throws JSONException {
        return new zzbvy(jSONObject.optString("click_string", BuildConfig.FLAVOR), jSONObject.optString("report_url", BuildConfig.FLAVOR), jSONObject.optBoolean("rendered_ad_enabled", false), jSONObject.optBoolean("non_malicious_reporting_enabled", false), com.google.android.gms.ads.internal.util.zzbu.c(jSONObject.optJSONArray("allowed_headers"), null), jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false), com.google.android.gms.ads.internal.util.zzbu.c(jSONObject.optJSONArray("webview_permissions"), null));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f11401o, false);
        SafeParcelWriter.t(parcel, 3, this.f11402p, false);
        SafeParcelWriter.c(parcel, 4, this.f11403q);
        SafeParcelWriter.c(parcel, 5, this.f11404r);
        SafeParcelWriter.v(parcel, 6, this.f11405s, false);
        SafeParcelWriter.c(parcel, 7, this.f11406t);
        SafeParcelWriter.c(parcel, 8, this.f11407u);
        SafeParcelWriter.v(parcel, 9, this.f11408v, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
