package com.google.android.gms.internal.ads;

import com.facebook.GraphResponse;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedo implements zzedi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdes f16336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f16337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdiw f16338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzezt f16339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdll f16340e;

    public zzedo(zzdes zzdesVar, zzfuu zzfuuVar, zzdiw zzdiwVar, zzezt zzeztVar, zzdll zzdllVar) {
        this.f16336a = zzdesVar;
        this.f16337b = zzfuuVar;
        this.f16338c = zzdiwVar;
        this.f16339d = zzeztVar;
        this.f16340e = zzdllVar;
    }

    private final zzfut g(final zzeyo zzeyoVar, final zzeyc zzeycVar, final JSONObject jSONObject) {
        final zzfut zzfutVarA = this.f16339d.a();
        final zzfut zzfutVarA2 = this.f16338c.a(zzeyoVar, zzeycVar, jSONObject);
        return zzfuj.c(zzfutVarA, zzfutVarA2).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzedj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16322a.c(zzfutVarA2, zzfutVarA, zzeyoVar, zzeycVar, jSONObject);
            }
        }, this.f16337b);
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return (zzeyhVar == null || zzeyhVar.f17692c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        return zzfuj.m(zzfuj.m(this.f16339d.a(), new zzftq() { // from class: com.google.android.gms.internal.ads.zzedl
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16330a.e(zzeycVar, (zzdlf) obj);
            }
        }, this.f16337b), new zzftq() { // from class: com.google.android.gms.internal.ads.zzedm
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16332a.f(zzeyoVar, zzeycVar, (JSONArray) obj);
            }
        }, this.f16337b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzdgd c(zzfut zzfutVar, zzfut zzfutVar2, zzeyo zzeyoVar, zzeyc zzeycVar, JSONObject jSONObject) throws Exception {
        zzdgi zzdgiVar = (zzdgi) zzfutVar.get();
        zzdlf zzdlfVar = (zzdlf) zzfutVar2.get();
        zzdgj zzdgjVarC = this.f16336a.c(new zzcrb(zzeyoVar, zzeycVar, null), new zzdgu(zzdgiVar), new zzdfh(jSONObject, zzdlfVar));
        zzdgjVarC.j().b();
        zzdgjVarC.k().a(zzdlfVar);
        zzdgjVarC.i().a(zzdgiVar.b0());
        zzdgjVarC.l().a(this.f16340e);
        return zzdgjVarC.h();
    }

    final /* synthetic */ zzfut d(zzdlf zzdlfVar, JSONObject jSONObject) throws Exception {
        this.f16339d.b(zzfuj.h(zzdlfVar));
        if (jSONObject.optBoolean(GraphResponse.SUCCESS_KEY)) {
            return zzfuj.h(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzblu("process json failed");
    }

    final /* synthetic */ zzfut e(zzeyc zzeycVar, final zzdlf zzdlfVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.P7)).booleanValue() && PlatformVersion.m()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzeycVar.f17667t.f17692c);
        jSONObject2.put("sdk_params", jSONObject);
        return zzfuj.m(zzdlfVar.d("google.afma.nativeAds.preProcessJson", jSONObject2), new zzftq() { // from class: com.google.android.gms.internal.ads.zzedk
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16328a.d(zzdlfVar, (JSONObject) obj);
            }
        }, this.f16337b);
    }

    final /* synthetic */ zzfut f(zzeyo zzeyoVar, zzeyc zzeycVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzfuj.g(new zzdtf(3));
        }
        if (zzeyoVar.f17702a.f17696a.f17738k <= 1) {
            return zzfuj.l(g(zzeyoVar, zzeycVar, jSONArray.getJSONObject(0)), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzedn
                @Override // com.google.android.gms.internal.ads.zzfnj
                public final Object a(Object obj) {
                    return Collections.singletonList(zzfuj.h((zzdgd) obj));
                }
            }, this.f16337b);
        }
        int length = jSONArray.length();
        this.f16339d.c(Math.min(length, zzeyoVar.f17702a.f17696a.f17738k));
        ArrayList arrayList = new ArrayList(zzeyoVar.f17702a.f17696a.f17738k);
        for (int i10 = 0; i10 < zzeyoVar.f17702a.f17696a.f17738k; i10++) {
            if (i10 < length) {
                arrayList.add(g(zzeyoVar, zzeycVar, jSONArray.getJSONObject(i10)));
            } else {
                arrayList.add(zzfuj.g(new zzdtf(3)));
            }
        }
        return zzfuj.h(arrayList);
    }
}
