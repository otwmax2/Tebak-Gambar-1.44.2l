package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import c9.j;
import com.facebook.internal.ServerProtocol;
import com.facebook.login.CustomTabLoginMethodHandler;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.x;
import com.twitter.sdk.android.core.y;
import ja.d0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.TreeMap;
import ya.i;
import ya.o;
import ya.t;

/* JADX INFO: loaded from: classes2.dex */
public class OAuth1aService extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    OAuthApi f27452e;

    interface OAuthApi {
        @o("/oauth/access_token")
        wa.b<d0> getAccessToken(@i("Authorization") String str, @t("oauth_verifier") String str2);

        @o("/oauth/request_token")
        wa.b<d0> getTempToken(@i("Authorization") String str);
    }

    class a extends com.twitter.sdk.android.core.c<d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.c f27453a;

        a(com.twitter.sdk.android.core.c cVar) {
            this.f27453a = cVar;
        }

        @Override // com.twitter.sdk.android.core.c
        public void c(y yVar) {
            this.f27453a.c(yVar);
        }

        @Override // com.twitter.sdk.android.core.c
        public void d(l<d0> lVar) throws Throwable {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(lVar.f27482a.byteStream()));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            } else {
                                sb.append(line);
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    String string = sb.toString();
                    f fVarL = OAuth1aService.l(string);
                    if (fVarL != null) {
                        this.f27453a.d(new l(fVarL, null));
                        return;
                    }
                    this.f27453a.c(new s("Failed to parse auth response: " + string));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e10) {
                this.f27453a.c(new s(e10.getMessage(), e10));
            }
        }
    }

    public OAuth1aService(x xVar, j jVar) {
        super(xVar, jVar);
        this.f27452e = (OAuthApi) c().d(OAuthApi.class);
    }

    public static f l(String str) {
        TreeMap<String, String> treeMapA = d9.f.a(str, false);
        String str2 = treeMapA.get("oauth_token");
        String str3 = treeMapA.get("oauth_token_secret");
        String str4 = treeMapA.get("screen_name");
        long j10 = treeMapA.containsKey("user_id") ? Long.parseLong(treeMapA.get("user_id")) : 0L;
        if (str2 == null || str3 == null) {
            return null;
        }
        return new f(new com.twitter.sdk.android.core.t(str2, str3), str4, j10);
    }

    public String g(r rVar) {
        return Uri.parse("twittersdk://callback").buildUpon().appendQueryParameter(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, d().j()).appendQueryParameter("app", rVar.h()).build().toString();
    }

    String h() {
        return b().c() + "/oauth/access_token";
    }

    public String i(com.twitter.sdk.android.core.t tVar) {
        return b().a(CustomTabLoginMethodHandler.OAUTH_DIALOG, "authorize").appendQueryParameter("oauth_token", tVar.f27502p).build().toString();
    }

    com.twitter.sdk.android.core.c<d0> j(com.twitter.sdk.android.core.c<f> cVar) {
        return new a(cVar);
    }

    String k() {
        return b().c() + "/oauth/request_token";
    }

    public void m(com.twitter.sdk.android.core.c<f> cVar, com.twitter.sdk.android.core.t tVar, String str) {
        this.f27452e.getAccessToken(new c().a(d().e(), tVar, null, "POST", h(), null), str).v3(j(cVar));
    }

    public void n(com.twitter.sdk.android.core.c<f> cVar) {
        r rVarE = d().e();
        this.f27452e.getTempToken(new c().a(rVarE, null, g(rVarE), "POST", k(), null)).v3(j(cVar));
    }
}
