package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzbkj {
    public static void a(zzbkk zzbkkVar, String str, Map map) {
        try {
            zzbkkVar.w(str, com.google.android.gms.ads.internal.client.zzay.b().o(map));
        } catch (JSONException unused) {
            zzbza.g("Could not convert parameters to JSON.");
        }
    }

    public static void b(zzbkk zzbkkVar, String str, JSONObject jSONObject) {
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        zzbza.b("Dispatching AFMA event: ".concat(sb.toString()));
        zzbkkVar.o(sb.toString());
    }

    public static void c(zzbkk zzbkkVar, String str, String str2) {
        zzbkkVar.o(str + "(" + str2 + ");");
    }

    public static void d(zzbkk zzbkkVar, String str, JSONObject jSONObject) {
        zzbkkVar.n(str, jSONObject.toString());
    }
}
