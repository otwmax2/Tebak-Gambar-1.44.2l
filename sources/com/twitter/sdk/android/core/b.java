package com.twitter.sdk.android.core;

import com.facebook.internal.ServerProtocol;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: AuthTokenAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements com.google.gson.t<a>, com.google.gson.k<a> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Map<String, Class<? extends a>> f27421b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.f f27422a = new com.google.gson.f();

    static {
        HashMap map = new HashMap();
        f27421b = map;
        map.put("oauth1a", t.class);
        map.put("oauth2", com.twitter.sdk.android.core.internal.oauth.e.class);
        map.put("guest", com.twitter.sdk.android.core.internal.oauth.a.class);
    }

    static String d(Class<? extends a> cls) {
        for (Map.Entry<String, Class<? extends a>> entry : f27421b.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return BuildConfig.FLAVOR;
    }

    @Override // com.google.gson.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public a a(com.google.gson.l lVar, Type type, com.google.gson.j jVar) throws com.google.gson.p {
        com.google.gson.o oVarL = lVar.l();
        String strO = oVarL.D(ServerProtocol.DIALOG_PARAM_AUTH_TYPE).o();
        return (a) this.f27422a.g(oVarL.A("auth_token"), f27421b.get(strO));
    }

    @Override // com.google.gson.t
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public com.google.gson.l b(a aVar, Type type, com.google.gson.s sVar) {
        com.google.gson.o oVar = new com.google.gson.o();
        oVar.x(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, d(aVar.getClass()));
        oVar.t("auth_token", this.f27422a.z(aVar));
        return oVar;
    }
}
