package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgm extends zzdgn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JSONObject f14657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f14658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f14660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f14662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final JSONObject f14663h;

    public zzdgm(zzeyc zzeycVar, JSONObject jSONObject) {
        super(zzeycVar);
        this.f14657b = com.google.android.gms.ads.internal.util.zzbu.g(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f14658c = com.google.android.gms.ads.internal.util.zzbu.k(false, jSONObject, "allow_pub_owned_ad_view");
        this.f14659d = com.google.android.gms.ads.internal.util.zzbu.k(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f14660e = com.google.android.gms.ads.internal.util.zzbu.k(false, jSONObject, "enable_omid");
        this.f14662g = com.google.android.gms.ads.internal.util.zzbu.b(BuildConfig.FLAVOR, jSONObject, "watermark_overlay_png_base64");
        this.f14661f = jSONObject.optJSONObject("overlay") != null;
        this.f14663h = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G4)).booleanValue() ? jSONObject.optJSONObject("omid_settings") : null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final zzeza a() {
        JSONObject jSONObject = this.f14663h;
        return jSONObject != null ? new zzeza(jSONObject) : this.f14664a.W;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final String b() {
        return this.f14662g;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final JSONObject c() {
        JSONObject jSONObject = this.f14657b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f14664a.A);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final boolean d() {
        return this.f14660e;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final boolean e() {
        return this.f14658c;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final boolean f() {
        return this.f14659d;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final boolean g() {
        return this.f14661f;
    }
}
