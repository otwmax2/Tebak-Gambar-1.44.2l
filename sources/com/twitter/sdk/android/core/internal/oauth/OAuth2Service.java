package com.twitter.sdk.android.core.internal.oauth;

import c9.j;
import com.facebook.internal.security.CertificateUtil;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.x;
import com.twitter.sdk.android.core.y;
import ya.i;
import ya.k;
import ya.o;

/* JADX INFO: loaded from: classes2.dex */
public class OAuth2Service extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    OAuth2Api f27455e;

    interface OAuth2Api {
        @k({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o("/oauth2/token")
        @ya.e
        wa.b<e> getAppAuthToken(@i("Authorization") String str, @ya.c("grant_type") String str2);

        @o("/1.1/guest/activate.json")
        wa.b<b> getGuestToken(@i("Authorization") String str);
    }

    class a extends com.twitter.sdk.android.core.c<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.c f27456a;

        /* JADX INFO: renamed from: com.twitter.sdk.android.core.internal.oauth.OAuth2Service$a$a, reason: collision with other inner class name */
        class C0138a extends com.twitter.sdk.android.core.c<b> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ e f27458a;

            C0138a(e eVar) {
                this.f27458a = eVar;
            }

            @Override // com.twitter.sdk.android.core.c
            public void c(y yVar) {
                com.twitter.sdk.android.core.o.g().b("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", yVar);
                a.this.f27456a.c(yVar);
            }

            @Override // com.twitter.sdk.android.core.c
            public void d(l<b> lVar) {
                a.this.f27456a.d(new l(new com.twitter.sdk.android.core.internal.oauth.a(this.f27458a.t(), this.f27458a.h(), lVar.f27482a.f27461a), null));
            }
        }

        a(com.twitter.sdk.android.core.c cVar) {
            this.f27456a = cVar;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            com.twitter.sdk.android.core.o.g().b("Twitter", "Failed to get app auth token", yVar);
            com.twitter.sdk.android.core.c cVar = this.f27456a;
            if (cVar != null) {
                cVar.c(yVar);
            }
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<e> lVar) {
            e eVar = lVar.f27482a;
            OAuth2Service.this.k(new C0138a(eVar), eVar);
        }
    }

    public OAuth2Service(x xVar, j jVar) {
        super(xVar, jVar);
        this.f27455e = (OAuth2Api) c().d(OAuth2Api.class);
    }

    private String g() {
        r rVarE = d().e();
        return "Basic " + okio.f.l(d9.f.c(rVarE.h()) + CertificateUtil.DELIMITER + d9.f.c(rVarE.t())).c();
    }

    private String h(e eVar) {
        return "Bearer " + eVar.h();
    }

    void i(com.twitter.sdk.android.core.c<e> cVar) {
        this.f27455e.getAppAuthToken(g(), "client_credentials").v3(cVar);
    }

    public void j(com.twitter.sdk.android.core.c<com.twitter.sdk.android.core.internal.oauth.a> cVar) {
        i(new a(cVar));
    }

    void k(com.twitter.sdk.android.core.c<b> cVar, e eVar) {
        this.f27455e.getGuestToken(h(eVar)).v3(cVar);
    }
}
