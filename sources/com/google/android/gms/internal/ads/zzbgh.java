package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbgh implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbgi f10699a;

    public zzbgh(zzbgi zzbgiVar) {
        this.f10699a = zzbgiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (this.f10699a == null) {
            return;
        }
        String str = (String) map.get("name");
        if (str == null) {
            zzbza.f("Ad metadata with no name parameter.");
            str = BuildConfig.FLAVOR;
        }
        Bundle bundleA = null;
        if (map.containsKey("info")) {
            try {
                bundleA = com.google.android.gms.ads.internal.util.zzbu.a(new JSONObject((String) map.get("info")));
            } catch (JSONException e10) {
                zzbza.e("Failed to convert ad metadata to JSON.", e10);
            }
        }
        if (bundleA == null) {
            zzbza.d("Failed to convert ad metadata to Bundle.");
        } else {
            this.f10699a.w(str, bundleA);
        }
    }
}
