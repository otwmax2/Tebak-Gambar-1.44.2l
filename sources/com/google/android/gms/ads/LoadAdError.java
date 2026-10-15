package com.google.android.gms.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class LoadAdError extends AdError {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ResponseInfo f5603e;

    public LoadAdError(int i10, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i10, str, str2, adError);
        this.f5603e = responseInfo;
    }

    @Override // com.google.android.gms.ads.AdError
    public final JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        ResponseInfo responseInfoF = f();
        if (responseInfoF == null) {
            jSONObjectE.put("Response Info", "null");
        } else {
            jSONObjectE.put("Response Info", responseInfoF.g());
        }
        return jSONObjectE;
    }

    public ResponseInfo f() {
        return this.f5603e;
    }

    @Override // com.google.android.gms.ads.AdError
    public String toString() {
        try {
            return e().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
