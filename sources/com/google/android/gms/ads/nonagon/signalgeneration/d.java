package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbza;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class d extends QueryInfoGenerationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f6357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f6358b;

    d(a aVar, String str) {
        this.f6358b = aVar;
        this.f6357a = str;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void a(String str) {
        zzbza.g("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        this.f6358b.f6349b.evaluateJavascript(String.format("window.postMessage({'paw_id': '%1$s', 'error': '%2$s'}, '*');", this.f6357a, str), null);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void b(QueryInfo queryInfo) {
        String str;
        String strB = queryInfo.b();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.f6357a);
            jSONObject.put("signal", strB);
            str = String.format("window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            str = String.format("window.postMessage({'paw_id': '%1$s', 'signal': '%2$s'}, '*');", this.f6357a, queryInfo.b());
        }
        this.f6358b.f6349b.evaluateJavascript(str, null);
    }
}
