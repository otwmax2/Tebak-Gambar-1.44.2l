package com.vungle.warren.network;

import com.vungle.mediation.BuildConfig;
import ja.e;
import ja.t;

/* JADX INFO: loaded from: classes2.dex */
public class APIFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e.a f28206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private t f28207b;

    public APIFactory(e.a aVar, String str) {
        t tVarL = t.l(str);
        this.f28207b = tVarL;
        this.f28206a = aVar;
        if (BuildConfig.FLAVOR.equals(tVarL.s().get(r3.size() - 1))) {
            return;
        }
        throw new IllegalArgumentException("baseUrl must end in /: " + str);
    }

    public VungleApi createAPI() {
        return new VungleApiImpl(this.f28207b, this.f28206a);
    }
}
