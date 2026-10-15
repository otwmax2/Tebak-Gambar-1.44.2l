package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbtx extends zzbty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11346a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f11347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f11348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzblv f11349d;

    public zzbtx(Context context, zzblv zzblvVar) {
        this.f11347b = context.getApplicationContext();
        this.f11349d = zzblvVar;
    }

    public static JSONObject c(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbzg.V3().f11605o);
            jSONObject.put("mf", zzbck.f10569a.e());
            jSONObject.put("cl", "513548808");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.c(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzbty
    public final zzfut a() {
        synchronized (this.f11346a) {
            if (this.f11348c == null) {
                this.f11348c = this.f11347b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (com.google.android.gms.ads.internal.zzt.b().a() - this.f11348c.getLong("js_last_update", 0L) < ((Long) zzbck.f10570b.e()).longValue()) {
            return zzfuj.h(null);
        }
        return zzfuj.l(this.f11349d.c(c(this.f11347b)), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzbtw
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                this.f11345a.b((JSONObject) obj);
                return null;
            }
        }, zzbzn.f11619f);
    }

    final /* synthetic */ Void b(JSONObject jSONObject) {
        zzbar.d(this.f11347b, 1, jSONObject);
        this.f11348c.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzt.b().a()).apply();
        return null;
    }
}
