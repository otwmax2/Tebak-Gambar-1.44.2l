package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbad extends zzbaj {
    zzbad(int i10, String str, Boolean bool) {
        super(i10, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(n(), ((Boolean) m()).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object b(Bundle bundle) {
        return bundle.containsKey("com.google.android.gms.ads.flag.".concat(n())) ? Boolean.valueOf(bundle.getBoolean("com.google.android.gms.ads.flag.".concat(n()))) : (Boolean) m();
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ Object c(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(n(), ((Boolean) m()).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final /* bridge */ /* synthetic */ void d(SharedPreferences.Editor editor, Object obj) {
        editor.putBoolean(n(), ((Boolean) obj).booleanValue());
    }
}
