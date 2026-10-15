package com.google.android.gms.internal.ads;

import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbmj implements zzblv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzblx f10960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbly f10961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzblr f10962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10963d;

    zzbmj(zzblr zzblrVar, String str, zzbly zzblyVar, zzblx zzblxVar) {
        this.f10962c = zzblrVar;
        this.f10963d = str;
        this.f10961b = zzblyVar;
        this.f10960a = zzblxVar;
    }

    static /* bridge */ /* synthetic */ void d(zzbmj zzbmjVar, zzbll zzbllVar, zzbls zzblsVar, Object obj, zzbzs zzbzsVar) {
        try {
            com.google.android.gms.ads.internal.zzt.r();
            String string = UUID.randomUUID().toString();
            zzbho.f10727o.c(string, new zzbmi(zzbmjVar, zzbllVar, zzbzsVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", string);
            jSONObject.put("args", zzbmjVar.f10961b.c(obj));
            zzblsVar.Z0(zzbmjVar.f10963d, jSONObject);
        } catch (Exception e10) {
            try {
                zzbzsVar.d(e10);
                zzbza.e("Unable to invokeJavascript", e10);
            } finally {
                zzbllVar.g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftq
    public final zzfut a(Object obj) throws Exception {
        return c(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzfut c(Object obj) {
        zzbzs zzbzsVar = new zzbzs();
        zzbll zzbllVarB = this.f10962c.b(null);
        zzbllVarB.e(new zzbmg(this, zzbllVarB, obj, zzbzsVar), new zzbmh(this, zzbzsVar, zzbllVarB));
        return zzbzsVar;
    }
}
