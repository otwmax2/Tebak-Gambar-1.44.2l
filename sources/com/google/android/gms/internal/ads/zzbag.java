package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbag extends zzbaj {
    zzbag(int i10, String str, Float f10) {
        super(1, str, f10, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(n(), ((Float) m()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(n())) ? Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(n()))) : (Float) m();
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object c(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(n(), ((Float) m()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ void d(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(n(), ((Float) obj).floatValue());
    }
}
