package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdiw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f14866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdjj f14867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdjo f14868c;

    public zzdiw(zzfuu zzfuuVar, zzdjj zzdjjVar, zzdjo zzdjoVar) {
        this.f14866a = zzfuuVar;
        this.f14867b = zzdjjVar;
        this.f14868c = zzdjoVar;
    }

    public final zzfut a(final zzeyo zzeyoVar, final zzeyc zzeycVar, final JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        zzfut zzfutVarH;
        final zzfut zzfutVarE = this.f14866a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzdiu
            @Override // java.util.concurrent.Callable
            public final Object call() throws zzeek {
                zzeyo zzeyoVar2 = zzeyoVar;
                zzeyc zzeycVar2 = zzeycVar;
                JSONObject jSONObject2 = jSONObject;
                zzdgi zzdgiVar = new zzdgi();
                zzdgiVar.x(jSONObject2.optInt(ReportDBAdapter.ReportColumns.COLUMN_TEMPATE_ID, -1));
                zzdgiVar.j(jSONObject2.optString("custom_template_id"));
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                zzdgiVar.u(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("omid_partner_name") : null);
                zzeyx zzeyxVar = zzeyoVar2.f17702a.f17696a;
                if (!zzeyxVar.f17734g.contains(Integer.toString(zzdgiVar.M()))) {
                    throw new zzeek(1, "Invalid template ID: " + zzdgiVar.M());
                }
                if (zzdgiVar.M() == 3) {
                    if (zzdgiVar.j0() == null) {
                        throw new zzeek(1, "No custom template id for custom template ad response.");
                    }
                    if (!zzeyxVar.f17735h.contains(zzdgiVar.j0())) {
                        throw new zzeek(1, "Unexpected custom template id in the response.");
                    }
                }
                zzdgiVar.v(jSONObject2.optDouble("rating", -1.0d));
                String strOptString = jSONObject2.optString("headline", null);
                if (zzeycVar2.N) {
                    com.google.android.gms.ads.internal.zzt.r();
                    strOptString = com.google.android.gms.ads.internal.util.zzs.T() + " : " + strOptString;
                }
                zzdgiVar.w("headline", strOptString);
                zzdgiVar.w(SDKConstants.PARAM_A2U_BODY, jSONObject2.optString(SDKConstants.PARAM_A2U_BODY, null));
                zzdgiVar.w("call_to_action", jSONObject2.optString("call_to_action", null));
                zzdgiVar.w("store", jSONObject2.optString("store", null));
                zzdgiVar.w("price", jSONObject2.optString("price", null));
                zzdgiVar.w(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, jSONObject2.optString(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, null));
                return zzdgiVar;
            }
        });
        final zzfut zzfutVarF = this.f14867b.f(jSONObject, "images");
        final zzfut zzfutVarG = this.f14867b.g(jSONObject, "images", zzeycVar, zzeyoVar.f17703b.f17700b);
        final zzfut zzfutVarE2 = this.f14867b.e(jSONObject, "secondary_image");
        final zzfut zzfutVarE3 = this.f14867b.e(jSONObject, "app_icon");
        final zzfut zzfutVarD = this.f14867b.d(jSONObject, "attribution");
        final zzfut zzfutVarH2 = this.f14867b.h(jSONObject, zzeycVar, zzeyoVar.f17703b.f17700b);
        final zzfut zzfutVarA = this.f14868c.a(jSONObject, "custom_assets");
        final zzdjj zzdjjVar = this.f14867b;
        if (jSONObject.optBoolean("enable_omid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String strOptString = jSONObjectOptJSONObject.optString("omid_html");
            zzfutVarH = TextUtils.isEmpty(strOptString) ? zzfuj.h(null) : zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdiy
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return zzdjjVar.c(strOptString, obj);
                }
            }, zzbzn.f11618e);
        } else {
            zzfutVarH = zzfuj.h(null);
        }
        final zzfut zzfutVar = zzfutVarH;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzfutVarE);
        arrayList.add(zzfutVarF);
        arrayList.add(zzfutVarG);
        arrayList.add(zzfutVarE2);
        arrayList.add(zzfutVarE3);
        arrayList.add(zzfutVarD);
        arrayList.add(zzfutVarH2);
        arrayList.add(zzfutVarA);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I4)).booleanValue()) {
            arrayList.add(zzfutVar);
        }
        return zzfuj.a(arrayList).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdiv
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfut zzfutVar2 = zzfutVarE;
                zzfut zzfutVar3 = zzfutVarF;
                zzfut zzfutVar4 = zzfutVarE3;
                zzfut zzfutVar5 = zzfutVarE2;
                zzfut zzfutVar6 = zzfutVarD;
                JSONObject jSONObject2 = jSONObject;
                zzfut zzfutVar7 = zzfutVarH2;
                zzfut zzfutVar8 = zzfutVarG;
                zzfut zzfutVar9 = zzfutVar;
                zzfut zzfutVar10 = zzfutVarA;
                zzdgi zzdgiVar = (zzdgi) zzfutVar2.get();
                zzdgiVar.o((List) zzfutVar3.get());
                zzdgiVar.l((zzbdx) zzfutVar4.get());
                zzdgiVar.p((zzbdx) zzfutVar5.get());
                zzdgiVar.i((zzbdp) zzfutVar6.get());
                zzdgiVar.r(zzdjj.j(jSONObject2));
                zzdgiVar.k(zzdjj.i(jSONObject2));
                zzcei zzceiVar = (zzcei) zzfutVar7.get();
                if (zzceiVar != null) {
                    zzdgiVar.B(zzceiVar);
                    zzdgiVar.z(zzceiVar.L());
                    zzdgiVar.y(zzceiVar.r());
                }
                zzcei zzceiVar2 = (zzcei) zzfutVar8.get();
                if (zzceiVar2 != null) {
                    zzdgiVar.n(zzceiVar2);
                    zzdgiVar.C(zzceiVar2.L());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I4)).booleanValue()) {
                    zzdgiVar.t(zzfutVar9);
                } else {
                    zzcei zzceiVar3 = (zzcei) zzfutVar9.get();
                    if (zzceiVar3 != null) {
                        zzdgiVar.s(zzceiVar3);
                    }
                }
                for (zzdjn zzdjnVar : (List) zzfutVar10.get()) {
                    if (zzdjnVar.f14927a != 1) {
                        zzdgiVar.m(zzdjnVar.f14928b, zzdjnVar.f14930d);
                    } else {
                        zzdgiVar.w(zzdjnVar.f14928b, zzdjnVar.f14929c);
                    }
                }
                return zzdgiVar;
            }
        }, this.f14866a);
    }
}
