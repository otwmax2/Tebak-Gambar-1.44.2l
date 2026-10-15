package com.twitter.sdk.android.core.internal.oauth;

import c9.j;
import com.twitter.sdk.android.core.x;
import ja.c0;
import ja.u;
import ja.x;
import java.io.IOException;
import wa.m;

/* JADX INFO: compiled from: OAuthService.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f27475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f27476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f27477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m f27478d = new m.b().c(b().c()).f(new x.b().a(new u() { // from class: com.twitter.sdk.android.core.internal.oauth.g
        @Override // ja.u
        public final c0 intercept(u.a aVar) {
            return this.f27474a.f(aVar);
        }
    }).f(d9.e.c()).d()).a(xa.a.d()).d();

    h(com.twitter.sdk.android.core.x xVar, j jVar) {
        this.f27475a = xVar;
        this.f27476b = jVar;
        this.f27477c = j.b("TwitterAndroidSDK", xVar.j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c0 f(u.a aVar) throws IOException {
        return aVar.e(aVar.f().g().d("User-Agent", e()).b());
    }

    protected j b() {
        return this.f27476b;
    }

    protected m c() {
        return this.f27478d;
    }

    protected com.twitter.sdk.android.core.x d() {
        return this.f27475a;
    }

    protected String e() {
        return this.f27477c;
    }
}
