package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f10945a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzblz f10946b = new zzbmb();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzblx f10947c = new zzblx() { // from class: com.google.android.gms.internal.ads.zzbma
        @Override // com.google.android.gms.internal.ads.zzblx
        public final Object a(JSONObject jSONObject) {
            return zzbmc.a(jSONObject);
        }
    };

    static /* synthetic */ InputStream a(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f10945a));
    }
}
