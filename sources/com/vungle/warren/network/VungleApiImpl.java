package com.vungle.warren.network;

import com.google.gson.o;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.network.converters.Converter;
import com.vungle.warren.network.converters.EmptyResponseConverter;
import com.vungle.warren.network.converters.JsonConverter;
import ja.a0;
import ja.b0;
import ja.d0;
import ja.e;
import ja.t;
import ja.v;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class VungleApiImpl implements VungleApi {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Converter<d0, o> f28224c = new JsonConverter();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Converter<d0, Void> f28225d = new EmptyResponseConverter();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    t f28226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e.a f28227b;

    public VungleApiImpl(t tVar, e.a aVar) {
        this.f28226a = tVar;
        this.f28227b = aVar;
    }

    private <T> Call<T> a(String str, String str2, Map<String, String> map, Converter<d0, T> converter) {
        t.a aVarP = t.l(str2).p();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                aVarP.b(entry.getKey(), entry.getValue());
            }
        }
        return new OkHttpCall(this.f28227b.a(c(str, aVarP.c().toString()).c().b()), converter);
    }

    private Call<o> b(String str, String str2, o oVar) {
        return new OkHttpCall(this.f28227b.a(c(str, str2).g(b0.create((v) null, oVar != null ? oVar.toString() : BuildConfig.FLAVOR)).b()), f28224c);
    }

    private a0.a c(String str, String str2) {
        return new a0.a().j(str2).a("User-Agent", str).a("Vungle-Version", "5.9.0").a("Content-Type", "application/json");
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> ads(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> bustAnalytics(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> cacheBust(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> config(String str, o oVar) {
        return b(str, this.f28226a.toString() + "config", oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<Void> pingTPAT(String str, String str2) {
        return a(str, str2, null, f28225d);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> reportAd(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> reportNew(String str, String str2, Map<String, String> map) {
        return a(str, str2, map, f28224c);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> ri(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> sendLog(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }

    @Override // com.vungle.warren.network.VungleApi
    public Call<o> willPlayAd(String str, String str2, o oVar) {
        return b(str, str2, oVar);
    }
}
